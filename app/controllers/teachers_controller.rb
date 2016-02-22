class TeachersController < ApplicationController
  def index
    @teachers=Teacher.all
  end

  def show
    @teacher=Teacher.friendly.find(params[:id])
  end
end
