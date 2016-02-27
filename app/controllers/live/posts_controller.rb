class Live::PostsController < ApplicationController
  def index
    @posts=Post.order('created_at DESC').page(params[:page]).per(5)
    render :template => 'shared/posts/index'
  end

  def show
    @post=Post.find(params[:id])
    impressionist @post
    render :template => 'shared/posts/show'
  end
end
