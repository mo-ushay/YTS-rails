class User < ApplicationRecord
  has_many :movies
  has_one :image, as: :imageable
end
