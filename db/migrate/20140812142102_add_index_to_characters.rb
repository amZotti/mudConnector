class AddIndexToCharacters < ActiveRecord::Migration
  def change
    add_index :characters, :user_id
  end
end
