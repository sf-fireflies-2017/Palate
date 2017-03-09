Rails.application.routes.draw do
  resources :users

  resources :recipes

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
