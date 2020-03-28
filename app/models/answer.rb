class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question, optional: true
  has_many :reactions
end
