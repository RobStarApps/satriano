class AddIndexToUserSkills < ActiveRecord::Migration
  def change
       
      add_index :user_skills, :skill_id
  end
end
