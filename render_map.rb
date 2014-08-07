
def render(world)
  world.each do |terrain|
    terrain.each do |y_axis_rooms|
      y_axis_rooms.each do |x_axis_rooms|
        print x_axis_rooms
      end
    end
    puts
  end
end


##def mark_character_coordinates(terrain,character_coordinates)
#  map = terrain[0] 
#  x_coordinate = character_coordinates[0]
#  y_coordinate = character_coordinates[1]
#  map[x_coordinate][y_coordinate][0] = "*"
#end

#rendered_map = mark_character_coordinates(TERRAIN2, [3,4])

