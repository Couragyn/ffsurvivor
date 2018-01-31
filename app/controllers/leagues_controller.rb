class LeaguesController < ApplicationController
	def new
		size_options = Array(2 .. 50)
		@size_options = size_options.unshift("unlimited")
	end

	def create
		render plain: params[:league].inspect
	end
end
