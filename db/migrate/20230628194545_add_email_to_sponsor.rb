class AddEmailToSponsor < ActiveRecord::Migration[7.0]
  def change
    add_column :sponsors, :email, :string
  end
end
