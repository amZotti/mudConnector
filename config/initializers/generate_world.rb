# def grass_room
#   ["::"]
# end
#
# def water_room
#   ["~~"]
# end
#
# def forest_room
#   ["TT"]
# end
#
# def water(number_of_rooms)
#   number_of_rooms.times.map { water_room }
# end
#
# def forest(number_of_rooms)
#   number_of_rooms.times.map { forest_room }
# end
#
# def grasslands(number_of_rooms)
#   number_of_rooms.times.map { grass_room }
# end
#
# def render(world)
#   world.each do |y_axis_rooms|
#     y_axis_rooms.each do |x_axis_rooms|
#       x_axis_rooms.each do |room|
#         print room
#       end
#     end
#     puts
#   end
# end
#
# def mark_character_coordinates(world,character_coordinates)
#   x_coordinate = character_coordinates[0]
#   y_coordinate = character_coordinates[1]
#   world[y_coordinate][x_coordinate][0] = "*"
# end
#
# WORLD = [
#   grasslands(10),
#   grasslands(5) + forest(5),
#   forest(5) + water(5)
# ]
#
# mark_character_coordinates(WORLD, [5,2])
#
# #first index = y axis
# #second index = x axis
# #third index = room
# #fourth index = characters of room
#
# render(WORLD)
