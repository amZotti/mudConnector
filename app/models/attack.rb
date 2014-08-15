class Attack
  def initialize(target, attack_type)
    @target = target
    @attack_type = attack_type
  end

  def hit
    @target.update(power_level: @target.power_level - 10)
  end
end
