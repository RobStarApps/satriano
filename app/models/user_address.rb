class UserAddress < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  validates_presence_of :street, :street_number, :postcode, :city, :country

   geocoded_by :geocode_address

   after_validation :geocode  


   def geocode_address
  	[street+" "+street_number, city, postcode ,country].compact.join(', ')
   end

end
