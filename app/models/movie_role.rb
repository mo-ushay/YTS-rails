class MovieRole < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  validates :acting_as, presence: true
  validates :role_played, presence: true
end
