Rails.application.routes.draw do
  namespace :students do
    get 'sign_in/index'
  end
  get 'signup/index'
  get 'signin/index'
  get 'project3/index'
  get 'project2/index'
  get 'project1/index'
  get 'home/index'
  get '/students/sign_in'
  devise_for :users
  root to: 'home#index'
  resources :posts
  resources :project1
  resources :project2
  resources :project3
  resources :signin
  resources :signup
  resources :sign_in
  #post 'students/sign_in' to: 'signin#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
