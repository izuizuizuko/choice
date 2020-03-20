class KidImage < ApplicationRecord
  belongs_to :kid
  mount_uploader :image, ImageUploader
end
