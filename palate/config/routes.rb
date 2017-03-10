Rails.application.routes.draw do
  root "recipes#index"
<<<<<<< HEAD

  resources :recipes do 
  	resources :ratings, only: [:new, :create]
  end 
  
=======
  
  get '/recipes/query' => 'recipes#query'
  resources :recipes
>>>>>>> 22a12786676e109e68c7d6382e1da4bdfcc1ac67
  resources :ingredients
  resources :users


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
