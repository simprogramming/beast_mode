Rails.application.routes.draw do
  get 'languages/index'
  get 'languages/new'
  get 'languages/edit'
  get 'languages/update'
  resources :courses, only: [ :new, :create, :edit, :update ]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
