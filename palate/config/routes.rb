Rails.application.routes.draw do
  root "recipes#index"
  
  get '/recipes/query' => 'recipes#query'
  resources :recipes
  resources :ingredients
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
