class AuthorsController < ApplicationController
  def index
  	@authors=Author.where("site = 0 OR site = 1").page(params[:page]).per(8)
    @title='Автори | Школа Маковея'
    render :template => 'shared/authors/index'
  end

  def show
  	@author=Author.friendly.find(params[:id])
    @title="#{@author.name_uk} | Школа Маковея"
  	@posts=@author.posts.where("site = 0").page(params[:page]).per(5)
    render :template => 'shared/authors/show'
  end

   def set_site
    @site='main'
  end
end
