Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :products
  resources :order_items
  resource :carts, only: [:show]
  
  root "home#index"
  
  get 'admins/sign_up'=>'/home/index'
  get '/users/sign_up'=> '/home/index'
  get '/products' => "products#new"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
