Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/ne'
  get 'users/new'
  get 'admin_users/new'
  get 'managements/index'
  ##get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'

  resources :managements
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
