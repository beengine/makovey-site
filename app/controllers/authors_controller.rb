class AuthorsController < ApplicationController
  def index
  	@authors=Author.all.page(params[:page]).per(8)
  end

  def show
  	@author=Author.friendly.find(params[:id])
  	@posts=@author.posts.page(params[:page]).per(5)
  end
end
