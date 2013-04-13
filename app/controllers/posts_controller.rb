class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create(params[:post])
  end
  
  def edit
    @post = Post.find(params[:post_id])
  end
  
  def show
    @post = Post.find(params[:post_id])
  end
  
end
