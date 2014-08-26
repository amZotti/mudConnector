class DamageUsersController < WebsocketRails::BaseController

  def create
    power_level = current_user.character.power_level
    current_user.character.update(power_level: power_level - damage_params)
    WebsocketRails[:message].trigger(:userPowerLevel, current_user.character.power_level)
    Game.new(current_user.character).update_square_information
  end

  private

  def damage_params
    message["damage"]
  end
end
