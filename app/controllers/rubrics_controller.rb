class RubricsController < ApplicationController
  def index
  	@rubrics=Rubric.where("site = 0 OR site = 1")
    @title="Рубрики | Школа Маковея"
    render :template => 'shared/rubrics/index'
  end

  def show
  	@rubric=Rubric.friendly.find(params[:id])
    @title="#{@rubric.name_uk} | Школа Маковея"
  	@posts=@rubric.posts.where("site = 0").page(params[:page]).per(5)
    render :template => 'shared/rubrics/show'
  end

  def set_site
    @site='main'
  end
end
