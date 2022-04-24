Rails.application.routes.draw do

  root 'site#home'
  # where is my index page to?
  # how to create routes for every 'click' in page? get

  resources :places, only: [:index, :show] do
    resources :comments, only: [:create, :update]
  end

  resources :posts do
    resources :comments, only: [:create]
    resources :taggings, only: [:new, :create]
  end

  devise_for :users
end
