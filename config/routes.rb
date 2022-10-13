Rails.application.routes.draw do
  resources :usuarios
  resources :user_sessions
  root "home#index"
end
