class BlogPage < Fae::StaticPage

  @slug = 'blog'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      #articles_per_page: { type: integer },
      #active: { type: boolean },
      #comments: { type: boolean },
      description: { type: Fae::TextArea }
    }
  end

end
