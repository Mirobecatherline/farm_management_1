Rails.application.routes.draw do
  devise_for :users
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
   root "farmers#index"
end
