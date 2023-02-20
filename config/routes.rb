Rails.application.routes.draw do

  resources :subscribers


  root :to => 'pages#home'
  get '/newsletter' => 'subscribers#newsletter'
  get '/users' => 'pages#users'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
