class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    render layout: 'three_column'
  end

  def create
    post = Post.create( posts_params )
    redirect_to posts_path
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
