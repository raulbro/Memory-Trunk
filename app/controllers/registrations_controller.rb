class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_in_path_for(resource) #URL after log in
  	'/dashboards/index'
  end

  def after_sign_up_path_for(resource) #URL after log in
  	'/dashboards/index'
  end

  private

  def sign_up_params 
  	params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end

end