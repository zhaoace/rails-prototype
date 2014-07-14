class Player < ActiveRecord::Base
    has_many :team_player_ships
    has_many :teams , :through => :team_player_ships
end
