Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'posts#index'
  
  resources :businesses, only: [:new, :create, :show, :update]

  resources :reviews, only: [:new, :create]
end
