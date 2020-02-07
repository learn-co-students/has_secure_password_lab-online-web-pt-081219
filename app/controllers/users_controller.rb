class UsersController < ApplicationController

    def new
        @user = User.create
    end
    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to welcome_path
        else
        redirect_to '/'
        end
    end
    

    private
    
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
