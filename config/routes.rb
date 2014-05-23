Rails.application.routes.draw do
  
  root "sessions#home"

  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "dashboard" => "users#dashboard"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :gists

end
