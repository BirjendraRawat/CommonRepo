Rails.application.routes.draw do

  devise_for :admins
  devise_scope :admin  do
  #   get  'admins/new' => 'admins#new'
    post 'admins/create' => 'admins#create'
  end
  resources :admins
  root 'users#index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
