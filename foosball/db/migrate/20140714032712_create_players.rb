class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :sapid
      t.string :email
      t.string :position
      t.boolean :judge

      t.timestamps
    end
  end
end
