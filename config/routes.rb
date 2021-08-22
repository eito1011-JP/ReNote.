Rails.application.routes.draw do
  get 'home', to:'home#index'
  get 'home/new', to: 'home#new'
  resources :posts 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
