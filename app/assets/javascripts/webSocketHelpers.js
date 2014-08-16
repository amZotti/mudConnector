function attackParams() {
  return {
    attack_type: $("#attack_attack_type").attr("value"),
    target_id: $("#attack_target_id").attr("value")
  };
}

function displayUserStats(character) {
  $('#user-stats').html("Energy: " + character.energy_level + " Power Level: " + character.power_level );
}

function displayOtherCharacters(otherCharacters) {
  otherCharacters.forEach(function(otherCharacter) {
    $(".character-display").append(showOtherCharacter(otherCharacter));
    $(".character-display").append(attackForm(otherCharacter));
  });
}


function paragraphTag(content) {
  return "<p> " + content + " </p>";
}

function showOtherCharacter(otherCharacter) {
  return paragraphTag(otherCharacter.name + " is standing here (" + otherCharacter.power_level + ")");
}

function attackForm(otherCharacter) {

  return ' <form accept-charset="UTF-8" action="/" class="attack" method="post">' +
    '<input id="attack_attack_type" name="attack[attack_type]" type="hidden" value="punch"/>' +
    '<input id="attack_target_id" name="attack[target_id]" type="hidden" value="' + otherCharacter.id + '"/>' +
    '<input name="commit" type="submit" value="Punch  ' + otherCharacter.name + '"/>' +
    '</form>'
}

function bindAttack() {
  $(".attack").submit(function() {
    dispatcher.trigger('attacks.create', attackParams());
    return false;
  });
}
