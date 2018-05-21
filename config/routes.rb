Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      resources :contracts, only: [:index, :create, :edit, :update, :destroy]

      get '/login', to: "auth#login"
      post '/login', to: "auth#login"
      get '/get_user', to: "auth#get_user"
      post '/signup', to: "users#create"
    end
  end


end
