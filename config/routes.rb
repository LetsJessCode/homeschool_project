Rails.application.routes.draw do
  # resources :users
  root to: "static#welcome" 

  get "/signup", to: "users#new", as: "signup" 
  post "/signup", to: "users#create"

  resources :subjects
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
