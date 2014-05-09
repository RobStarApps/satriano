class AddFieldsToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :slug, :string
  end
end
