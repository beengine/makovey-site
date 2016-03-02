class Live::AuthorsController < ApplicationController
  def index
    @authors=Author.where("site = 0 OR site = 2").page(params[:page]).per(8)
    render :template => 'shared/authors/index'
  end

  def show
    @author=Author.friendly.find(params[:id])
    @posts=@author.posts.page(params[:page]).per(5)
    render :template => 'shared/authors/show'
  end
end
