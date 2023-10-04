class AddColumnsToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :email, :string
    add_column :participants, :country_of_residence, :string
  end
end
