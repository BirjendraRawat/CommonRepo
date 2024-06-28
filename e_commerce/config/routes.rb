Rails.application.routes.draw do

  get 'signup', to: 'admins#new'
  get 'admins', to: 'admins#create'
  resources :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
