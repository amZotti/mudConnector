class Map
  def initialize(character)
    @character = character
    @non_player_character = NonPlayerCharacter.first
  end

  def display
    terrain = duplicate_world
    mark_character_coordinates(@character,terrain)
    mark_character_coordinates(@non_player_character,terrain)
    map_terrain(terrain)
  end

  def duplicate_world
    Marshal.load(Marshal.dump(WORLD.terrain))
  end

  def map_terrain(terrain)
    html_map = ""
    terrain.each do |y_axis_rooms|
      y_axis_rooms.each do |x_axis_rooms|
        x_axis_rooms.each do |room|
          html_map += room
        end
      end
      html_map += "\n"
    end
    html_map
  end

  def mark_character_coordinates(character,terrain)
    terrain[character.y_coordinate][character.x_coordinate][0][0] = "*"
  end
end
