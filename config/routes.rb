Rails.application.routes.draw do
  
  resources :units
  resources :categories
  resources :brands
  resources :brands
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