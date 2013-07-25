class CreateUserGameRelationships < ActiveRecord::Migration
  def change
    create_table :user_game_relationships do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :relationship

      t.timestamps
    end
  end
end
