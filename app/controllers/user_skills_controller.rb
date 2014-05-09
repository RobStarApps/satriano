class UserSkillsController < ApplicationController
  def index

  end

  def new
  end

  def edit
  end

	def create
    @user_skill=Skill.find(user_address_params)
    @user_skill.user=current_user
    if  @user_skill.save
         @user_skills=current_user.user_skills;
      render 'index'
    else
      render 'new'
    end
  end

  def new
  	
  
  end

  def destroy
  end
end
