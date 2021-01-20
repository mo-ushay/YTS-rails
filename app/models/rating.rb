class Rating < ApplicationRecord
  belongs_to :user, class_name: 'user', foreign_key: 'user_id'
  belongs_to :movie, class_name: 'movie', foreign_key: 'movie_id'

  validates :value, presence: true
  it { should validate_uniqueness_of(:movie_id).scoped_to(:user_id).with_message('Error, cant add more than 1 rating for a movie!') }
end
