Rails.application.routes.draw do
  root :to => 'users#home'

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
