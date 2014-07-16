Launchpadyardsale::Application.routes.draw do

  root 'products#index'

  devise_for :admins

  resources :orders
  resources :products
end
