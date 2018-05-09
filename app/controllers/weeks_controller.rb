class WeeksController < ApplicationController
	def new
	end

	def set_weekly
		this_week = params[:week_id].to_i
		puts this_week
		this_team = params[:team_id].to_i

		Week.where(number: this_week, team_id: this_team).destroy_all

["created_at < ? AND prov_info_cycle_end_date = ?",
@currenttime, @cycle_date]

		qbs = params["qbs"]
		qbs.each do |player_id|
			@player_id = Week.new(number: this_week, team_id: this_team, player: player_id, position: "qb")
			if @player_id.save
				flash[:notice] = 'Player Added.'
				puts 'ye'
			else
				flash[:notice] = 'Player Not Added.'
				puts 'na'
			end
		end

		rbs = params["rbs"]
		rbs.each do |player_id|
			@rb = Week.new(number: this_week, team_id: this_team, player: player_id, position: 'rb')
			if @rb.save
				flash[:notice] = 'Player Added.'
			else
				flash[:notice] = 'Player Not Added.'
			end
		end

		wrs = params["wrs"]
		wrs.each do |player_id|
			@wr = Week.new(number: this_week, team_id: this_team, player: player_id, position: 'wr')
			if @wr.save
				flash[:notice] = 'Player Added.'
			else
				flash[:notice] = 'Player Not Added.'
			end
		end

		tes = params["tes"]
		tes.each do |player_id|
			@te = Week.new(number: this_week, team_id: this_team, player: player_id, position: 'te')
			if @te.save
				flash[:notice] = 'Player Added.'
			else
				flash[:notice] = 'Player Not Added.'
			end
		end

		ks = params["ks"]
		ks.each do |player_id|
			@k = Week.new(number: this_week, team_id: this_team, player: player_id, position: 'k')
			if @k.save
				flash[:notice] = 'Player Added.'
			else
				flash[:notice] = 'Player Not Added.'
			end
		end

		defs = params["defs"]
		defs.each do |player_id|
			@def = Week.new(number: this_week, team_id: this_team, player: player_id, position: 'def')
			if @def.save
				flash[:notice] = 'Player Added.'
			else
				flash[:notice] = 'Player Not Added.'
			end
		end
		
		redirect_to root_path
	end
end