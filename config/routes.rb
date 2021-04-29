Rails.application.routes.draw do

  resources :pictures 
root 'pictures#index'

resources :users, only: [:create, :show]
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  get '/logout', to: 'sessions#destroy'

get 'users/new' => 'users#new', as: :new_user
	
post 'users' => 'users#create'

# get '/login'     => 'sessions#new'
	
post '/login'    => 'sessions#create'
	
delete '/logout' => 'sessions#destroy' 

delete '/pictures/:id(.:format)' => 'pictures#destroy'
end
