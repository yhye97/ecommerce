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
  get '/products/:product_id'=> 'products#show'
  post '/products/upload'
  post '/products/create'
  get '/product_test/new'
  post '/product_test/upload'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
