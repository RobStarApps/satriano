class UserAddress < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  
  validates_presence_of :street, :street_number, :postcode, :city, :country_id

   geocoded_by :geocode_address

   after_validation :geocode 
   belongs_to :country 


   def geocode_address
   


  	[street+" "+street_number, city, postcode ].compact.join(', ')+" "+Country.find(country_id).printable_name
   end

end
