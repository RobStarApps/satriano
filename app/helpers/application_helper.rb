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

  

end
