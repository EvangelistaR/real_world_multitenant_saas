Rails.application.routes.draw do
  get 'projects/index'
  devise_for :users
  resources :dashboard, only: [:index]
  resources :projects, only: [:index]

  root "home#index"
end
