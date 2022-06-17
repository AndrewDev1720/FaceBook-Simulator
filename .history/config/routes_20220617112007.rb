Rails.application.routes.draw do
  root(to: 'pages#home')
  get 'about', to: 'pages#about'
  get 'article/funny', to: 'articles#funny'
  resources :articles
end
