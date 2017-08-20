Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/contact' => 'pages#contact'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/admin' => 'users#admin'

  resources :hikes do
    resources :reviews, :except => [:index, :show]
  end

  post '/search' => 'hikes#search'

end
