function launchAttack(attackParams) {
  var isTargetBot = attackParams['target_type'];
  var targetId = attackParams['target_id'];
  var targetName = attackParams['target_name'];
  var targetPowerLevel = attackParams['target_power_level'];
  var attackType = attackParams['attack_type'];
  var userPowerLevel = attackParams['user_power_level'];
  var damage = calculateDamage();
  beginAttack();

  function beginAttack() {
    disableUserMovement();
    if (isTargetBot) {
      attackBot();
    }
  }

  function attackBot() {
    displayCombatMessage(attackWarningMessage());
    setTimeout(tryToHitBotWithTimedAttack, 3000);
  }

  function displayCombatMessage(combatMessage) {
    $("#display").append("<li>" + combatMessage + "</li>");
  }

  function attackWarningMessage() {
    return "You retract your left arm towards " + targetName;
  }

  function tryToHitBotWithTimedAttack() {
    enableUserMovement();
    if (botWasHit()) {
      displayCombatMessage(attackSuccessfulMessage());
      dispatcher.trigger('damage_bots.create', damageParams());
    }
    else {
      displayCombatMessage(attackFailedMessage());
    }
  }

  function attackSuccessfulMessage() {
    return "You successfully hit " + targetName + " (" + damage + ")";
  }

  function attackFailedMessage() {
    return targetName + " deflected your attack";
  }

  function calculateDamage() {
    return userPowerLevel / 10 + drawRandomNumber();
  }

  function botWasHit() {
    return (drawRandomNumber() < 8);
  }

  function drawRandomNumber() {
    return Math.round((Math.random() * 10));
  }

  function damageParams() {
    return {
      damage: damage,
      target_id: targetId,
    };
  }

  function enableUserMovement() {
    $(".direction").removeAttr("disabled");
  }

  function disableUserMovement() {
    $(".direction").attr("disabled", "disabled");
  }
}
