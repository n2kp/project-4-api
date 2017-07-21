Rails.application.routes.draw do

  get 'messages/index'

  get 'conversations/index'

  scope :api do
    post '/register', to: 'authentications#register'
    post '/login', to: 'authentications#login'

    resources :users
    resources :reviews
    resources :tenders
    resources :projects
    resources :conversations, only: [:index, :create] do
      resources :messages, only: [:index, :create]
    end
  end
end
