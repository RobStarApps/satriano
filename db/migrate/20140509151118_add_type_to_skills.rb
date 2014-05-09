class AddTypeToSkills < ActiveRecord::Migration
  def change
  	 
  	   add_index :skills, :type_id
  end
end
