Rails.application.routes.draw do
  resources :dealerships
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "cars#index"
  get "login" => "login#index"

  #cars
  resources :cars

end
