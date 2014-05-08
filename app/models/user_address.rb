class UserAddress < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  validates_presence_of :street, :street_number, :postcode, :city, :country

end
