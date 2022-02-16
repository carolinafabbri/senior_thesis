Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'site#home'

  get 'about', to: 'site#about'
  get 'home', to: 'site#home'

  #root to: 'site#home'
end
