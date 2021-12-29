class ModelVehicle < ApplicationRecord
  belongs_to :brand
  has_many :vehicles
  validates :brand, allow_blank:  false, presence: true
  validates :description, allow_blank:  false, presence: true
end
