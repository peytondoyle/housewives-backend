Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do get 'housewives', to: 'housewives#index'
  end
end
