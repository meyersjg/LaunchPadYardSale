Launchpadyardsale::Application.routes.draw do

  root 'products#index'

  devise_for :admins
  post "orders/create"

  resources :orders
  resources :products
end
