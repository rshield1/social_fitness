class ApplicationController < ActionController::Base
    # before_action :authenticate_user!


    # def authenticate_user!
    #     redirect_to_login_path unless user_signed_in?
    # end

    def require_login
        redirect_to_login_path unless session.include? :user_id
      end


      def current_user
        @current_user ||= User.find_by_id(session[:user_id])
      end
end
