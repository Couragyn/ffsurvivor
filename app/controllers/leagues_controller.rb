class LeaguesController < ApplicationController
	def index
  	@leagues = League.all
  	@user_leagues = League.select("leagues.*, leagues.name as league_name").joins(:teams).select("teams.name as team_name").where("teams.user_id = ?", session[:user_id])
    	
	  respond_to do |format|
	    format.html
	    format.json { render json: LeaguesDatatable.new(view_context) }
	  end
	end

	def show
    	@league = League.find(params[:id])
    	@commissioner = User.find_by(id: @league.owner_id)
    	@teams_in_league = Team.select("teams.*").where(:league_id => params[:id]).joins(:user).select("users.*, users.id as user_id").where("users.id = teams.user_id") 
  	end

	def new
	end

	def create
		@league = League.new(name: params["name"], limit: params["limit"], is_private: params["is_private"], password: params["password"], owner_id: session[:user_id], is_payed: 0, league_type: params["league_type"])

		if @league.save
			redirect_to @league
		else
			render 'new'
		end
	end

	def new_join
		@league = League.find(params[:id])
		render 'new_join'
	end

	def create_join
		@join_params = params[:join_league]
		@league = League.find(params[:id])
		@team = Team.new(name: @join_params["name"], user_id: session[:user_id], league_id: params[:id])

		if ((@league.is_private && @league.password == @join_params["password"]) || !@league.is_private) 
			if @team.save
				flash[:notice] = 'User Added.'
				redirect_to @league
			else
				redirect_to root_path
			end
		else
			redirect_to root_path
		end

	end

end