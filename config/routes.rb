Rails.application.routes.draw do
  resources :housewives, only: [:index, :show]
end
