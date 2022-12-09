Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "users#index"

  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show, :new, :create, :destroy] do 
      resources :comments, only: [:create, :new, :destroy] 
      resources :likes, only: [:create]
    end
  end

  # API ROUTES
  namespace :api do 
    namespace :v1 do 
      resources :users do 
        resources :posts do 
          resources :comments 
          resources :likes
        end
      end
    end
  end
   

end
