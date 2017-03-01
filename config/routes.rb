Rails.application.routes.draw do
  
  resources :items
  resources :proveedors
  resources :units
  resources :categories
  resources :brands
 
get '/brands_suggestion', to: 'brands_suggestion#index'
get '/validate_suggested_brand', to: 'validate_suggested_brand#index'

  root 'pages#index'
  get 'pages/index'
  get 'profile', to: 'pages#show'
  get '/secret', to: 'pages#index', as: :secret
  
 
resources :users, only: [:new, :create]
get '/sign_up', to: 'users#new', as: :sign_up




resources :sessions, only: [:new, :create, :destroy]
get 'sessions/new'
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
get '/log_in', to: 'sessions#new', as: :log_in
delete '/log_out', to: 'sessions#destroy', as: :log_out
delete 'logout', to: 'sessions#destroy'
end