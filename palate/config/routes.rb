Rails.application.routes.draw do
  root "recipes#index"

  resources :recipes do 
  	resources :ratings, only: [:new, :create]
  end 
  
  resources :ingredients
  resources :users


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
