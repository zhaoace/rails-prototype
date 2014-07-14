class Team < ActiveRecord::Base
    has_many :team_player_ships
    has_many :players , :through => :team_player_ships
end
