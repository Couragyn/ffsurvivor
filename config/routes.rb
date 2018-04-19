Rails.application.routes.draw do
	get 'welcome/index'

  resources :players

	get '/signup' => 'users#new'
	post '/users' => 'users#create'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

	resources :leagues

	get '/leagues/:league_id/join' => 'leagues#new_join'
	post '/leagues/:league_id/join' => 'leagues#create_join', :as => 'join'

	get '/leagues/:league_id/team/:team_id' => 'leagues#team', as: :team
	post '/leagues/:league_id/team/:team_id' => 'leagues#team', as: :post_team


	get '/leagues/:league_id/team/:team_id/weekly/:week_id' => 'leagues#weekly', as: :weekly
	post '/leagues/:league_id/team/:team_id/weekly/:week_id' => 'leagues#weekly', as: :set_weekly

  post '/teams/:team_id' => 'teams#destroy'

  post '/players/repopulate' => 'players#populate_db'

	root 'welcome#index'
end
