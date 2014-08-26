function generateBot() {
  var id = $("#attack_target_id").attr("value");
  window.target = locateCharacter(parseInt(id))[0];
  target.attackType = $("#attack_attack_type").attr("value");
  target.isBot = true;
  console.log(target);
  return target;
};



