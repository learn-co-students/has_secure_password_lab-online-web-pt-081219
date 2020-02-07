
class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      # binding.pry
      redirect_to user_url(@user)
    else
      redirect_to '/'
    end
  end

end
