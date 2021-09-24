Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'top#index'
  resources :memories
  resources :users, only: %i[new create]
  post '/memories/:id/toggle' => 'memories#toggle'
  devise_for :users
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
