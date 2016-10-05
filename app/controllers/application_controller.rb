class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

   #This method is used to verify that the user is log in before accessing a controller and redirects to the login page
  def login_required 
  	# There is already one in devise before_filter :authenticate_user!
  	redirect_to(new_user_session_path) if current_user.blank? 
  end

  def after_sign_in_path_for(resource)
  	'/dashboards/index'
  end

end
