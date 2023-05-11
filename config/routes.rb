Rails.application.routes.draw do
  get 'home/about'
  get 'home/contact'
  get 'home/location'
  get 'home/our_coffee'
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :farmerberries
  resources :farmers
  resources :factoryfarmberries
  resources :workers
  resources :expenditures
  resources :factoryfarms
  resources :factories
  resources :coffeberries
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
