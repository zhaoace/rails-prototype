class StaticsPublicController < ApplicationController



  def index
    @player = Player.new
    @team = Team.new
    @team.players << Player.new
    @team.players << Player.new

    @players = Player.all
    @teams = Team.all
    @games = Game.all




  end

  def result
  end

  def battle_map
  end

  def best_shooter
  end
end
