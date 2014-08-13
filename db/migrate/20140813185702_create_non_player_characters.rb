class CreateNonPlayerCharacters < ActiveRecord::Migration
  def change
    create_table :non_player_characters do |t|
      t.integer :x_coordinate, default: rand(38), null: false
      t.integer :y_coordinate, default: rand(10), null: false

      t.timestamps null: false
    end
  end
end
