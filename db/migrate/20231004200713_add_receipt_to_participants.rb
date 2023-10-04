class AddReceiptToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :receipt, :string
  end
end
