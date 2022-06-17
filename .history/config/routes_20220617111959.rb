Rails.application.routes.draw do
  root(to: 'pages#home')
  get 'about', to: 'pages#about'
  get 'articles/funny', to: 'articles#funny'
  resources :articles
end
