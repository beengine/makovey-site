class Live::AuthorsController < ApplicationController
  def index
    @authors=Author.all.page(params[:page]).per(8)
    render :template => 'shared/authors/index'
  end

  def show
    @author=Author.friendly.find(params[:id])
    @posts=@author.posts.page(params[:page]).per(5)
    render :template => 'shared/authors/show'
  end
end
