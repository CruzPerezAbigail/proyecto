Rails.application.routes.draw do
  resources :reportes
  resources :solicituds
  resources :mantenimientos
  resources :insumos
  resources :herramienta
  resources :materiales
  
  resources :equipo12
  resources :areas
  resources :marcas
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



