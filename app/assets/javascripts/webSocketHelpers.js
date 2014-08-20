function attackParams() {
  return {
    attack_type: $("#attack_attack_type").attr("value"),
    target_id: $("#attack_target_id").attr("value"),
    target_type: $("#attack_target_bot").attr("value"),
    target_name: $("#attack_target_name").attr("value"),
    target_power_level: $("#attack_target_power_level").attr("value"),
    user_energy_level: $("#user-stats").html().match(/\d+/g)[0],
    user_power_level: $("#user-stats").html().match(/\d+/g)[1],
  };
}

function bindAttack() {
  $(".attack").submit(function() {
    launchAttack(attackParams());
    return false;
  });
}

function displayUserStats(character) {
  $('#user-stats').html("Energy: " + character.energy_level + " Power Level: " + character.power_level );
}

function displayOtherCharacters(otherCharacters) {
  otherCharacters.forEach(function(otherCharacter) {
    $(".character-display").append(showOtherCharacter(otherCharacter.name, otherCharacter.power_level));
    $(".character-display").append(attackForm(otherCharacter));
  });
}

function showOtherCharacter(name, power_level) {
  return "<p class='characters-in-square'>" + name + " is standing here (" + power_level + ")</p>";
}

function attackForm(otherCharacter) {
  return ' <form accept-charset="UTF-8" action="/" class="attack" method="post">' +
    '<input id="attack_attack_type" name="attack[attack_type]" type="hidden" value="punch"/>' +
    '<input id="attack_target_power_level" name="attack[target_power_level]" type="hidden" value="'+ otherCharacter.power_level + '">' +
    '<input id="attack_target_name" name="attack[target_name]" type="hidden" value="' + otherCharacter.name + '"/>' +
    '<input id="attack_target_id" name="attack[target_id]" type="hidden" value="' + otherCharacter.id + '"/>' +
    '<input id="attack_target_bot" name="attack[target_bot]" type="hidden" value="' + otherCharacter.bot + '"/>' +
    '<input name="commit" type="submit" value="Punch  ' + otherCharacter.name + '"/>' +
    '</form>'
}
