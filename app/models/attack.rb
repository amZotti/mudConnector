class Attack
  def initialize(attacker, target, attack_type)
    @attacker = attacker
    @target = target
    @attack_type = attack_type
  end

  def hit
    @target.power_level -= 10
    @target.save
  end
end
