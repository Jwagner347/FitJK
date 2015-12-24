JeffFit::Application.routes.draw do
  resources :exercises
  resources :programs

  root 'pages#home'

  get '/home', to: 'pages#home'

  resources :users, except: [:new]

  get '/register', to: 'users#new'

  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'


end
