function bindToAttack() {
  channel.bind('combat', function(data) {
    $("#display").append("<li>" + data + "</li>");
  });
}
