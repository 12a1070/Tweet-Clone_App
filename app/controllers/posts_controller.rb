class PostsController < ApplicationController
  def index
  end
  def new
    Post.new
    @post = Post.new
  end
  def create
    Post.create(params[:post])
    redirect_to new_post_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
