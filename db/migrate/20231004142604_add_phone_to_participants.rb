class AddPhoneToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :phone, :string
  end
end
