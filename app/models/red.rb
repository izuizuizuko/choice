class Red < ApplicationRecord
  has_many :red_images
  accepts_nested_attributes_for :red_images
end
