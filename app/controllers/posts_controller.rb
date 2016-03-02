class PostsController < ApplicationController

  def index
  	@posts=Post.where("site = 0").order('created_at DESC').page(params[:page]).per(5)
  end

  def show
  	@post=Post.find(params[:id])
  	impressionist @post
  end
end
