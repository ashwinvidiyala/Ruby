class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    secret = Secret.create(content: params[:content], user: current_user)
    unless secret.valid?
      flash[:errors] = secret.errors.full_messages
      return redirect_to user_path user
    end
    return redirect_to user_path current_user
  end

  def destroy
    secret = Secret.find(params[:id])
    user = secret.user
    secret.destroy if user == current_user
    return redirect_to user_path user
  end
end
