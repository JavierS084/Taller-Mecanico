class Client < ApplicationRecord
  has_many :vehicles
  validates :first_name, allow_blank:  false, presence: true
  validates :last_name, allow_blank:  false, presence: true
  validates :phone, allow_blank:  false, presence: true
  def full_name
    "#{self.first_name} #{self.last_name} -CI: #{self.document}"
  end
end
