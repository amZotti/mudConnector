class Map
  def initialize(character)
    @world = World.first
    @character = character
  end

  def display
    mark_character_coordinates
    html_map = ""
    @world.terrain.each do |y_axis_rooms|
      y_axis_rooms.each do |x_axis_rooms|
        x_axis_rooms.each do |room|
          html_map += room
        end
      end
      html_map += "\n"
    end
    html_map
  end

  def mark_character_coordinates
    @world.terrain[@character.y_coordinate][@character.x_coordinate][0][0] = "*"
  end
end
