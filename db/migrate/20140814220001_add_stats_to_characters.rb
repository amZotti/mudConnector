class AddStatsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :power_level, :integer, default: 300, null: false
    add_column :characters, :energy_level, :integer, default: 100, null: false
  end
end
