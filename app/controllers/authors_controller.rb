class AuthorsController < ApplicationController
  def index
  	@authors=Author.where("site = 0 OR site = 1").page(params[:page]).per(8)
  end

  def show
  	@author=Author.friendly.find(params[:id])
  	@posts=@author.posts.page(params[:page]).per(5)
  end
end
