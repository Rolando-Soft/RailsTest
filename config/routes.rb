Rails.application.routes.draw do
  root to: 'meters#index' 
  resources :meters
end
