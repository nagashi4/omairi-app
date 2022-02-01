Rails.application.routes.draw do
  resources :worships, only: :index
end
