class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :judge
      t.string :score
      t.string :series
      t.string :cup

      t.timestamps
    end
  end
end
