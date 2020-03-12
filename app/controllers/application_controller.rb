class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :require_user
  attr_writer :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    if current_user.nil?
      false
    else
      true
    end
    # !!current_user
  end

  def require_user
    redirect_to login_path unless logged_in?
  end
end
