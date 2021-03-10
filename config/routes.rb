Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/chatroom', to: 'chatroom#index'
  resources :messages, only: [:create]
  root 'home#index'

  mount ActionCable.server, at: '/cable'
end
