class MovementsController < WebsocketRails::BaseController
  def create
    current_user.character.move(direction)
    Game.new(current_user.character).update_display
  end
end

private

def direction
  message["direction"]
end
