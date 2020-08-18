Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'


  concern :favoritable do |options|
    shallow do
      post '/favorite', { to: "favorites#create", on: :member }.merge(options)
      delete '/favorite',  { to: "favorites#destroy", on: :member }.merge(options)
    end
  end 


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dashboard, only: :index
      resources :swings, only: [:index, :show]
      resources :search, only: :index
      resources :moodgalleries, only: :show do
        resources :recently_heards, only: :create
      end
      resources :favorites, only: :index

      resources :moodts, only: [] do
        concerns :favoritable, favoritable_type: 'Moodt'
      end
    end
  end
  get "*path", to: "home#index", :constraints => lambda{|req| req.path !~ /\.(png|jpg|js|css|json|mp3)$/ }
end