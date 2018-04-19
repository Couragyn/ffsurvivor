class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def populate_db
    Qb.delete_all
    Rb.delete_all
    Wr.delete_all
    Te.delete_all
    K.delete_all
    Def.delete_all

    qb_sql = "Select * from player where position = 'QB';"
    qb_array = ActiveRecord::Base.connection.execute(qb_sql)
    qb_array.each do |player|
      @player = Qb.new(key: player["player_id"], name: player["full_name"], team: player["team"])
      if @player.save
      else
        puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
      end
    end

    rb_sql = "Select * from player where position = 'RB';"
    rb_array = ActiveRecord::Base.connection.execute(rb_sql)
    rb_array.each do |player|
      @player = Rb.new(key: player["player_id"], name: player["full_name"], team: player["team"])
      if @player.save
      else
        puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
      end
    end

    wr_sql = "Select * from player where position = 'WR';"
    wr_array = ActiveRecord::Base.connection.execute(wr_sql)
    wr_array.each do |player|
      @player = Wr.new(key: player["player_id"], name: player["full_name"], team: player["team"])
      if @player.save
      else
        puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
      end
    end

    te_sql = "Select * from player where position = 'TE';"
    te_array = ActiveRecord::Base.connection.execute(te_sql)
    te_array.each do |player|
      @player = Te.new(key: player["player_id"], name: player["full_name"], team: player["team"])
      if @player.save
      else
        puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
      end
    end

    k_sql = "Select * from player where position = 'K';"
    k_array = ActiveRecord::Base.connection.execute(k_sql)
    k_array.each do |player|
      @player = K.new(key: player["player_id"], name: player["full_name"], team: player["team"])
      if @player.save
      else
        puts "Failed to add. name: "+player["Name"]+", id: "+player["FantasyPlayerKey"]
      end
    end

    def_sql = "Select * from team;"
    def_array = ActiveRecord::Base.connection.execute(def_sql)
    def_array.each_with_index do |player, index|
      if player["team_id"] === "JAC" || player["team_id"] === "SD" || player["team_id"] === "UNK" || player["team_id"] === "STL"
      else
        @full_name = player["city"] + " " + player["name"]
        @player = Def.new(key: "d"+index.to_s, name: @full_name, team: player["team_id"])
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
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      # params.require(:player).permit(:key, :name, :team, :position, :adp, :adpppr, :bye)
    end
end
