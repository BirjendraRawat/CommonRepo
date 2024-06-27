Rails.application.routes.draw do
  root 'users#index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'admins/index'
  get 'admins/new'
  get 'admins/create'
  get 'admins/edit'
  get 'admins/update'
  get 'admins/destroy'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
