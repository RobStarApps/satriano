class AddLatitudeAndLongitudeToUserAddress < ActiveRecord::Migration
  def change
    add_column :user_addresses, :latitude, :float
    add_column :user_addresses, :longitude, :float
  end
end
