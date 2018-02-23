class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def current_user
    User.find(session[:user_id]) if session.key?(:user_id)
    # session.key?(:user) ? User.find(session[:user]) : null
  end

  helper_method :current_user

  private

  def require_login
    # redirect_to new_session_path unless session.key?(:user_id)
    redirect_to new_session_path unless current_user
  end
end
