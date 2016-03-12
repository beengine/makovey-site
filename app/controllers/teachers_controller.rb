class TeachersController < ApplicationController
  def index
    @teachers=Teacher.all
    @title="Педколектив | Школа Маковея"
  end

  def show
    @teacher=Teacher.friendly.find(params[:id])
    @title="#{@teacher.initials} | Школа Маковея"
  end

  def set_site
    @site='main'
  end
end
