class Round
  def initialize(attack_params)
    @target = target(attack_params)
    @attack = Attack.new(attack_params)
    @attack.target_type = @target
    @attack.save
  end

  def start_new_round
    Thread.new do
      sleep(5)
      hit
      ActiveRecord::Base.connection.close
    end
  end

  def hit
    @target.update(power_level: @target.power_level - 10)
  end

  def target(attack_params)
    if attack_params[:target_type] == "NonPlayerCharacter"
      NonPlayerCharacter.find(attack_params[:target_id])
    else
      Character.find(attack_params[:target_id])
    end 
  end
end
