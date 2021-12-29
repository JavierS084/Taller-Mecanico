class Vehicle < ApplicationRecord
  belongs_to :client
  belongs_to :colour
  belongs_to :model_vehicle


  validates :client, allow_blank:  false, presence: true
  validates :colour, allow_blank:  false, presence: true
  validates :model_vehicle, allow_blank:  false, presence: true

end
