Rails.application.routes.draw do
  get 'home', to: 'static_pages#home', as: 'home'
  get 'about', to: 'static_pages#about', as: 'about'

  devise_for :users

  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root to: 'static_pages#home'
end
