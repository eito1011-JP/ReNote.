Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'home#index'
  # get 'memories', to: 'memories#index'
  # get 'memories/new', to: 'memories#new'
  # post 'memories/create' to: 'memories#create'
 
  resources :memories
  # root to: 'memories#index'
  resources :users, only: %i[new create]
  

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
