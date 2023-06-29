class RemoveFullnameFromParticipant < ActiveRecord::Migration[7.0]
  def change
    remove_column :participants, :full_name, :string
  end
end
