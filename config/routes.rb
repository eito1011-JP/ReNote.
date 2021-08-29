Rails.application.routes.draw do
  # get 'memories', to: 'memories#index'
  # get 'memories/new', to: 'memories#new'
  # post 'memories/create' to: 'memories#create'
 
  resources :memories
  root to: 'memories#index'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
