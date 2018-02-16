class UsersController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.create(user_params)
    unless user.valid?
      flash[:errors] = user.errors.full_messages
      return redirect_to new_user_path
    end

    flash[:notice] = ["Welcome, #{user.first_name}"]
    return redirect_to user_path user.id
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
