Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :new]
      resources :sessions

      post "/signup", to: "users#create"
      
      # get 'sessions/new'
      # post 'sessions/create'
      # get 'sessions/login'
      
    end
  end
end
