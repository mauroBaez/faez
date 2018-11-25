class StaticPagesController < ApplicationController
  def home
  end
  def show
    page_name = (params[:page] + "_page").classify

    @item = page_name.constantize.instance rescue nil
    # shared elements on all pages
    @site = SitePage.instance

    @articles = Article.order(:date).all if params[:page] == 'home'
    @article = Article.find_by slug: params[:slug] if params[:page] == 'blog'


    render "static_pages/#{params[:page]}"
  end
end
