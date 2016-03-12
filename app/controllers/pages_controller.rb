class PagesController < ApplicationController
  def about
    @title="Про нас | Школа Маковея"
  end

  def history
    @title="Історія | Школа Маковея"
  end
  
  def contacts
    @title="Контакти | Школа Маковея"
  end

     def set_site
    @site='main'
  end
end
