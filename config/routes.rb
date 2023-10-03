Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions:'users/sessions',
    registrations: 'users/registrations'
  }
  get 'welcome/index'
  resources :comments
  resources :galleries

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
