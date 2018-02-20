class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(session[:user])
  end

  def edit
  end
end
