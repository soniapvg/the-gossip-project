Rails.application.routes.draw do
  root 'gossips#index'
  resources :gossips, :users, :cities
  resources :sessions, only: [:new, :create, :destroy]
end
