class AuthorsController < ApplicationController
  def index
  	@authors=Author.where("site = 0 OR site = 1").page(params[:page]).per(8)
    render :template => 'shared/authors/index'
  end

  def show
  	@author=Author.friendly.find(params[:id])
  	@posts=@author.posts.where("site = 0").page(params[:page]).per(5)
    render :template => 'shared/authors/show'
  end

   def set_site
    @site='main'
    @title='Офіційний сайт школи Маковея'
  end
end
