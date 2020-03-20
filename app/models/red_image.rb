class RedImage < ApplicationRecord
  belongs_to :red
  mount_uploader :image, ImageUploader
end
