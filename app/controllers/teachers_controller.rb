class TeachersController < ApplicationController
  def index
    @teachers=Teacher.all
  end

  def show
    @teacher=Teacher.friendly.find(params[:id])
  end

  def set_site
    @site='main'
    @title='Офіційний сайт школи Маковея'
  end
end
