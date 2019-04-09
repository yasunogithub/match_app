Rails.application.routes.draw do
  # get 'rooms/show'
  resources :rooms, only: [:index, :show, :create]
  devise_for :users, module: :users
  devise_for :teachers, module: :teachers
  resources :users, only: [:index, :show]
  resources :teachers, only: [:index, :show]
  get 'reservations/index'

  root 'reservations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
