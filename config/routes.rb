Rails.application.routes.draw do
  get 'sessions/new' => 'sessions#new'

  post 'sessions/new' => 'sessions#create'

  get 'users/new' => 'users#new'

  post 'users/new' => 'users#create'

  post 'logout' => 'sessions#destroy'

  resources :users, only: [:index, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
