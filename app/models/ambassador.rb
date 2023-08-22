class Ambassador < ApplicationRecord
    validates :email, presence: true,
    uniqueness: true
    validates :phone, presence: true,
    uniqueness: true
end
