Rails.application.routes.draw do
  
  devise_for :users
  get 'profile/index'
  get 'profile/uploadcv'
  get 'profile/sollicitations'
  get 'profile/accountsettings'
  
  get 'static/home'

  get '/jobs', to: 'jobs#index'

  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
