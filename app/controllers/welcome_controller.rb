class WelcomeController < ApplicationController
    before_action :require_login
    def show
        @user = User.find(params[:user_id])
    end

    private
 
    def require_login
        return head(:forbidden) unless session.include? :user_id
    end
end
