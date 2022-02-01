Rails.application.routes.draw do
  root to: 'worships#index'
  resources :worships, only: [:index, :new, :create, :destroy]
end
