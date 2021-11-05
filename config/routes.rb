Rails.application.routes.draw do
  resources :housewives, only: [:index, :show]
  root to: 'home#index'
end
