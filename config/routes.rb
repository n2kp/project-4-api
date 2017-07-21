Rails.application.routes.draw do

  scope :api do
    resources :users
    resources :reviews
    resources :tenders
    resources :projects
  end
end
