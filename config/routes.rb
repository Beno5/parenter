Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :bookings, only: [:new, :create, :show, :edit, :update]
  resources :reviews, only: [:new, :create, :destroy]
  resources :dashboard, only: [:index, :show]
end
