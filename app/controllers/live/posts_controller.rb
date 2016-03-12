class Live::PostsController < ApplicationController
  def index
    @posts=Post.where("site = 1").order('created_at DESC').page(params[:page]).per(5)
    @title='Пости | Makovey LIVE'
    render :template => 'shared/posts/index'
  end

  def show
    @post=Post.find(params[:id])
    @title="#{@post.title_uk} | Makovey LIVE"
    impressionist @post
    render :template => 'shared/posts/show'
  end

  def set_site
    @site='live'
  end
end
