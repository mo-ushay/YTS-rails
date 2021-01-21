class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :value, presence: true
  validates_uniqueness_of :movie_id, scope: :user_id, message: 'Error, cant add more than 1 rating for a movie!'
end
