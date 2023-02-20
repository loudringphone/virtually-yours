Rails.application.routes.draw do
  get 'admins/index'
  get 'admins/new'
  get 'admins/edit'
  get 'admins/show'
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
