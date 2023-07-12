class CreateProvinces < ActiveRecord::Migration[7.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :chef_lieu
      t.text :langues
      t.string :superficie
      t.text :territoires
      t.string :map

      t.timestamps
    end
  end
end
