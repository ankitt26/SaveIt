Rails.application.routes.draw do
  resources :spends
  resources :categories
  devise_for :users
  root "splash_screens#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "splash_screens#index"
end
