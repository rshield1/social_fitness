Rails.application.routes.draw do

  resources :categories
  resources :user_workouts
  root 'static#index'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
 

  
  resources :comments
  resources :posts
  resources :workouts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
