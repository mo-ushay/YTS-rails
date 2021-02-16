class Feedback < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :content, presence: true
  scope :comments, -> { where(type: 'Comment') }
  scope :reviews, -> { where(type: 'Review') }
  scope :movie_feedback, ->(movie_id) { joins(:movie).where(movies: { id: movie_id }) }
  scope :type_of_feedback, ->(type) { where(type: type) unless type.nil? || type.empty? }

end
