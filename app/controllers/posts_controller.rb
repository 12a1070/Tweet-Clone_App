class PostsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end

  def create
    @post =.Post.new(post_params)
    if params[:back]
      render:new
    else
      if @post.save
      redirect_to post_path,notice:"ポストを作成しました"
      else
      render:new,status:  unprocessable_entity
      end
    end
  end


  private
  def post_params
    params.require(:post).permit(:content)
  end
end
