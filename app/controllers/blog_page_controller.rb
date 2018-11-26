class BlogPageController < ApplicationController
  def index
    @articles = Article.order(:date)
    render "static_pages/blog_index"

  end
  def show
    @site = SitePage.instance
    @article = Article.find_by slug: params[:slug]

    render "static_pages/blog_show"
  end
end
