class Map < ActiveRecord::Base

  def display
    mark_character_coordinates
    html_map = ""
    WORLD.terrain.each do |y_axis_rooms|
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
    WORLD.terrain[current_user.character.y_coordinate][current_user.character.x_coordinate][0][0] = "*"
  end
end
