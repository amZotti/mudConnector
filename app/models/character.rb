class Character < ActiveRecord::Base
  belongs_to :user

  WEST_BOUNDARY = 0
  EAST_BOUNDARY = World.first.terrain[0].length - 1
  NORTH_BOUNDARY = 0
  SOUTH_BOUNDARY = World.first.terrain.length - 1

  def self.colliding_with(player)
    where(x_coordinate: player.x_coordinate, y_coordinate: player.y_coordinate).where.not(id: player.id)
  end

  def move(direction)
    case direction
    when "east"
      move_east
    when "west"
      move_west
    when "north"
      move_north
    when "south"
      move_south
    end
    save
  end

  def at_west_boundary?
    x_coordinate == WEST_BOUNDARY
  end

  def at_east_boundary?
    x_coordinate == EAST_BOUNDARY
  end

  def at_south_boundary?
    y_coordinate == SOUTH_BOUNDARY
  end

  def at_north_boundary?
    y_coordinate == NORTH_BOUNDARY
  end

  def move_east
    if at_east_boundary?
      self.x_coordinate = WEST_BOUNDARY
    else
      self.x_coordinate += 1
    end
  end

  def move_west
    if at_west_boundary?
      self.x_coordinate = EAST_BOUNDARY
    else
      self.x_coordinate -= 1
    end
  end

  def move_north
    if at_north_boundary?
      self.y_coordinate = SOUTH_BOUNDARY
    else
      self.y_coordinate -= 1
    end
  end

  def move_south
    if at_south_boundary?
      self.y_coordinate = NORTH_BOUNDARY
    else
      self.y_coordinate += 1
    end
  end
end
