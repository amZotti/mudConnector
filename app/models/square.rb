class Square
  def self.characters(user)
    characters = []
    players = Character.all
    bots = NonPlayerCharacter.all
    characters << bots.find_by(x_coordinate: user.x_coordinate, y_coordinate: user.y_coordinate)
    characters << players.find_by(x_coordinate: user.x_coordinate, y_coordinate: user.y_coordinate)
  end
end
