class ChangeUserProfileController < ApplicationController

	def edit
	  @user=current_user
	end

	def index
			  @user=current_user
	end

	def update

	 @user=current_user

	new_filename="testbild.jpg"
 	
 	 if ImageS3Uploader.new.store! change_user_profile_params[:avatar]

        unless user.blank?
       
          @user.avatar= new_filename
        end
@user.save

      end

		render "edit"
	end	


	 def change_user_profile_params 
 	 params.permit(:avatar)
  end

end
