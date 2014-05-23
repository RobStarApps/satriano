class UsersController < ApplicationController

	def show

		@user=User.find(users_params[:id])
	

	end

 def users_params 
 		 params.permit(:id)
  end

end
