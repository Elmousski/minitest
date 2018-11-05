Rails.application.routes.draw do
   get '/', to: 'static#index', as: "root"
   get 'static/team', to: 'static#team'
   get 'static/contact', to: 'static#contact'
   
   get 'registration/new'
   get '/logout', to: 'registration#logout'
   get '/not_connected', to: 'static#not_connected'
   get '/invalid_login_password', to: 'static#invalid_login_password'
   post 'registration/create'
   get 'club', to: 'static#club'

  #resources :likes
  #resources :comments
  #resources :gossips
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
