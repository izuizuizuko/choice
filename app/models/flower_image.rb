class FlowerImage < ApplicationRecord
  belongs_to :flower
  mount_uploader :image, ImageUploader
end

