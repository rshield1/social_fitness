class ApplicationController < ActionController::Base
 helper_method :logged_in?
#  helper_method :current_user
  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.

  def current_user
    User.find_by(id: session[:user_id])
  end

  def require_login
      redirect_to login_path unless session[:user_id]
  end

  def logged_in?
    #is there a user id in our session check if true or false?
    session[:user_id] ? true : false
  end



    
end
