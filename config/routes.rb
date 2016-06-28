Rails.application.routes.draw do

  root 'stores#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  get 'store_slug', to: 'stores#show', as: :store


  namespace :store, path: ':store_slug', as: :store do
    # get 'items', to: "items#index", as: :items
    # get 'items/:id', to: "items#show", as: :item
    resources :items, only: [:index, :show]
    # resources :orders, :only: [:index, :show]
    # haven't implemented this yet
  end
  # get 'store_slug/items', to: 'store/items#index', as: :store_items
  # get 'store_slug/items/:id', to: 'store/items#show', as: :store_item
  # if you remove the as: then you no longer have an helper or way to refer to it
end
