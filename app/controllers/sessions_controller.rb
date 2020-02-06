class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    authenticated = user.try(:authenticate, params[:user][:password])
    return redirect_to(controller: 'sessions', action: 'new') unless authenticated
    @user = user
    session[:user_id] = @user.id
    # byebug
    redirect_to controller: 'welcome', action: 'home'
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
