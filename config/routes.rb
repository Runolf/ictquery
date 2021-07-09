Rails.application.routes.draw do
  
  devise_for :users
  resources :portfolio
  get '/profile', to: 'profile#index'
  get '/profile/uploadcv', to: 'profile#uploadcv'
  get '/profile/sollicitations', to: 'profile#sollicitations'
  get '/profile/accountsettings', to: 'profile#accountsettings'
  get '/', to: 'static#home'

  get '/about', to: 'static#about'
  
  get '/jobs', to: 'jobs#index'

  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :jobs 

end