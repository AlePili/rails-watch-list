Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  # resources :movies do
  #   resources 
  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end 
  resources :bookmarks, only: [:destroy]
  resources :reviews, only: :destroy
end
