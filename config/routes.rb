Rails.application.routes.draw do
  resources :products
  resources :carts

  get '/cart', to: 'cart#index'
  post '/cart', to: 'cart#create'
  get '/cart/new', to: 'cart#new', as: "new_Cart"
  get '/cart/:id', to: 'cart#show', as: 'Cart'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
