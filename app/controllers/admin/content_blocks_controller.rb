module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [SitePage, BlogPage]
    end
  end
end
