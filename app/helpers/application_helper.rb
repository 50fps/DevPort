module ApplicationHelper
	def login_helper style
  	if current_user.is_a?(GuestUser)
      (link_to "Sign Up", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end 
  end
# passing the 'layout_name' variable is optional & is used to give specific attention to views
  def source_helper(layout_name)
		if session[:source] 
			greeting = "Thanks for visiting me from  #{ session[:source] }, layout: #{layout_name}"
			content_tag(:p, greeting, class: "source-greeting")
		end 
  end

  def copyright_generator
    MockeViewTool::Renderer.copyright 'Damian Mocke', 'All rights reserved'
  end
end