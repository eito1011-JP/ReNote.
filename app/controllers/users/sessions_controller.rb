class SessionsController < ApplicationController
  
  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to memories_path
    else
      render 'home/index'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  def after_sign_in_path_for(resource)
    memories_path
  end 
  
  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    root_path
  end 
end
