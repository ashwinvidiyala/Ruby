class UsersController < ApplicationController
  def index
    return render json: User.all
  end

  def new
    return render 'new.html.erb'
  end

  def create
    User.create(name: params[:name])
    return redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
    return render 'show.html.erb'
  end

  def edit
    @user = User.find(params[:id])
    return render 'edit.html.erb'
  end

  def update
    user = User.find(params[:id])
    user.update(name: params[:name])
    return redirect 'users/show/user.id'
  end

  def total
    render text: "#{User.all.count}"
  end
end
