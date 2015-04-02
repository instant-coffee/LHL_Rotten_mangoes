Rails.application.routes.draw do

  root to: 'movies#index'

  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  
  resources :users, only: [:index, :new, :create, :show, :update, :destroy]

  namespace :admin do
    resources :users, only: [:new, :create, :edit]
  end

  resource :session, only: [:new, :create, :destroy] do
    member do
      post 'create_persona'
      delete 'destroy_persona'
    end
  end
  

  
end


