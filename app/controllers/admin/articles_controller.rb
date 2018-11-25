module Admin
  class ArticlesController < Fae::BaseController
    before_action do
      set_class_variables 'Artículos'
    end
    
    def show

      @item = page_name.constantize.instance rescue nil
      # shared elements on all pages
      @site = SitePage.instance
  
      @articles = Article.order(:date).all if params[:page] == 'home'
  
      render "static_pages/#{params[:page]}"
    end
    
    private

    def build_assets
      @item.build_hero_image if @item.hero_image.blank?
      @item.build_pdf if @item.pdf.blank?
    end

  end
end
