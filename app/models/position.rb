class Position < ApplicationRecord
  has_many :officials
  validates :description, allow_blank:  false, presence: true
end
