class AddFirstNameToParticipant < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :first_name, :string
  end
end
