Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :order_items
      resources :orders
      resources :users
      resources :menu_items
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
