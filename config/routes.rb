Rails.application.routes.draw do
  root 'home#index'

  resources :posts do
    resources :comments, only: [:create]
    resources :taggings, only: [:new, :create]
  end

  resources :authors

  # end
  # devise_for :authors
  # get 'home/index'
  # resources :posts
  # resources :post
  # devise_for :users

  # #main routes, for main page of the website
  # root 'home#index'

  # scope module: 'authors' do
    # resources :posts
  # end



  #root to: 'site#home'
end
