class AddAcceptanceToAmbassadors < ActiveRecord::Migration[7.0]
  def change
    add_column :ambassadors, :acceptance, :boolean, default: false
  end
end
