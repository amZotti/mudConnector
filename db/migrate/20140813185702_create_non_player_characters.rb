class CreateNonPlayerCharacters < ActiveRecord::Migration
  def change
    create_table :non_player_characters do |t|
      t.integer :x_coordinate
      t.integer :y_coordinate

      t.timestamps null: false
    end
  end
end
