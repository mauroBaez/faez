module Admin
  class ArticleCategoriesController < Fae::BaseController
    before_action do
      set_class_variables 'Categorías'
    end
  end
end
