Rails.application.routes.draw do
  root(to: 'pages#home')
  get 'about', to: 'pages#about'
  get 'articles/funny', to: 'articles#funny'
  resources :articles
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :friend_requests
  resources :friendships
  resources :comments
  resources :likes
end
