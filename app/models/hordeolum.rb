class Hordeolum < ApplicationRecord
  has_many :hordeolum_images
  accepts_nested_attributes_for :hordeolum_images
end
