class LeaguesController < ApplicationController
	def index
		session[:current_league] = nil
  	@leagues = League.all
  	@user_leagues = League.select("leagues.*, leagues.name as league_name").joins(:teams).select("teams.name as team_name").where("teams.user_id = ?", session[:user_id])
    	
	  respond_to do |format|
	    format.html
	    format.json { render json: LeaguesDatatable.new(view_context) }
	  end
	end

	def show
    	@league = League.find(params[:id])
    	session[:current_league] = params[:id]
    	@commissioner = User.find_by(id: @league.owner_id)
    	@teams_in_league = Team.select("teams.*, teams.id as team_id").where(:league_id => params[:id]).joins(:user).select("users.*, users.id as user_id").where("users.id = teams.user_id") 
  	end

	def new
	end

	def create
		@league = League.new(name: params["name"], limit: params["limit"], is_private: params["is_private"], password: params["password"], owner_id: session[:user_id], is_payed: 0, league_type: "ffa")

		if @league.save
			redirect_to @league
		else
			render 'new'
		end
	end

	def update
		league_params = params["league"]
		puts "blalba"
		puts league_params
		puts params["id"]
	  @league = League.find(params["id"])
	  @league.assign_attributes(name: league_params["name"], limit: league_params["limit"], is_private: league_params["is_private"], password: league_params["password"])

	  if @league.changed?
	  	puts 'chaaaaaaaaanged'
	    if @league.save
	      flash[:success] = true
	      redirect_to @league
	    else
	      render 'edit'
	    end
	  else
	  	redirect_to @league
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