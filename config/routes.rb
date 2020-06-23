Rails.application.routes.draw do
  root to: 'pages#home'
  get '/versus', to: 'pages#versus'
  devise_for :users

  resources :languages, only: [:index, :show, :new, :create, :edit, :update]
  resources :courses, only: [ :new, :create, :edit, :update ]
  # resources :users, only: [:show, :edit, :update]
  resources :taking_courses, only: [:create, :edit, :update]
  resources :learning_languages, only: [:new, :create]
end
