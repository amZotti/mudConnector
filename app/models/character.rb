class Character
  def initialize(starting_coordinates = [0,0])
    @coordinates = starting_coordinates
  end

  attr_accessor :coordinates
end
