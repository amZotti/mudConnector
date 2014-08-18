function bindToMovement() {
  channel.bind('movement', function(data) {
    $("#ascii-map").html(data);
    colorMap();
  });

  $(".direction").on("click", function(e) {
    var movement = { direction: e.target.value };
    dispatcher.trigger('movements.create', movement);
    refreshLog();
    return false;
  });
}

function colorMap() {
  var textWithColor = $('#ascii-map').html();
  if (textWithColor) {
    textWithColor = textWithColor.replace(/\*/g, "<span class='character'>*</span>");
    textWithColor = textWithColor.replace(/~/g, "<span class='water'>~</span>");
    textWithColor = textWithColor.replace(/:/g, "<span class='grass'>:</span>");
    textWithColor = textWithColor.replace(/T/g, "<span class='forest'>T</span>");
    $('#ascii-map').html(textWithColor);
  }
}

function refreshLog() {
  $('.character-display').empty();
  $('#http').empty();
}


