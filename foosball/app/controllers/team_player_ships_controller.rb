class TeamPlayerShipsController < ApplicationController
  before_action :set_team_player_ship, only: [:show, :edit, :update, :destroy]

  # GET /team_player_ships
  # GET /team_player_ships.json
  def index
    @team_player_ships = TeamPlayerShip.all
  end

  # GET /team_player_ships/1
  # GET /team_player_ships/1.json
  def show
  end

  # GET /team_player_ships/new
  def new
    @team_player_ship = TeamPlayerShip.new
  end

  # GET /team_player_ships/1/edit
  def edit
  end

  # POST /team_player_ships
  # POST /team_player_ships.json
  def create
    @team_player_ship = TeamPlayerShip.new(team_player_ship_params)

    respond_to do |format|
      if @team_player_ship.save
        format.html { redirect_to @team_player_ship, notice: 'Team player ship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_player_ship }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_player_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_player_ships/1
  # PATCH/PUT /team_player_ships/1.json
  def update
    respond_to do |format|
      if @team_player_ship.update(team_player_ship_params)
        format.html { redirect_to @team_player_ship, notice: 'Team player ship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_player_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_player_ships/1
  # DELETE /team_player_ships/1.json
  def destroy
    @team_player_ship.destroy
    respond_to do |format|
      format.html { redirect_to team_player_ships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_player_ship
      @team_player_ship = TeamPlayerShip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_player_ship_params
      params.require(:team_player_ship).permit(:team_id, :player_id)
    end
end
