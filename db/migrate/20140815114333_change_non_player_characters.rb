class ChangeNonPlayerCharacters < ActiveRecord::Migration
  def change
    change_column :non_player_characters, :power_level, :integer, default: 300, null: false
    change_column :non_player_characters, :energy_level, :integer, default: 100, null: false
  end
end
