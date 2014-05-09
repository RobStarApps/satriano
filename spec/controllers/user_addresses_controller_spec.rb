require 'spec_helper'

describe UserAddressesController do
  let(:user) { create(:user) }

  before do
    sign_in user
  end
  describe "GET 'index'" do
    it "returns http success and set template_to_render var to show if address exists" do
      user_address=FactoryGirl.create(:user_address,user:user)
      get 'index'
      response.should be_success
      expect(response).to render_template(:index)
      expect(assigns(:template_to_render)).to eq 'show'

    end

  end

  describe "PUT 'update'" do
    it "returns http success" do
      user_address=FactoryGirl.create(:user_address,:user=>user)
      xhr :put, :update, :id=>user_address.id
       response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      post 'create'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end
  describe "GET 'edit'" do
    it "returns http success" do
      user_address=FactoryGirl.create(:user_address,:user=>user)
      xhr :get, :edit, :id=>user_address.id
      response.should be_success
      expect(assigns(:user_address)).to eq user_address
    end
  end


end