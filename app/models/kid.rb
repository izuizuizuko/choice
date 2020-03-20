class Kid < ApplicationRecord
  has_many :kid_images
  accepts_nested_attributes_for :kid_images
end
