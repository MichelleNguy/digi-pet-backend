Rails.application.routes.draw do
  resources :user_items, only: [:create, :destroy]
  resources :items, only: [:show, :index]
  resources :shops, only: [:show, :index]
  resources :pets
  resources :users, only: [:show, :create, :update, :destroy]
  resources :login, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
