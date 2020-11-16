Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :stickers
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  root to: 'stickers#index'

  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
