Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      resources :contracts, only: [:index, :create, :edit, :update, :destroy]
      # get '/example', to: "example#action"
    end
  end


end
