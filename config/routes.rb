Rails.application.routes.draw do
  
  get "home/index"
  root "home#index"

  resources :tickets
  resources :escavators

  namespace :api do
    namespace :v1 do
      resources :tickets, only: [:create]
    end
  end
end
