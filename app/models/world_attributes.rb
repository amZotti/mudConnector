class WorldAttributes
  def grass_room
    ["::"]
  end

  def water_room
    ["~~"]
  end

  def forest_room
    ["TT"]
  end

  def water(number_of_rooms)
    number_of_rooms.times.map { water_room }
  end

  def forest(number_of_rooms)
    number_of_rooms.times.map { forest_room }
  end

  def grasslands(number_of_rooms)
    number_of_rooms.times.map { grass_room }
  end
end
