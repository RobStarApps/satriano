class UserSkillsController < ApplicationController


  include ApplicationHelper

  def index
   reload_skills
   @user_skill=UserSkill.new
 end


 def show
  reload_skills
  @user_skill=UserSkill.new
  render 'index'
end


def new
end

def edit
end

def create

update
 
end



def update
  if  current_user.has_skill(user_skill_params[:skill_id])==false

    @user_skill=UserSkill.new(user_skill_params)
    @user_skill.user=current_user

    if  @user_skill.save
     @user_skills=current_user.user_skills;
     reload_skills

   end

 end

 render 'index'
end






def new


end

def destroy

 @user_skill=UserSkill.find(params[:id])
 @user_skill.destroy
 redirect_to user_skill_path 

end




def reload_skills
  user_skill_ids=Array.new
  user_skill_ids=current_user.user_skills.group(:skill_id).map(&:skill_id);

  @user_skill_leftovers=get_skills_without(user_skill_ids)


end

def user_skill_params 
  params.require(:user_skill).permit(:skill_id)
end

end
