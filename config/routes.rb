Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/chatroom', to: 'chatroom#index'
  root 'home#index'
end
