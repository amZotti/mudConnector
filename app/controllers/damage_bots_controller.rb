class DamageBotsController < WebsocketRails::BaseController
  def create
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.damage(30);
  end

  private

  def damage_params
    message
  end
end
