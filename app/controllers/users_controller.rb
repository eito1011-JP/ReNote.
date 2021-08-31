class UsersController < ApplicationController
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path
    else
      flash[:alert] = 'ユーザー登録できませんでした'
      # flash[:user] = user
      # flash[:error_messages] = user.errors.full_messages
      redirect_back fallback_location: 'http://localhost'
    end

# memoriesのcreate action
    # if @memory.save
    #   redirect_to root_path, notice: '登録が完了しました!'
    # else
    #   flash[:alert] = '登録が完了できませんでした'
    #   render :new
    # end     
  end

  def me
    binding.pry
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
