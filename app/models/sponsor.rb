class Sponsor < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 20 }
  validates :address, presence: true
  validates :country_of_residence, presence: true, length: { maximum: 50 }
  validates :reason_of_sponsorship, presence: true
  validates :type_of_sponsorship_offering, presence: true, length: { maximum: 50 }
  validates :feedback, length: { maximum: 255 }
end
