class RubricsController < ApplicationController
  def index
  	@rubrics=Rubric.all
  end

  def show
  	@rubric=Rubric.friendly.find(params[:id])
  end
end
