Rails.application.routes.draw do
  root 'gossips#index'
  resources :gossips, :users, :cities
end
