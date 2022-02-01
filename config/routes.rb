Rails.application.routes.draw do
  root to: 'worships#index'
  resources :worships
end
