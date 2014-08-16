class Round
  def initialize(attack_params)
    puts attack_params.inspect
    @target = target(attack_params)
    @attack = Attack.new(attack_params)
    @attack.target_type = @target.class.to_s
    @attack.save
  end

  def warning_message
    Message.broadcast("You retract your left fist torwards #{@target.name}")
  end

  def initiate_attack
    Thread.new do
      sleep(5)
      hit_target
      ActiveRecord::Base.connection.close
    end
  end

  def non_player_character_failed_to_deflect
    (1 + rand(10)) < 5
  end

  def is_non_player_character?
    @attack.target_type == "NonPlayerCharacter"
  end

  def hit_target
    if is_non_player_character?
      if non_player_character_failed_to_deflect
        damage_target
      else
        Message.broadcast("#{@target.name} deflected your punch")
      end
    else
      #PVP code here
    end
  end

  def damage_target
    @target.update(power_level: @target.power_level - 10)
    Message.broadcast("You hit #{@target.name} for 10 damage")
  end

  def target(attack_params)
    if attack_params[:target_type] == "NonPlayerCharacter"
      NonPlayerCharacter.find(attack_params[:target_id])
    else
      Character.find(attack_params[:target_id])
    end 
  end
end
