Rails.application.routes.draw do
 
  resources :categories do
     resources :spends
  end
 
  devise_for :users
  root "splash_screens#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "splash_screens#index"
end
