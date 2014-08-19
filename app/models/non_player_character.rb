class NonPlayerCharacter < ActiveRecord::Base
  def self.generate
    create(x_coordinate: rand(38), y_coordinate: rand(10))
  end

  def self.colliding_with(player)
    where(x_coordinate: player.x_coordinate, y_coordinate: player.y_coordinate)
  end

  def as_json(options={})
    super.merge(bot: true)
  end

end
