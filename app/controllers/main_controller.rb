class MainController < ApplicationController
    def index
        if session[:user_id]
        @user = User.find(session[:user_id])
        end
    end

    def save_data
        session[:user_id] = params[:user_id]
        redirect_to "/"
    end        
end