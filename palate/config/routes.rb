Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  root "recipes#index"
  resources :recipes
  resources :ingredients
=======
  resources :users

=======
  root "recipes#index"
>>>>>>> 0c1869ee4ff1d2262e56ae736234d549360dffe3
=======
  root "recipes#index"
>>>>>>> 53b72995e81cf397b8c902e5d9fad434f2e099c9
  resources :recipes
  resources :ingredients
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 0f806e68899de19a9a5bed25f4c758b14ee7d0b0

=======
>>>>>>> 0c1869ee4ff1d2262e56ae736234d549360dffe3
=======
>>>>>>> 53b72995e81cf397b8c902e5d9fad434f2e099c9
end
