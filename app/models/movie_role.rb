class MovieRole < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
  roles = Array.new('actor', 'director')

  validates :role_played, presence: true, inclusion: {
    in: roles,
    message: '%<value> is not a correct role, Please enter again!'
  }

  validates :acting_as, presence: true, if: -> { role_played == 'actor' }
end
