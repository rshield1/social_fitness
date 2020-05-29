Rails.application.routes.draw do

  resources :categories
  resources :posts
  get '/' => 'static#index'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
 

  
  resources :comments
  resources :users
  resources :workouts do 
    resources :posts, only: [:new, :index]
  end
end
