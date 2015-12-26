Rails.application.routes.draw do
  resources :libations
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
