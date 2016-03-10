class PagesController < ApplicationController
  def about
  end

  def history
  end
  
  def contacts
  end

     def set_site
    @site='main'
    @title='Офіційний сайт школи Маковея'
  end
end
