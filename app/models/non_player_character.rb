class NonPlayerCharacter < ActiveRecord::Base

  def self.generate
    create(x_coordinate: rand(38), y_coordinate: rand(10))
  end
end
