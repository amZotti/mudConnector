class Character
  def initialize(starting_x_coordinate = 0, starting_y_coordinate = 0)
    @x_coordinate = starting_x_coordinate
    @y_coordinate = starting_y_coordinate
  end

  attr_accessor :x_coordinate, :y_coordinate
end
