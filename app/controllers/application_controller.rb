class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters , if: :devise_controller?

 private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :email, :encrypted_password])
  end

  



 
 
# 以前のコード 
  # protect_from_forgery with: :exception
  # before_action :current_user

  # private

  # def current_user
  #   return unless session[:user_id]
  #   @current_user = User.find_by(id: session[:user_id])
  # end
  

end
