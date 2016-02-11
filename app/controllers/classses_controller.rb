class ClasssesController < ApplicationController
  def index
  	@classses=Classs.all
  end

  def show
  	@classs=Classs.find(params[:id])
  end
end
