class ChangeNonPlayerCharacters < ActiveRecord::Migration
  def change
    add_column :non_player_characters, :power_level, :integer, default: 300, null: false
    add_column :non_player_characters, :energy_level, :integer, default: 100, null: false
  end
end
