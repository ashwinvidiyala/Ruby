class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session.key?(:user_id)
    # session.key?(:user) ? User.find(session[:user]) : null
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  helper_method :current_user
end
