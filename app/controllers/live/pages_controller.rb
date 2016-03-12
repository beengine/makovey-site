class Live::PagesController < ApplicationController
  def about
    @title='Про нас | Makovey LIVE'
  end

  def set_site
    @site='live'
  end
end
