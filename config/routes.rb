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

  #resources :managements
  resources :users

  #resources :users, only: %i(new create) do
  #  collection do
  #    post :new, path: :new, as: :new, action: :back
  #    post :confirm
  #  end
  #end
  
  post  '/users/confirm', to: 'users#confirm'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
