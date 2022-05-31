Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :sneakers do
    resources :orders, only: %i[new create edit]
  end

end
