Rails.application.routes.draw do
  devise_for :users
  root to: 'worships#index'
  resources :worships do
    resources :comments, only: :create
  end
  
  resources :users, only: :show
end
