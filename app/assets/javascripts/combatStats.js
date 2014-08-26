function bindToCombatStats() {
  channel.bind("powerLevelUpdate", function(data) {
    $(".characters-in-square").html(showOtherCharacter(data.name, data.power_level));
  });
}
