class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :sidebar_posts, :set_classs, :set_site, except: :active_admin

  private
    def sidebar_posts
      @side_posts=Post.order('created_at DESC').limit(3)
    end

    def set_classs
      @cur_class = Classs.find(session[:classs_id]) if session[:classs_id]
    end
end
