class AddRememberTokenExpiresAtToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :remember_token_expires_at, :datetime
  end
end
