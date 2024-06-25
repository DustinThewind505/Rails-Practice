Rails.application.routes.draw do

  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"
  
  get "about", to: "about#index"
  
  get "/", to: "home#index"
  delete "logout", to: "sessions#destroy"
  
end
