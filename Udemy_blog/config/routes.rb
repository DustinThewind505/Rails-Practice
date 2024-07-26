Rails.application.routes.draw do

  root "pages#home";

  # get "articles/new", to: 'articles#new'

  resources :articles, only: [:show, :index, :create, :new]

end
