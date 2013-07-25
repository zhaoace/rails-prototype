class UserGameRelationship < ActiveRecord::Base
  attr_accessible :game_id, :relationship, :user_id

  belongs_to :user
  belongs_to :game

end
