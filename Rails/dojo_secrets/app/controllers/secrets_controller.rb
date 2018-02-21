class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    user = User.find(params[:user_id])
    secret = Secret.create(content: params[:content], user: user)
    unless secret.valid?
      flash[:errors] = secret.errors.full_messages
      return redirect_to user_path user
    end
    return redirect_to user_path user
  end

  def destroy
    secret = Secret.find(params[:id])
    user = secret.user
    secret.destroy
    return redirect_to user_path user
  end
end
