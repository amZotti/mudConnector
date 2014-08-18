//Create connection to WebSockets custom event routes
//Bind to combat channel to receive real time updates
$(document).ready(function() {
  var dispatcher = new WebSocketRails('localhost:3000/websocket');
  var channel = dispatcher.subscribe('message');
  channel.bind('combat', function(data) {
    $("#display").append("<li>" + data + "</li>");
  });
  channel.bind('movement', function(data) {
    $("#ascii-map").html(data);
    colorMap(); 
  });


  //handle attacks and combat real time
  $(".attack").submit(function() {
    dispatcher.trigger('attacks.create', attackParams());
    return false;
  });

  //Handle movement real time
  $(".direction").on("click",function(e) {
    var movement = { direction: e.target.value };
    dispatcher.trigger('movements.create', movement);
    return false;
  });
});

//Serialize attack data
function attackParams() {
  return {
    target_type: $("#attack_target_type").attr("value"),
      attack_type: $("#attack_attack_type").attr("value"),
      target_id: $("#attack_target_id").attr("value")
  };
};


function colorMap() {
  var textWithColor = $('#ascii-map').html();
  if( textWithColor ){
    textWithColor = textWithColor.replace(/\*/g, "<span class='character'>*</span>");
    textWithColor = textWithColor.replace(/~/g, "<span class='water'>~</span>");
    textWithColor = textWithColor.replace(/:/g, "<span class='grass'>:</span>");
    textWithColor = textWithColor.replace(/T/g, "<span class='forest'>T</span>");
    $('#ascii-map').html(textWithColor);
  }
}
