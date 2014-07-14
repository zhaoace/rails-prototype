class CreateTeamPlayerShips < ActiveRecord::Migration
  def change
    create_table :team_player_ships do |t|
      t.integer :team_id
      t.integer :player_id

      t.timestamps
    end
  end
end
