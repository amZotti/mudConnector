class Character < ActiveRecord::Base
  belongs_to :user

  Y_BOUNDARY = World.first.terrain.length - 1
  X_BOUNDARY = World.first.terrain[0].length - 1

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

  def at_x_boundary?
    x_coordinate != 0 && x_coordinate % X_BOUNDARY == 0
  end

  def at_y_boundary?
    y_coordinate != 0 && y_coordinate % Y_BOUNDARY == 0
  end

  def move_east
    if at_x_boundary?
      self.x_coordinate = 0
    else
      self.x_coordinate += 1
    end
  end

  def move_west
    if at_x_boundary?
      self.x_coordinate = 0
    else
      self.x_coordinate -= 1
    end
  end

  def move_north
    if at_y_boundary?
      self.y_coordinate = 0
    else
      self.y_coordinate -= 1
    end
  end

  def move_south
    if at_y_boundary?
      self.y_coordinate = 0
    else
      self.y_coordinate += 1
    end
  end
end
