class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_addresses
  has_many :user_skills
  has_many :skills, through: :user_skills
  # Setup accessible (or protected) attributes for your model

  # attr_accessible :title, :body

	def name
	  return :firstname
	end

#Returning the email address of the model if an email should be sent for this object (Message or Notification).
#If no mail has to be sent, return nil.
def mailboxer_email(object)
  #Check if an email should be sent for that object
  #if true
  return :email
  #if false
  #return nil
end

end
