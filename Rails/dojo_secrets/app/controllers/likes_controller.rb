class LikesController < ApplicationController
  def create
    secret = Secret.find(params[:secret_id])
    user = current_user
    Like.create(user: user, secret:secret)

    return redirect_to secrets_path
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy

    return redirect_to secrets_path
  end
end
