Rails.application.routes.draw do
  get 'memory', to: 'memory#index'
  get 'memory/create', to: 'memory#create'
  resources :memories, :creates
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
