Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :bookings, only: [:new, :create, :edit, :update, :destroy] do
    member do
      post :approve
      post :decline
  end
end
  resources :bookings, only: [:show] do
    resources :messages, only: :create
  end
  resources :reviews, only: [:new, :create, :destroy]
  resources :dashboards, only: [:index, :show]
end



