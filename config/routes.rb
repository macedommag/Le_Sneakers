Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :sneakers do
    resources :orders, only: %i[create]
  end
  resources :orders, only: %i[destroy show]
end
