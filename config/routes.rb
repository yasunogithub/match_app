Rails.application.routes.draw do
  # get 'rooms/show'
  resources :rooms, only: [:show, :create]
  devise_for :users
  get 'reservations/index'

  root 'reservations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
