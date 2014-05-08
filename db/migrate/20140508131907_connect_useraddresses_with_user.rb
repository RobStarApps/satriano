class ConnectUseraddressesWithUser < ActiveRecord::Migration
  def change
  	add_column :user_addresses, :user_id, :integer
    add_index :user_addresses, :user_id
  end
end
