class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def populate_db
    require 'net/http'

    Qb.delete_all
    Rb.delete_all
    Wr.delete_all
    Te.delete_all
    K.delete_all
    Def.delete_all

    uri = URI('https://api.fantasydata.net/v3/nfl/stats/JSON/FantasyPlayers')

    request = Net::HTTP::Get.new(uri.request_uri)
    # Request headers
    request['Ocp-Apim-Subscription-Key'] = ENV['FANTASY_DATA_KEY']
    # Request body
    request.body = "{body}"

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
    end
    playerList = JSON.parse response.body

    playerList.each do |player|
      if player["Position"] === 'QB'
        @player = Qb.new(key: player["PlayerID"], name: player["Name"], team: player["Team"], position: player["Position"], adp: player["AverageDraftPosition"], adpppr: player["AverageDraftPositionPPR"], bye: player["ByeWeek"])
        if @player.save
        else
          puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
        end
      elsif player["Position"] === 'RB'
        @player = Rb.new(key: player["PlayerID"], name: player["Name"], team: player["Team"], position: player["Position"], adp: player["AverageDraftPosition"], adpppr: player["AverageDraftPositionPPR"], bye: player["ByeWeek"])
        if @player.save
        else
          puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
        end
      elsif player["Position"] === 'WR'
        @player = Wr.new(key: player["PlayerID"], name: player["Name"], team: player["Team"], position: player["Position"], adp: player["AverageDraftPosition"], adpppr: player["AverageDraftPositionPPR"], bye: player["ByeWeek"])
        if @player.save
        else
          puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
        end
      elsif player["Position"] === 'TE'
        @player = Te.new(key: player["PlayerID"], name: player["Name"], team: player["Team"], position: player["Position"], adp: player["AverageDraftPosition"], adpppr: player["AverageDraftPositionPPR"], bye: player["ByeWeek"])
        if @player.save
        else
          puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
        end
      elsif player["Position"] === 'K'
        @player = K.new(key: player["PlayerID"], name: player["Name"], team: player["Team"], position: player["Position"], adp: player["AverageDraftPosition"], adpppr: player["AverageDraftPositionPPR"], bye: player["ByeWeek"])
        if @player.save
        else
          puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
        end
      elsif player["Position"] === 'DEF'
        @player = Def.new(key: player["PlayerID"], name: player["Name"], team: player["Team"], position: player["Position"], adp: player["AverageDraftPosition"], adpppr: player["AverageDraftPositionPPR"], bye: player["ByeWeek"])
        if @player.save
        else
          puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
        end
      end      
    end

    redirect_to action: 'index'
  end

  # GET /players
  # GET /players.json
  def index
    @qb_players = Qb.order(:sort).all
    @rb_players = Rb.order(:sort).all
    @wr_players = Wr.order(:sort).all
    @te_players = Te.order(:sort).all
    @k_players = K.order(:sort).all
    @d_players = Def.order(:sort).all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:key, :name, :team, :position, :adp, :adpppr, :bye)
    end
end
