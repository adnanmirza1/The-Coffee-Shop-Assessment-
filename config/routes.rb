Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resources :items
  resources :inventories
  resources :orders
  resources :discounts
  resources :group_discounts
  resources :wallets
  resources :transactions
end
