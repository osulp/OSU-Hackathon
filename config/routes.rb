Rails.application.routes.draw do

  get 'request/index'
  get "/login", :to => 'sessions#new'
  get "/logout", :to => 'sessions#logout'

  get 'request/submitted', :to => "request#submitted_requests"
  get 'request/approve/:id', :to => "request#approve_requests"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  root 'home#index'
  resources :welcomes

  resources :request

  devise_for :users
end
