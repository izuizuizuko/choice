class Flower < ApplicationRecord
  has_many :flower_images, dependent: :destroy
  accepts_nested_attributes_for :flower_images, allow_destroy: true

end
