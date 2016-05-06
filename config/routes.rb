Rails.application.routes.draw do
  get 'request/index'

  root 'home#index'

  resources :request

  devise_for :users
end
