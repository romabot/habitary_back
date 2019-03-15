Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :days
      end
         
      resources :days
      resources :dayskills
      resources :skills
    end
  end
end
