Rails.application.routes.draw do
  get '/' => 'users#home'
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/signup' => "users#new"
  post '/signup' => "users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
