class AddReceiptToSponsors < ActiveRecord::Migration[7.0]
  def change
    add_column :sponsors, :receipt, :string
  end
end
