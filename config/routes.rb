MobilOrder::Application.routes.draw do
  
  resources :categories


  get "static/imprint"

  get "static/how"
  
  get "static/partyservice"
  
  get "static/anfahrt"
  
  get "home/aktion"
  
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  

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
  
  match '/cart_update' => "line_items#update", :via => :post
  match '/add_drink' => "carts#add_drink"
  match '/list' => "categories#list"
end