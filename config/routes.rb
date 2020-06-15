Rails.application.routes.draw do
  
  get '/' => 'static#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
 
  resources :users

  resources :categories, only: [:new, :index, :create]
  resources :comments
  
  resources :workouts do
    resources :comments, only: [:new, :index]
  end

end
