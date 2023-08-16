class CreateAmbassadors < ActiveRecord::Migration[7.0]
  def change
    create_table :ambassadors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :address
      t.string :citizenship
      t.string :presentation
      t.string :position
      t.text :comment
      t.string :reason_of_choice
      t.string :territoire

      t.timestamps
    end
  end
end
