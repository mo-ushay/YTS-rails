class Genre < ApplicationRecord
  has_and_belongs_to_many :movie
  validates :category, presence: true
end
