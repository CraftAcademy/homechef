Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  root controller: :landing, action: :index
  resources :dishes, only: [:index, :show]
  resources :checkout, only: [:index]
  resources :charges, only: [:create]
  post :add_to_order, controller: :orders, action: :add_to_order
  post :remove_from_order, controller: :checkout, action: :delete
end
