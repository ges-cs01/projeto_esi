Rails.application.routes.draw do
  resources :usuarios
  root "home#index"
end
