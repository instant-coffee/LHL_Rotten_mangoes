Rails.application.routes.draw do

  root to: 'movies#index'

  get 'reviews/new'

  get 'reviews/create'

  resources :movies do
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:new, :create]
  
  namespace :admin do
    resources :users, only: [:new, :create]
  end

  resources :sessions, only: [ :new, :create, :destroy ]
  

  
end


