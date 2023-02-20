Rails.application.routes.draw do

  resources :subscribers


  root :to => 'pages#home'
  get '/newsletters' => 'subscribers#newsletters'
  get '/subscribers' => 'pages#subscribers'
  delete 'subscribers/:id/edit' => 'subscribers#destroy'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/login' => 'session#new'

end
