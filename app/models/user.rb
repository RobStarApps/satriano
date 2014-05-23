class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  mount_uploader :avatar, AvatarUploader


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_addresses
  has_many :user_skills

  # Setup accessible (or protected) attributes for your model

  # attr_accessible :title, :body

	def name
	  return :first_name
	end


  def full_name
    return first_name+" "+last_name
  end

def has_skill(user_skill_id)

  user_skills.each do |skill|
  if skill.skill_id==user_skill_id
    return true
  end
 end
return false

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
