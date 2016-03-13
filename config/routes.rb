Rails.application.routes.draw do
  devise_for :stores, controllers: {registrations: "stores/registrations"}
  devise_for :users, controllers: {registrations: "users/registrations"}
  resources :users
  resources :stores


  root to: "users#index"
end
