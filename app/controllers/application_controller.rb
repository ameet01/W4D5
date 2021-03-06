class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login!(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !current_user.nil?
  end

  def require_log_in
    redirect_to new_session_url if !logged_in?
  end

  def require_log_out
    redirect_to users_url if logged_in?
  end
end
