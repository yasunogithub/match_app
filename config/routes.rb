Rails.application.routes.draw do
  namespace :teacher do
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end
  # get 'rooms/show'
  resources :rooms, only: [:index, :show, :create]
  devise_for :users
  resources :users, only: [:index, :show]
  resources :teachers, only: [:index, :show, :edit, :update]
  get 'reservations/index'

  root 'reservations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
