Launchpadyardsale::Application.routes.draw do

  root 'products#index'

  resources :orders
  resources :products
end
