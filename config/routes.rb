Rails.application.routes.draw do
  resources :products
  resources :carts do
    resources :cart_items
  end

  

  # get '/cart', to: 'cart#index'
  # post '/cart', to: 'cart#create'
  # get '/cart/new', to: 'cart#new', as: "new_Cart"
  # get '/cart/:id', to: 'cart#show', as: 'Cart'
  # get '/cart/:cart_id/new', to: 'cart'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
