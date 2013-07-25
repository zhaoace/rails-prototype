class Game < ActiveRecord::Base
  attr_accessible :name, :platform

  has_many :user_game_relationships
  has_many :users, :through => :user_game_relationships

end
