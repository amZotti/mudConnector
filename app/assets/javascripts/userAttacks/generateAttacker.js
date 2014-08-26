function generatePlayer() {
  character.enableMovement = function() {
    $(".direction").removeAttr("disabled");
  };

  character.disableMovement = function() {
    $(".direction").attr("disabled", "disabled");
  };
  return character;
}
