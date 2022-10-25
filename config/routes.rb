Rails.application.routes.draw do
  resources :usuarios
  resources :user_sessions
  resources :transacoes
  root "home#index"
end
