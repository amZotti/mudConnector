class DamageBotsController < WebsocketRails::BaseController
  def create
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.damage(30);
    WebsocketRails[:message].trigger('powerLevelUpdate', bot)
  end

  private

  def damage_params
    message
  end
end
