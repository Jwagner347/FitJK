JeffFit::Application.routes.draw do
  resources :exercises
  resources :programs

  root 'pages#home'

  get '/home', to: 'pages#home'


end
