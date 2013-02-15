Mylinks::Application.routes.draw do
  
  root :to => 'pages#home'

  resources :links
  get "pages/home"

  devise_for :users

  match 'users/:id' => 'users#show', as: 'user'
  match ':username' => 'users#show', as: 'profile'
  # match "/users(/:id)", :controller => "users", :action => "show"

  

  get "about" => "pages#about"




end
