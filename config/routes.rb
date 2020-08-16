Rails.application.routes.draw do
  # resources :users
  root to: "static#welcome" 

  get "/signup", to: "users#new", as: "signup" 
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy", as: "logout"
  
    resources :users, only: [] do
      resources :students
  end 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
