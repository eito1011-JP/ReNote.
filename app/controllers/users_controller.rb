class UsersController < ApplicationController
  skip_before_action :authenticate_user!, raise: false
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      
      render action: :me
    else
    
      redirect_back(fallback_location: new_user_registration_path)
      
    end  
  end

  def destroy
  end



  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
