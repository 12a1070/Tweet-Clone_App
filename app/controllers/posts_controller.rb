class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end
  def edit
  end
  def confirm
    @post = Post.new(post_params)
    render :new if @post.invalid?
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if params[:back]
      render:new
    else
      if @post.save
      redirect_to post_path(@post.id),notice:"メッセージを作成しました"
      else
      render:new,status:  unprocessable_entity
      end
    end
  end
  def show
  end
  def update
    if @post.update(post_params)
      redirect_to post_path,notice:"メッセージを更新しました"
    else
      render:edit,status: :unprocessable_entity
    end
  end
  def destroy
    @post.destroy
    redirect_to posts_url, notice: "メッセージを消去しました"
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
