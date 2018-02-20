class UsersController < ApplicationController
  # def index
  #   redirect_to new_user_path
  # end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    user = User.create( user_params )
    unless user.valid?
      flash[:errors] = user.errors.full_messages
      return redirect_to new_user_path
    end
    return redirect_to new_session_path
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name]
    user.email = params[:email]
    user.save
    unless user.valid?
      flash[:errors] = user.errors.full_messages
      return redirect_to :back
    end
    return redirect_to user_path user.id
  end

  def destroy
    User.find(params[:id]).destroy
    session.delete(:user_id) if session[:user_id]
    redirect_to new_user_path
  end
end
