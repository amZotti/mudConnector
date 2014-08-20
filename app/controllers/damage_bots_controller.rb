class DamageBotsController < WebsocketRails::BaseController
  def initialize_session
    puts "DamageBots controller successfully initialized!"
  end

  def create
    bot = NonPlayerCharacter.find(damage_params["target_id"])
    bot.update(power_level: bot.power_level - damage_params['damage'])
  end

  private

  def damage_params
    message
  end
end
