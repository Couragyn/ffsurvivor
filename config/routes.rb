Rails.application.routes.draw do
	get 'welcome/index'

  	get '/signup' => 'users#new'
  	post '/users' => 'users#create'

  	get '/login' => 'sessions#new'
  	post '/login' => 'sessions#create'
  	get '/logout' => 'sessions#destroy'

  	resources :leagues
  	get '/leagues/:id/join' => 'leagues#new_join'
  	post '/leagues/:id/join' => 'leagues#create_join', :as => 'join'

  	root 'welcome#index'
end
