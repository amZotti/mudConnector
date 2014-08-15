class AddDescriptionToNonPlayerCharacters < ActiveRecord::Migration
  def change
    add_column :non_player_characters, :name, :string, null: false, default: "Frieza henchman"
  end
end
