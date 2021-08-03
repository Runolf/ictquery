Rails.application.routes.draw do
  resources :cvuploads
  devise_for :users

  get '/profile', to: 'profile#index'
  get '/cvuploads', to: 'cvuploads#index'
  get '/sollicitations', to: 'sollicitations#index'
  get 'accountsettings', to: 'accountsettings#index'

  get '/accountsettings', to: 'profile#accountsettings'
  get '/', to: 'static#home'

  get '/search' => 'pages#search', :as => 'search_page'

  get '/about', to: 'static#about'
  
  get '/jobs', to: 'jobs#index'

  get '/portfolio', to: 'portfolio#personal'

  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :jobs 
  resources :searches
  resources :entreprises
  # resources :portfolios

end