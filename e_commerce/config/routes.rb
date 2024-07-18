Rails.application.routes.draw do

  devise_for :admins
  devise_scope :admin  do
    post 'admins/create' => 'admins#create'
  end
  resources :admins
  root 'users#index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get '/men', to: 'static_pages#men'
  get '/women', to: 'static_pages#women'
  get '/kids', to: 'static_pages#kids'
  get '/home', to: 'static_pages#home_living'
  get '/beauty', to: 'static_pages#beauty'
  get '/electronics', to: 'static_pages#electronics'
  get 'signup', to: 'admins#new'
  get 'admins', to: 'admins#create'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
