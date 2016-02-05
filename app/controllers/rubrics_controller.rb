class RubricsController < ApplicationController
  def index
  	@rubrics=Rubric.all
  end

  def show
  	@rubric=Rubric.friendly.find(params[:id])
  	@posts=@rubric.posts.page(params[:page]).per(5)
  end
end
