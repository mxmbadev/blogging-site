Rails.application.routes.draw do

  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]

  resources :welcome

  get 'home/home'
  root 'home#home'

  get '*path' => redirect('/')
end
