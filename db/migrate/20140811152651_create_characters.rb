class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id, null: false
      t.integer :x_coordinate, default: 0, null: false
      t.integer :y_coordinate, default: 0, null: false
      t.timestamps null: false
    end
    add_index :characters, :user_id
  end
end
