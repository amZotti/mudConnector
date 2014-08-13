class CreateNonPlayerCharacters < ActiveRecord::Migration
  def change
    create_table :non_player_characters do |t|
      t.integer :x_coordinate, null: false
      t.integer :y_coordinate, null: false

      t.timestamps null: false
    end
  end
end
