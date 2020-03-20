class Contact < ApplicationRecord
  has_many :contact_images, dependent: :destroy
  accepts_nested_attributes_for :contact_images, allow_destroy: true

end
