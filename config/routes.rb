Rails.application.routes.draw do

  root :to => 'pages#home'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :users, :only => [:show]
  get '/admin' => 'users#admin'

  resources :hikes do
    resources :reviews, :except => [:index, :show]
  end

  post '/search' => 'hikes#search'

  resources :contact_forms, :only => [:new, :create]

end
