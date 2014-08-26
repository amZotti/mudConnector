function generateBot() {
  return {
    attackType: $("#attack_attack_type").attr("value"),
    id: $("#attack_target_id").attr("value"),
    isBot: $("#attack_target_bot").attr("value"),
    name: $("#attack_target_name").attr("value"),
    powerLevel: $("#attack_target_power_level").attr("value"),
  };
}


