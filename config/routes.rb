Rails.application.routes.draw do

  get 'iine',  to: 'iine#new'

  get 'doc',  to: 'doc#new'

  get 'users/new'

  root 'top_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
