Rails.application.routes.draw do
  resources :languages, only: [:index, :new, :create, :edit, :update]
  resources :courses, only: [ :new, :create, :edit, :update ]
  devise_for :users
  root to: 'pages#home'
  get '/versus', to: 'pages#start'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
