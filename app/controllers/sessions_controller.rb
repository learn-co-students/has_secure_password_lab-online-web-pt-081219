require 'pry'

class SessionsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.find_by(name: params[:user][:name])
        #binding.pry
        if @user.password == params[:user][:password]
            session[:user_id] = @user.id
        end
       
    end
end
