class AuthorsController < ApplicationController
  def index
  	@authors=Author.all.page(params[:page]).per(8)
  end

  def show
  	@author=Author.find(params[:id])
  end
end
