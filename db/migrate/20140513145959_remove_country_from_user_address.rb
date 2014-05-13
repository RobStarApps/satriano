class RemoveCountryFromUserAddress < ActiveRecord::Migration
  def change
  	remove_column :user_addresses, :country
  end
end
