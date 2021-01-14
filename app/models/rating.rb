class Rating < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :movie, class_name: "movie", foreign_key: "movie_id"

  validates :value, presence: true
end
