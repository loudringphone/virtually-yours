Rails.application.routes.draw do


  get 'admins/index'
  get 'admins/new'
  get 'admins/edit'
  get 'admins/show'
  get 'users/index'
  get 'users/newsletter'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  
  root :to => 'pages#home'
  get '/newsletter' => 'users#newsletter'
  get '/users' => 'pages#users'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
