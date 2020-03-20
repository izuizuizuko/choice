class Strain < ApplicationRecord
  has_many :strain_images
  accepts_nested_attributes_for :strain_images
end
