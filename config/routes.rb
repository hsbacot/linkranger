Mylinks::Application.routes.draw do
  
  root :to => 'pages#home'

  resources :links
  get "pages/home"

  devise_for :users

  match 'users/:id' => 'users#show', as: 'user'
  # match 'users/:username' => 'users#show', as: 'username'

  

  get "about" => "pages#about"




end
