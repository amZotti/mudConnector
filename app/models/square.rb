class Square
  def self.characters(user)
    players =  Character.
      where(x_coordinate: user.x_coordinate, y_coordinate: user.y_coordinate).
      where.not(id: user.id)
    npcs = NonPlayerCharacter.where(x_coordinate: user.x_coordinate, y_coordinate: user.y_coordinate)
    players + npcs
  end
end
