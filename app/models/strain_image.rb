class StrainImage < ApplicationRecord
  belongs_to :strain
  mount_uploader :image, ImageUploader
end
