Rails.application.routes.draw do

  get 'sessions/new'

  resources :users

  get 'users/new'

  root 'static_pages#home'

  get '/home', to: 'static_pages#home', as: 'home'

  get '/help', to: 'static_pages#help', as: 'help'

  get '/about', to: 'static_pages#about', as: 'about'

  get  '/contact', to: 'static_pages#contact', as: 'contact'

  get '/signup', to: 'users#new', as: 'signup'

  post '/signup',  to: 'users#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
