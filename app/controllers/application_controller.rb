class ApplicationController < ActionController::Base

    def require_login
        redirect_to login_path unless session.include? :user_id
    end


    
end
