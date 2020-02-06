Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :welcome, only: [:index]
  resources :sessions, only: [:new, :create]
  post '/logout', to: 'sessions#destroy'
end
