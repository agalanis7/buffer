    class ApplicationController < ActionController::Base
        skip_before_action :verify_authenticity_token  

        before_action :set_current_user

        def set_current_user
            if session[:user_id]
                Current.user = User.find_by(id: session[:user_id])    
            end
        end

        def require_user_logged_in!
            redirect_to sign_in_path, alert: "You must be signed in to do that." if Current.user.nil?
            end      
    end


    #skip_before_action :verify_authenticity_token    
    #Used to escape error from codespaces about http origin..