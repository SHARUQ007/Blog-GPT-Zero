Rails.application.routes.draw do
  devise_for :authors
  resources :blog_posts

  root 'blog_posts#index'
end
