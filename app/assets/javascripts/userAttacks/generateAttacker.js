function generateAttacker() {
  return {
    energyLevel: $("#user-stats").html().match(/\d+/g)[0],
    powerLevel: $("#user-stats").html().match(/\d+/g)[1],
    enableMovement: function() {
      $(".direction").removeAttr("disabled");
    },

    disableMovement: function() {
      $(".direction").attr("disabled", "disabled");
    },
  };
}
