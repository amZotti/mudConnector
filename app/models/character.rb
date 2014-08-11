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
end


