Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :days
      resources :dayskills
      resources :skills
    end
  end
end
