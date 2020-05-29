Rails.application.routes.draw do
  
  get '/' => 'static#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
 
  resources :users
  resources :moves
  
  resources :workouts do
    resources :moves
  end
end
