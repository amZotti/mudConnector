class Round
  def initialize(attack_params, character)
    @target = target(attack_params)
    @damage = (character.power_level / 10) + (rand(5))
  end

  def initiate_attack
    CombatMessages.warning_message(@target)
    Message.start_attack_timer
    #round_timer
    hit_target
  end
  #
  # def round_timer
  #   flag = 0
  #   while flag < 5
  #     flag = TimingsController.time_elapsed
  #     puts flag
  #   end
  # end

  def non_player_character_failed_to_deflect
    (1 + rand(10)) < 5
  end

  def is_non_player_character?
    @target.class.to_s == "NonPlayerCharacter"
  end

  def hit_target
    if is_non_player_character?
      if non_player_character_failed_to_deflect

        damage_target
      else
        CombatMessages.deflection_message(@target)
      end
    else
      #PVP code here
    end
  end

  def damage_target
    @target.update(power_level: @target.power_level - @damage)
    CombatMessages.damage_message(@target, @damage)
  end

  def target(attack_params)
    if attack_params[:target_type]
      NonPlayerCharacter.find(attack_params[:target_id])
    else
      Character.find(attack_params[:target_id])
    end
  end
end
