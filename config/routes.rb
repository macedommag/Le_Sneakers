Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'order', to: 'pages#order'
  # get 'sneaker', to: 'pages#sneaker'
  # get 'user', to: 'pages#user'
  resources :orders, only: [:show]
  resources :sneaker, only: [:create]
  resources :user, only: [:index]
end
