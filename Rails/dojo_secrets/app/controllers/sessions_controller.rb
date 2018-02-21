class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
  end

  def create
    user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      return redirect_to user_path user.id
    else
      flash[:errors] = ['Invalid Combination']
      return redirect_to new_session_path
    end
  end

  # #Better way
  # def create
  #   user = User.find_by_email(params[:email])
  #   if user
  #     if user.authenticate(parms[:password])
  #       session[:user] = user.id
  #       return redirect_to user_path user.id
  #     end
  #       flash[:errors] = ['Incorrect password']
  #   else
  #     flash[:errors] = ['Incorect email']
  #   end
  # end

  def destroy
    session.delete(:user_id) if session[:user_id]
    redirect_to new_session_path
  end
end
