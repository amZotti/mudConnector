function generatePlayer() {
  character.enableMovement = function() {
    $(".direction").removeAttr("disabled");
  };

  character.disableMovement = function() {
    $(".direction").attr("disabled", "disabled");
  };
  console.log(character);
  return character;
}
