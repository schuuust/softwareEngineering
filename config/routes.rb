Rails.application.routes.draw do
  get 'signin/index'
  get 'project3/index'
  get 'project2/index'
  get 'project1/index'
  get 'home/index'
  devise_for :users
  root to: 'home#index'
  resources :posts
  resources :project1
  resources :project2
  resources :project3
  resources :signin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
