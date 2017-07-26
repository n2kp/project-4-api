Rails.application.routes.draw do

  scope :api do

    post 'oauth/facebook'
    post 'oauth/github'
    post '/register', to: 'authentications#register'
    post '/login', to: 'authentications#login'
    get '/refresh', to: 'authentications#refresh'

    resources :users
    resources :reviews
    resources :tenders
    resources :projects
    resources :conversations, only: [:index, :create, :show, :update] do
      resources :messages, only: [:index, :create, :update]
    end

  end

end
