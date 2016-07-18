Rails.application.routes.draw do

  get 'manages', to: 'manages#home'

  get 'take_pages', to: 'take_pages#home'

  get 'iine',  to: 'iine#new'

  root 'top_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :docs
  resources :users
  resources :doc_categories
  resources :users
  resources :iine, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
