$(document).ready(function() {
  var dispatcher = new WebSocketRails('localhost:3000/websocket');
  $(".attack").submit(function() {
    dispatcher.trigger('attacks.create', attackParams());
    return false;
  });

  var channel = dispatcher.subscribe('message');
  channel.bind('combat', function(data) {
   $("#display").append(data);
  });

});

function attackParams() {
  return {
    target_type: $("#attack_target_type").attr("value"),
      attack_type: $("#attack_attack_type").attr("value"),
      target_id: $("#attack_target_id").attr("value")
  };
};
