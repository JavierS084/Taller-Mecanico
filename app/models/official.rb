class Official < ApplicationRecord
  belongs_to :position
  validates :first_name, allow_blank:  false, presence: true
  validates :last_name, allow_blank: false , presence:  true
  validates :document_number, allow_blank: false,presence: true
  validates :phone,allow_blank: false, presence: true
  validates :position, allow_blank:  false, presence: true
end
