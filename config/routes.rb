Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index', as: 'home'
  # get 'login', to: 'sessions#new'
  # post 'login', to: 'sessions#create'
  # get 'welcome', to: 'sessions#welcome'

  resources :sessions
  resources :blogs
  resources :articles
  resources :users, only: [:new, :create]
end
