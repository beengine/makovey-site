class Live::PagesController < ApplicationController
  def about
  end

  def set_site
    @site='live'
    @title='Makovey LIVE'
  end
end
