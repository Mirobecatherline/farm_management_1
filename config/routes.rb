Rails.application.routes.draw do

  get 'home/about'
  get 'home/contact'
  get 'home/location'
  get 'home/our_coffee'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }

  resources :farmerberries
  resources :farmers
  resources :factoryfarmberries
  resources :workers
  resources :expenditures
  resources :factoryfarms
  resources :factories
  resources :coffeberries
  resources :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 
    get 'dashboard', to: 'admins#dashboard'
    # get 'users', to: 'admins#users'
    # get 'posts', to: 'admins#posts'

  # post '/update_active_menu', to: 'admins#dashboard'  
  post '/update_active_menu', to: 'admins#update_active_menu'
  get '/signup_redirect' => 'factories#index'
  get '/signin_redirect' => 'factories#index'


  # Defines the root path route ("/")
   root "home#index"
end
