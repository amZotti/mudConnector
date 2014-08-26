class DamageBotsController < WebsocketRails::BaseController
  def create
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.damage(damage_params["damage"]);
    Game.new(current_user.character).update_square_information
  end

  def destroy
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.destroy
    Game.new(current_user.character).update_square_information
  end

  private

  def damage_params
    message
  end
end
