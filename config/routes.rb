Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'attractions#index'
  resources :users
  resources :attractions
  resources :rides
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'

  root 'attractions#index'

  resources :users
  resources :attractions
end
