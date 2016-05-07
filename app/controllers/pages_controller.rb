class PagesController < ApplicationController
  def show
    @page=Page.find(params[:id])
    render 'shared/404', :status => 404 if @page.nil?
  end
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
