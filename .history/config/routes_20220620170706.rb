Rails.application.routes.draw do
  root(to: 'pages#home')
  get 'about', to: 'pages#about'
  get 'articles/funny', to: 'articles#funny'
  resources :articles
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
  get 'login', to 'session#new'
  post 'login', to 

end
