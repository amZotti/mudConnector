class Map

  def initialize(character)
    @character = character
  end

  def display
    map_of_terrain = Marshal.load(Marshal.dump(WORLD.terrain))
    mark_character_coordinates(map_of_terrain)
    html_map = ""
    map_of_terrain.each do |y_axis_rooms|
      y_axis_rooms.each do |x_axis_rooms|
        x_axis_rooms.each do |room|
          html_map += room
        end
      end
      html_map += "\n"
    end
    html_map
  end

  def mark_character_coordinates(map_of_terrain)
    map_of_terrain[@character.y_coordinate][@character.x_coordinate][0][0] = "*"
  end
end
