Rails.application.routes.draw do
  get 'users/show'

  get 'home', to: 'static_pages#home', as: 'home'
  get 'about', to: 'static_pages#about', as: 'about'

  devise_for :users, :path_prefix => 'd'
  resources :users, :only => [:show, :edit, :update]

  match '/users',         to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',    via: 'get'

  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root to: 'static_pages#home'
end
