class TeamsController < ApplicationController

	def destroy
	  @team = Team.find(params[:team_id])
	  @team.destroy
	  redirect_back(fallback_location: root_path)
	end

 end