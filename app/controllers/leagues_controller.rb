class LeaguesController < ApplicationController
	def index
    	@leagues = League.all

	end

	def show
    	@league = League.find(params[:id])
  	end

	def new
	end

	def create
		@league = League.new(league_params)

		if @league.save
  			redirect_to @league
  		else
  			render 'new'
  		end
	end

	private
	  	def league_params
	    	params.require(:league).permit(:name, :limit)
	  	end
end
