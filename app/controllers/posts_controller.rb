class PostsController < ApplicationController

  def index
  	@posts=Post.where("site = 0").order('created_at DESC').page(params[:page]).per(5)
  end

  def show
  	@post=Post.find(params[:id])
  	impressionist @post
  end

     def set_site
    @site='main'
    @title='Офіційний сайт школи Маковея'
  end
end
