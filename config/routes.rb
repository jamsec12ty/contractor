Rails.application.routes.draw do
  resources :users

  # Session Routes: ##################

  get '/login' => 'session#new' # login form

  post '/login' => 'session#create' # form submits here, do authentication & create session & redirect, or show form with errors

  delete '/login' => 'session#destroy' # Logout, i.e. delete session for this user

end
