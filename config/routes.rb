 Rails.application.routes.draw do
 
  #root url
  root 'static_pages#home'

  #static pages
  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  #users
  get '/signup', to: 'users#new'

  get '/users', to: 'users#index'

  post '/signup', to: 'users#create'

  resources :users

  #login
  get '/login', to: 'sessions#new'
  
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  #account activation
  resources :account_activations, only: [:edit]


  
end
