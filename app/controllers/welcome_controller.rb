class WelcomeController < ApplicationController
    def index
        # byebug
        @user = current_user
    end
end