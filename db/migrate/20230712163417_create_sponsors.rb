class CreateSponsors < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsors do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :address
      t.string :country_of_residence
      t.text :reason_of_sponsorship
      t.string :type_of_sponsorship_offering
      t.string :feedback

      t.timestamps
    end
  end
end
