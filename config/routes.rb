Rails.application.routes.draw do
 
 root 'authors#index'

 resources :books, only: [:index, :new, :create]
 resources :authors

 resources :users, only: [:new, :create]
end
