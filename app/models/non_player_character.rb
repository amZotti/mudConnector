class NonPlayerCharacter < ActiveRecord::Base

  def self.generate
    self.create(x_coordinate: rand(38), y_coordinate: rand(10))
  end
end
