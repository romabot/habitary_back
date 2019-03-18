Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :days
      end    
      post '/login', to: 'auth#create'
       post '/register', to: 'users#create'
      get '/profile', to: 'users#profile'
      resources :days
      resources :dayskills
      resources :skills
    end
  end
end
