class DamageBotsController < WebsocketRails::BaseController
  def create
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.damage(damage_params['damage']);
    WebsocketRails[:message].trigger('powerLevelUpdate', bot)
  end

  def destroy
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.destroy
  end

  private

  def damage_params
    message
  end
end
