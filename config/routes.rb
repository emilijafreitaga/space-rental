Rails.application.routes.draw do
  resources :event_places
  devise_for :users
  root to: "spaces#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/dashboard", to: "users#dashboard"
  get "/home", to: "pages#home"
  resources :spaces do
    resources :bookings, only: [:show, :create, :edit, :update, :update_confirm]
      resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:destroy]
end
# test
