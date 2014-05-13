class UserAddressesController < ApplicationController

  
  def index
   @user_addresses=current_user.user_addresses;

  end

  def edit
    @countries=Country.all
    @user_address=UserAddress.find(params[:id])
  end

  def update
    @user_address=UserAddress.find(params[:id])
    if @user_address.update_attributes(params[:user_address])
      render 'show'
    else
      render 'edit'
    end
  end

  def create
    @user_address=UserAddress.new(user_address_params)
    @user_address.user=current_user
    if @user_address.save
         @user_addresses=current_user.user_addresses;
      render 'index'
    else
      render 'new'
    end
  end

  def new
    @countries=Country.all
  	@user_address=UserAddress.new
  
  end

  def show
  end

  def user_address_params 
  params.require(:user_address).permit(:street, :street_number, :postcode, :city, :country_id)
  end

  def destroy
     @user_address=UserAddress.find(params[:id])
     @user_address.destroy
    redirect_to user_addresses_path

  end
end
