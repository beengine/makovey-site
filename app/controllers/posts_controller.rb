class PostsController < ApplicationController
  def index
  	@posts=Post.order(:created_at)
  end

  def show
  	@post=Post.find(params[:id])
  end
end
