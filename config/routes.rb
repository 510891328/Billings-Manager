Rails.application.routes.draw do
  resources :types, only: [:new, :create, :destroy]
  resources :billings, except: [:index]
  resources :users, only: [:show, :update, :edit, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
