Rails.application.routes.draw do
  get "/pages/:page" => "static_pages#show"
  get "/blog" => "blog_page#index"
  get "/blog/:slug" => "blog_page#show"
  root "static_pages#show", page: 'home'

  namespace :admin do
    resources :articles
    resources :article_categories
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
