Rails.application.routes.draw do

  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"
  
  get "about", to: "about#index"
  
  get "/", to: "home#index"
  
end
