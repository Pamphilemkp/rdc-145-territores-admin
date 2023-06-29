class RemoveFistNameFromParticipant < ActiveRecord::Migration[7.0]
  def change
    remove_column :participants, :fist_name, :string
  end
end
