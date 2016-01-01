Rails.application.routes.draw do
  get 'static_pages/devlog'

  root to: 'visitors#index'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :details
  resources :libations
  devise_for :users
  resources :users
end
