class Live::RubricsController < ApplicationController
  def index
    @rubrics=Rubric.where("site = 0 OR site = 2")
    render :template => 'shared/rubrics/index'

  end

  def show
    @rubric=Rubric.friendly.find(params[:id])
    @posts=@rubric.posts.where("site = 1").page(params[:page]).per(5)
    render :template => 'shared/rubrics/show'
  end

  def set_site
    @site='live'
    @title='Makovey LIVE'
  end
end
