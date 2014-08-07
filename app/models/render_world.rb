class RenderWorld

  def render_world_for_display(world)
    map = ""
    world.each do |y_axis_rooms|
      y_axis_rooms.each do |x_axis_rooms|
        x_axis_rooms.each do |room|
          map += room
        end
      end
      map += "\n"
    end
    return map
  end

  def mark_character_coordinates(world,character_coordinates)
    x_coordinate = character_coordinates[0]
    y_coordinate = character_coordinates[1]
    world[y_coordinate][x_coordinate][0][0] = "*"
  end
end


