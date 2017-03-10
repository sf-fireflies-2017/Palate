Rails.application.routes.draw do
  root "application#index"
  resources :recipes
  resources :ingredients
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
