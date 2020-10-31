Rails.application.routes.draw do


    #devise-jwt said this step wasn't needed if rails is apo on but just in case:
    #root to:"home#index"

  # devise_for :users
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  
  
  
  
  
  
  
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
