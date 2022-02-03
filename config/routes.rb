Rails.application.routes.draw do
  devise_for :users
  root to: 'worships#index'
  resources :worships
end
