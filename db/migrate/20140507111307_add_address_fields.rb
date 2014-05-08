class AddAddressFields < ActiveRecord::Migration
  def change
  	add_column :user_addresses, :street, :string
    add_column :user_addresses, :street_number, :string
     add_column :user_addresses, :postcode, :string
      add_column :user_addresses, :city, :string
     add_column :user_addresses, :country, :string
      add_column :user_addresses, :phone, :string
  end
end
