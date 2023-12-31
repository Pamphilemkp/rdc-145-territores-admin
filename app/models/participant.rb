class Participant < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 50 }
    validates :last_name, presence: true, length: { maximum: 50 }
    validates :address, presence: true
    validates :email, presence: true
    validates :country_of_residence, presence: true, length: { maximum: 50 }
    validates :proffession, presence: true, length: { maximum: 50 }
    validates :investment_idea, presence: true
    validates :impact_of_idea, presence: true, length: { maximum: 100 }
    # validates :sector_of_investment, presence: true, length: { maximum: 50 }
    validates :proffessional_experience, presence: true, length: { maximum: 100 }
    validates :summary_of_project, presence: true
    # validates :province_of_interest, presence: true, length: { maximum: 50 }
end
