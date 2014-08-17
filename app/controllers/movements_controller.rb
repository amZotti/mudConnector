class MovementsController < WebsocketRails::BaseController
  def initialize_session
    puts "Successfuly initialized movements session"
  end

  def create
    character = current_user.character
    character.move(direction)
    redirect_to root_path
  end
end

private

#message is the default method to retrieve data received from Websockets event routes
def direction
  message['direction']
end
