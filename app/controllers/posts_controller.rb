class PostsController < ApplicationController

  def index
  	@posts=Post.where("site = 0").order('created_at DESC').page(params[:page]).per(5)
    render :template => 'shared/posts/index'
  end

  def show
  	@post=Post.find(params[:id])
  	impressionist @post
    render :template => 'shared/posts/show'
  end

     def set_site
    @site='main'
    @title='Офіційний сайт школи Маковея'
  end
end
