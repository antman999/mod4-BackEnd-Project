Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :favorites
    end
  end
  namespace :api do
    namespace :v1 do
      resources :pets
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'users#create'
      get '/autologin', to:'users#auto_login'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :lost_pets
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
