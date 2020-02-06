class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        if user_params[:password] != user_params[:password_confirmation]
            return redirect_to new_user_url
        end

        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to welcome_index_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end