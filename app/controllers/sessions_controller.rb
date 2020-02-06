class SessionsController < ApplicationController
    #login page (new), login functionality (create), lougout (destroy)

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(name: params[:user][:name])

        return redirect_to new_session_url unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to welcome_index_path
    end

    def destroy
        session.delete :user_id
        redirect_to new_session_url
    end
end