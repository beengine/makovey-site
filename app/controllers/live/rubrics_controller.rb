class Live::RubricsController < ApplicationController
  def index
    @rubrics=Rubric.all
    render :template => 'shared/rubrics/index'

  end

  def show
    @rubric=Rubric.friendly.find(params[:id])
    @posts=@rubric.posts.page(params[:page]).per(5)
    render :template => 'shared/rubrics/show'
  end
end
