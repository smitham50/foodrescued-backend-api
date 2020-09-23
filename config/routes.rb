Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do

      post "/signup" => "users#create"
      get "/users" => "users#index"
      
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
      
    end
  end
end
