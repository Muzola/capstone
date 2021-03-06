Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :products, only: [:new, :create, :index, :show] do
    resources :purchases, only: :create
  end
  get 'about', to: 'static_pages#about'
  get 'account', to: 'static_pages#account'
  get 'shop', to: 'shop#index'
  namespace :admin do
    resources :products, only: [:new, :create, :show]
  end
end
