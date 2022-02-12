Rails.application.routes.draw do
  get 'about', to: 'site#about'
  get 'home', to: 'site#home'

  root to: 'site#home'
end
