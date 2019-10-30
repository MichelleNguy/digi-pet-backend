Rails.application.routes.draw do
  resources :user_items
  resources :items
  resources :shops
  resources :pets
  resources :users
  resources :login, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
