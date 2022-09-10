Rails.application.routes.draw do
  get 'products/index'
  devise_for :users
  root to: "products#index" # And remove the generated route `products/index`
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [:new, :create]
end
