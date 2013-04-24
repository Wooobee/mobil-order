MobilOrder::Application.routes.draw do
  resources :orders


  resources :line_items


  resources :carts


  resources :products


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
  match '/cart_update' => "line_items#update"
end