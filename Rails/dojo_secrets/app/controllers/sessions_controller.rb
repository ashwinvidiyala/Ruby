class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if user
      session[:user] = user.id
      return redirect_to user_path user.id
    else
      flash[:errors] = 'Invalid Combination'
      return redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user) if session[:user]
    redirect_to new_session_path
  end

end
