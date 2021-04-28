class ApplicationController < ActionController::Base

    helper_method :current_user, :user_signed_in?, :user_session
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
