class CombatMessages

  def self.warning_message(target)
    Message.broadcast("You retract your fist torwards #{target.name}")
  end

  def self.damage_message(target, damage)
    Message.broadcast("You hit #{target.name} (-#{damage})")
  end

  def self.deflection_message(target)
    Message.broadcast("#{target.name} deflected your hit")
  end
end
