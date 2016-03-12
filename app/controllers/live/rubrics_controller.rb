class Live::RubricsController < ApplicationController
  def index
    @rubrics=Rubric.where("site = 0 OR site = 2")
    @title='Рубрики | Makovey LIVE'
    render :template => 'shared/rubrics/index'

  end

  def show
    @rubric=Rubric.friendly.find(params[:id])
    @title= "#{@rubric.name_uk} | Makovey LIVE"
    @posts=@rubric.posts.where("site = 1").page(params[:page]).per(5)
    render :template => 'shared/rubrics/show'
  end

  def set_site
    @site='live'
  end
end
