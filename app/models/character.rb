class Character < ActiveRecord::Base
  belongs_to :user

  def can_move_east?
    WORLD.terrain[x_coordinate + 1][y_coordinate]
  end

  def can_move_west?
    WORLD.terrain[x_coordinate - 1][y_coordinate]
  end

  def can_move_north?
    WORLD.terrain[x_coordinate][y_coordinate + 1]
  end

  def can_move_south?
    WORLD.terrain[x_coordinate][y_coordinate - 1]
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
  end

  def move_east
    self.x_coordinate += 1
    save
  end

  def move_west
    self.x_coordinate -= 1
    save
  end

  def move_north
    self.y_coordinate -= 1
    save
  end

  def move_south
    self.y_coordinate += 1
    save
  end
end


