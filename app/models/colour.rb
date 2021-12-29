class Colour < ApplicationRecord
  has_many :vehicles
  validates :description, allow_blank:  false, presence: true
end
