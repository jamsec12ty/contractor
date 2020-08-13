Rails.application.routes.draw do

  root to: 'pages#welcome'
  get '/home' => 'pages#home'

  # Session Routes: ##################

  get '/login' => 'session#new' # login form

  post '/login' => 'session#create' # form submits here, do authentication & create session & redirect, or show form with errors

  delete '/login' => 'session#destroy' # Logout, i.e. delete session for this user

  resources :users

  resources :venues

  resources :incidents

  get '/dashboard' => 'users#dashboard'
end
