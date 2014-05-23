module ApplicationHelper

	  def error_messages_for(resource, field)
    return if resource.nil?
    if resource.errors.include?(field)
      render "shared/error_messages_for", error_messages: resource.errors[field]
    end
  end 


  def class_if_current?(path) 
    "current" if current_page?(path)
  end


	def get_skills_without(without_ids)

		skills=Hash.new
	
		skills[:instruments]=Skill.where(:type_id => Type.where(:slug=>'instrument').first.id) & Skill.where.not(:id=>without_ids)
		skills[:availabilities]=Skill.where(:type_id => Type.where(:slug=>'availability').first.id) & Skill.where.not(:id=>without_ids)
		skills[:transportations]=Skill.where(:type_id => Type.where(:slug=>'transportation').first.id) & Skill.where.not(:id=>without_ids)
		skills[:targets]=Skill.where(:type_id => Type.where(:slug=>'target').first.id) & Skill.where.not(:id=>without_ids)
		skills[:languages]=Skill.where(:type_id => Type.where(:slug=>'language').first.id) & Skill.where.not(:id=>without_ids)
	
	return skills

	end	
  

end
