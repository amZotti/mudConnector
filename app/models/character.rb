class Character < ActiveRecord::Base
  belongs_to :user

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
  end

  def move_east
    if self.x_coordinate == 39
      self.x_coordinate = 0
    else
      self.x_coordinate += 1
    end
    save
  end

  def move_west
    if self.x_coordinate == -39
      self.x_coordinate = 0
    else
      self.x_coordinate -= 1
    end
    save
  end

  def move_north
    if self.y_coordinate == -11
      self.y_coordinate = 0
    else
      self.y_coordinate -= 1
    end
    save
  end

  def move_south
    if self.y_coordinate == 11
      self.y_coordinate = 0
    else
      self.y_coordinate += 1
    end
    save
  end
end
