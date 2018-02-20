class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def create
    user = User.create( user_params )
    flash[:errors] = user.errors.full_messages
    redirect_to :back unless user.valid?

    return redirect_to new_session_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
