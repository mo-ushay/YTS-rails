class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true, inverse_of: :imageable, optional: true
  mount_uploader :path, ImageUploader
end
