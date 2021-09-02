Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'home#index'
  resources :memories
  resources :users, only: %i[new create]
  post '/memories/:id/toggle' => 'memories#toggle'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
