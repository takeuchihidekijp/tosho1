Rails.application.routes.draw do

  get 'doc_groups/new'

  get 'manages', to: 'manages#home'

  get 'take_pages', to: 'take_pages#home'

  get 'iine',  to: 'iine#new'

  root 'top_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :docs
<<<<<<< HEAD
  resources :doc_groups
  
#  resources :users, only: [:create]
   resources :users
=======
  resources :users
>>>>>>> remotes/origin/master
  resources :sessions, only: [:new, :create, :destroy]
end
