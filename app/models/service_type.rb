class ServiceType < ApplicationRecord
  has_many :services
  validates :description, presence:  true, allow_blank: false
end
