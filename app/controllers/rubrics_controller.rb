class RubricsController < ApplicationController
  def index
  	@rubrics=Rubric.where("site = 0 OR site = 1")
  end

  def show
  	@rubric=Rubric.friendly.find(params[:id])
  	@posts=@rubric.posts.where("site = 0").page(params[:page]).per(5)
  end

  def set_site
    @site='main'
    @title='Офіційний сайт школи Маковея'
  end
end
