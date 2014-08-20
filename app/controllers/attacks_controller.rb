class AttacksController < WebsocketRails::BaseController
  def initialize_session
    puts "Attacks Initialization successful"
    controller_store[:attack_time] = 0
  end

  def create
    character = current_user.character
    round = Round.new(message, character)
    round.initiate_attack
    send_message :create_success, attack, namespace: :attacks
  end

  def update
    controller_store[:attack_time] += 1
  end
end
