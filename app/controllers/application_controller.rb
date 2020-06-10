class ApplicationController < ActionController::Base
 helper_method :logged_in?
 helper_method :create_session

  def require_login
      redirect_to login_path unless session[:user_id]
  end

  def logged_in?
    session[:user_id] ? true : false
  end

  def create_session
    session[:user_id] = @user.id
  end

  


  #I want to create a helper method where I can make sure the user
  #belongs to the session before the can make any edits or deletions





    
end
