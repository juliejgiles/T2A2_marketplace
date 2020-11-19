Rails.application.routes.draw do
  
  resources :cart_items
  resources :carts
  resources :stickers
  
  #Creates a nested routes where the messages route sits within the conversation route
  resources :conversations do
    resources :messages
  end

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root to: 'stickers#index'
  get '*path', to: 'stickers#index', via: :all

  
end
