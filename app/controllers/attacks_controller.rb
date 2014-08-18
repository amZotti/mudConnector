class AttacksController < WebsocketRails::BaseController
  def initialize_session
    puts "Attacks Initialization successful"
  end

  def create
    character = current_user.character
    round = Round.new(message, character)
    round.initiate_attack
    send_message :create_success, attack, namespace: :attacks
  end
end
