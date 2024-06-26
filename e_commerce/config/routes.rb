Rails.application.routes.draw do

  root 'users#index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'signup', to: 'admins#new'
  get 'admins', to: 'admins#create'
  resources :admins
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
