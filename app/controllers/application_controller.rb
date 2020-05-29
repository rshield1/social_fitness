class ApplicationController < ActionController::Base
    # before_action :authenticate_user!


    # def authenticate_user!
    #     redirect_to_login_path unless user_signed_in?
    # end

    def require_login
        return head(:forbidden) unless session.include? :user_id
      end
end
