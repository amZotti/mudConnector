function bindToMovement() {
  channel.bind("movement", function(data) {
    $("#ascii-map").html(data);
    colorMap();
  });

  $(".direction").on("click", function(e) {
    var movement = { direction: e.target.value };
    dispatcher.trigger("movements.create", movement);
    refreshLog();
    return false;
  });

  $("tr").on("click", function(e) {
    if (movementDisabled) {
      $("#display").append("You can't move when you are attacking someone!");
    }
  });
}

function movementDisabled() {
  return ($(".direction").attr("disabled") == "disabled");
}

function colorMap() {
  var textWithColor = $("#ascii-map").html();
  if (textWithColor) {
    textWithColor = textWithColor.replace(/\*/g, "<span class='character'>*</span>");
    textWithColor = textWithColor.replace(/~/g, "<span class='water'>~</span>");
    textWithColor = textWithColor.replace(/:/g, "<span class='grass'>:</span>");
    textWithColor = textWithColor.replace(/T/g, "<span class='forest'>T</span>");
    $("#ascii-map").html(textWithColor);
  }
}

function refreshLog() {
  $(".character-display").empty();
  $("#display").empty();
  $("#http").empty();
}
