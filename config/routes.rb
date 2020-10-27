Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :users
  resources :menu_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
