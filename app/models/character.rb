class Character
  def initialize(starting_x_coordinate = 0, starting_y_coordinate = 0)
    @x_coordinate = starting_x_coordinate
    @y_coordinate = starting_y_coordinate
    @world = World.first
  end

  attr_reader :x_coordinate, :y_coordinate
  def can_move_east?
    @world.terrain[@x_coordinate + 1][@y_coordinate] != nil
  end

  def can_move_west?
    @world.terrain[@x_coordinate - 1][@y_coordinate] != nil
  end

  def can_move_north?
    @world.terrain[@x_coordinate][@y_coordinate + 1] != nil
  end

  def can_move_south?
    @world.terrain[@x_coordinate][@y_coordinate - 1] != nil
  end
end


