Rails.application.routes.draw do
  resources :players
	get 'welcome/index'

	get '/signup' => 'users#new'
	post '/users' => 'users#create'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

	resources :leagues
	get '/leagues/:id/join' => 'leagues#new_join'
	post '/leagues/:id/join' => 'leagues#create_join', :as => 'join'

	get '/leagues/:id/weekly/:week_id' => 'leagues#weekly', as: :weekly
	post '/leagues/:id/weekly' => 'leagues#create_weekly'

  post '/teams/:team_id' => 'teams#destroy'

  post '/players/repopulate' => 'players#populate_db'

	root 'welcome#index'
end
