class PostsController < ApplicationController

  def index
  	@posts=Post.order('created_at DESC').page(params[:page]).per(5)
  end

  def show
  	@post=Post.find(params[:id])
  	impressionist @post
  end
  def schedule
  end
end
