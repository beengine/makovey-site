class ClasssesController < ApplicationController
  def index
  	@classses=Classs.all
  end

  def show
  	@classs=Classs.friendly.find(params[:id])
  end
  def schedule
    @classs=Classs.friendly.find(params[:id])
    @schedules=@classs.schedules.order("day_of_week")
  end
end
