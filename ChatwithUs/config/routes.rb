Rails.application.routes.draw do
  
  root 'chat_room#index'
  get 'login', to: 'sessions#new'
end
