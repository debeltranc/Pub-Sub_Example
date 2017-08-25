Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/show'

  get 'messages/_message'

  get 'chat_rooms/index'

  get 'chat_rooms/new'

  get 'chat_rooms/create'

  get 'chat_rooms/show'

  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
