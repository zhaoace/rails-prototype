class User < ActiveRecord::Base
  attr_accessible :age, :name

  has_many :user_game_relationships
  has_many :games, :through => :user_game_relationships

end
