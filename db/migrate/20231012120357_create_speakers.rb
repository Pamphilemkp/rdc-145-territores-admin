class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :presentation
      t.string :email
      t.string :phone
      t.text :address
      t.string :citizenship
      t.text :biography
      t.string :occupation
      t.text :feedback
      t.string :hear_about_us
      t.binary :photo

      t.timestamps
    end
  end
end
