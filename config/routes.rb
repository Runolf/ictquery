Rails.application.routes.draw do
  
  devise_for :users
  get 'profile/index'
  get 'profile/uploadcv'
  get 'profile/sollicitations'
  get 'profile/accountsettings'
  
  get '/', to: 'static#home'

  get '/about', to: 'static#about'
  get '/portfoliomaker', to: 'static#portfoliomaker'
  get '/jobs', to: 'jobs#index'

  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
