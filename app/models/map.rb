class Map
  def initialize(character)
    @character = character
  end

  def display
    terrain = duplicate_world
    mark_character_coordinates(terrain)
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

  def mark_character_coordinates(terrain)
    terrain[@character.y_coordinate][@character.x_coordinate][0][0] = "*"
  end
end
