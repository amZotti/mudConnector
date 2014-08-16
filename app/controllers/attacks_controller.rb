class AttacksController < WebsocketRails::BaseController

  def initialize_session
    puts "Initialization successful"
  end

  def create
    round = Round.new(message)
    round.initiate_attack
    send_message :create_success, attack, :namespace => :attacks
  end
end
