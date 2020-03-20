class Rest < ApplicationRecord
  has_many :rest_images
  accepts_nested_attributes_for :rest_images
end
