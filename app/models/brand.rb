class Brand < ApplicationRecord
  has_many :model_vehicles
  has_many :vehicle
  validates :description, allow_blank:  false, presence: true
end
