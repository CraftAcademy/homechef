Rails.application.routes.draw do
  devise_for :users, path: 'dishes'
	resources :users do
		resources :dishes
	end
  root controller: :landing, action: :index
  resources :dishes, only: [:index, :show]
  get 'my_dishes', to: :my_dishes, controller: 'dishes'
  resources :checkout, only: [:index]
  resources :charges, only: [:create]
  post :add_to_order, controller: :orders, action: :add_to_order
  post :remove_from_order, controller: :checkout, action: :delete
end
