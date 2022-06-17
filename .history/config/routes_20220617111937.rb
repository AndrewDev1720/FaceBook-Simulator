Rails.application.routes.draw do
  root(to: 'pages#home')
  get 'about', to: 'pages#about'
  get 'funny', to: 'article#funny'
  resources :articles
end
