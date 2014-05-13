class AddCountryIdToUserAddress < ActiveRecord::Migration
  def change
  	add_column :user_addresses, :country_id, :integer

  end
 
end
