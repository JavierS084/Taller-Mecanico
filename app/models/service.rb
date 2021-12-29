class Service < ApplicationRecord
  belongs_to :service_type
 validates :description, allow_blank:  false, presence: true
  validates :price, allow_blank:  false, presence: true
  validates :service_type, allow_blank:  false, presence: true
end
