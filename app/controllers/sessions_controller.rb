class SessionsController < ApplicationController
    def new
        @user = User.create
    end
    def create
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
    end
    def show
        @user = current_user
    end

    def destroy
        session.delete :name
    end

end
