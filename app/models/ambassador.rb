class Ambassador < ApplicationRecord
 
 validates :first_name, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true,uniqueness: true, length: { maximum: 255 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, length: { maximum: 20 }
  validates :address, presence: true
  validates :citizenship, presence: true, length: { maximum: 50 }
  validates :presentation, presence: true, length: { maximum: 999 }
  validates :position, presence: true, length: { maximum: 50 }
  validates :reason_of_choice, presence: true, length: { maximum: 999 }
  validates :territoire, presence: true, length: { maximum: 50 }
end
