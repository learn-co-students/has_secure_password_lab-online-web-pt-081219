class UsersController < ApplicationController

  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to '/login'
    end
  end

  def new
  end

  def create
    if params[:user][:password] != params[:user][:password_confirmation]
      redirect_to '/signup'
    else
      @user = User.create(user_params)
      session[:user_id] = @user.id
   end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
