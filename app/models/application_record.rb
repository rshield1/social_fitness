class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # before_action :authenticate_user!

  # def authenticate_user!
  #   redirect_to login_path unless user_signed_in?
  # end

  # def user_signed_in?
  #   session[:user_id]
  # end


end
