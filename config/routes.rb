Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies do
  #   resources 
  resources :lists, only: [:index, :new, :show, :create] do
  resources :bookmarks
  end 
  resources :bookmarks, only: [:destroy]
end
