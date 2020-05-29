Rails.application.routes.draw do

  resources :categories
  resources :user_workouts
  get '/' => 'static#index'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
 

  
  resources :comments
  resources :posts
  resources :users
  resources :workouts
end
