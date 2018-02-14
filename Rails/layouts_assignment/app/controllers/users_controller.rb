class UsersController < ApplicationController
  def index
    @users = User.all
    render layout: 'two_column'
  end

  def create
    user = User.create( users_params )
    redirect_to root_path
  end

  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end
end
