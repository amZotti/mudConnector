function launchAttack(round) {
  var target = round.target;
  var attacker = round.attacker;
  var display = round.display;
  target.damage = calculateDamage();
  beginAttack();

  function beginAttack() {
    attacker.disableMovement();
    if (target.isBot) {
      attackBot();
    }
  }

  function attackBot() {
    display.show(display.warning(target.name));
    setTimeout(tryToHitBotWithTimedAttack, 3000);
  }

  function isBotDead() {
    target.powerLevel = parseInt($(".characters-in-square").html().match(/\d+/g));
    return (target.powerLevel - target.damage) < 1;
  }

  function tryToHitBotWithTimedAttack() {
    attacker.enableMovement();
    if (botWasHit())
    { 
      display.show(display.success(target.name, target.damage));
      dispatcher.trigger('damage_bots.create', damageParams());
      if (isBotDead()) {
        $(".attack").empty();
        $("#http").empty();
        $(".character-display").empty();
        display.show(display.death(target.name));
        dispatcher.trigger('damage_bots.destroy', damageParams());
      }
    }

    else {
      display.show(display.failure(target.name));
    }
  }

  function calculateDamage() {
    return attacker.powerLevel / 10 + drawRandomNumber();
  }

  function botWasHit() {
    return (drawRandomNumber() < 8);
  }

  function drawRandomNumber() {
    return Math.round((Math.random() * 10));
  }

  function damageParams() {
    return {
      damage: target.damage,
      target_id: target.id,
    };
  }
}
