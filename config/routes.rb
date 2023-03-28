Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chatroom#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#login"
  get "chatroom", to: "chatroom#show"
  post "message", to: "message#create"


end
