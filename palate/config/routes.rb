Rails.application.routes.draw do
<<<<<<< HEAD
  root "recipes#index"
  resources :recipes
  resources :ingredients
=======
  resources :users

  resources :recipes

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
>>>>>>> 0f806e68899de19a9a5bed25f4c758b14ee7d0b0

end
