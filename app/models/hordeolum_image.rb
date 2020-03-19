class HordeolumImage < ApplicationRecord
  belongs_to :hordeolum
  mount_uploader :image, ImageUploader
end
