class RestImage < ApplicationRecord
  belongs_to :rest
  mount_uploader :image, ImageUploader
end
