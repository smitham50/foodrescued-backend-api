Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :sessions

      post "/signup", to: "users#create"
      get "/users", to: "users#index"
      
      # get 'sessions/new'
      # post 'sessions/create'
      # get 'sessions/login'
      
    end
  end
end
