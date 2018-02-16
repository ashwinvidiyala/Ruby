class UsersController < ApplicationController
  def new
  end

  def create
    user = User.create(user_params)
    unless user.valid?
      flash[:errors] = user.errors.full_messages
      return redirect_to :back
    else
      
    end
    # return redirect_to new_user_path if username.nil?
    # if User.find_by(username: username).valid?
    #   return redirect_to messages_path
    # else
    #   user = User.create(users_params)
    #   flash[:errors] = user.errors.full_messages
    #   return redirect_to :back  unless user.valid?
    # end
    # return redirect_to messages_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :user_id)
  end
end
