class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :full_name
      t.string :phone
      t.text :address
      t.string :proffession
      t.text :investment_idea
      t.string :impact_of_idea
      t.string :sector_of_investment
      t.string :proffessional_experience
      t.text :summary_of_project
      t.string :province_of_interest

      t.timestamps
    end
  end
end
