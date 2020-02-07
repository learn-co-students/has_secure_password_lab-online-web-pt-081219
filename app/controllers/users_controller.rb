class UsersController < ApplicationController

    def index
        render 'login'
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        if @user.id == nil
            redirect_to new_user_path
        else
            redirect_to user_path(@user)
            session[:user_id] = @user.id
        end
    end

    def show
        @user = User.find(params[:id])
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
