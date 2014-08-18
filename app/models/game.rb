class Game
  def initialize(character)
    @character = character
  end

  def render_map_display
    map = Map.new(@character).display
    Message.display_map(map)
  end

  def render_square_display
    other_characters = @character.all_colliding_characters
    all_characters = { other_characters: other_characters, character: @character }
    Message.display_square_information(all_characters)
    all_characters
  end
end
