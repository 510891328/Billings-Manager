Rails.application.routes.draw do
  resources :types, only: [:new, :create, :destroy]
  resources :billings, except: [:index]
  resources :users, only: [:new, :create, :show, :update, :edit, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
