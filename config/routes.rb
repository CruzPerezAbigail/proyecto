Rails.application.routes.draw do
  resources :maintenances
  resources :equipment
  resources :resources
  resources :tools
  resources :physicals
  resources :shapes
  resources :licences
  resources :brands
  resources :departaments
  resources :zones
  resources :reportes
  resources :solicituds
 
  devise_for :usuarios, controllers: {
    usuarios: :sessions
  }

  resources :departamentos
  resources :licencia
  
  resources :usuarios
  get 'usuarios', to: 'usuarios#new'  

  resources :tipos
  root  'home#index'


end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



