class ClasssesController < ApplicationController
  def index
  	@classses=Classs.all
    @title='Класи | Школа Маковея'
  end

  def show
  	@classs=Classs.friendly.find(params[:id])
    @title="#{@classs.name_uk} | Школа Маковея"
  end
  def schedule
    @classs=Classs.friendly.find(params[:id])
    @title="Розклад #{@classs.name_uk} | Школа Маковея"
    @schedules=@classs.schedules.order("day_of_week")
  end
  def schedules
    @title="Розклад | Школа Маковея"
  end
  def search
    classs=Classs.friendly.find(params[:id])
    session[:classs_id] = classs.id
    redirect_to schedule_url(classs)
  end

     def set_site
    @site='main'
  end
end
