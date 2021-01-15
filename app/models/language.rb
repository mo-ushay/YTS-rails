class Language < ApplicationRecord
  has_and_belongs_to_many :movie
  validates :name, presence: true
end
