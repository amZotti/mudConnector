$(document).ready(function() {
  startHTTPboot();
  window.dispatcher = new WebSocketRails('localhost:3000/websocket');
  var channel = dispatcher.subscribe('message');
  channel.bind('combat', function(data) {
    $("#display").append("<li>" + data + "</li>");
  });
  channel.bind('movement', function(data) {
    $("#ascii-map").html(data);
    colorMap(); 
  });

  channel.bind('square_information', function(allCharacters) {
    displayUserStats(allCharacters['character']);
    displayOtherCharacters(allCharacters['other_characters']);
    //bind attack on websockets stream
    bindAttack();
  });

  //bind attack on http refresh
  bindAttack();

  //Handle movement real time
  $(".direction").on("click",function(e) {
    var movement = { direction: e.target.value };
    dispatcher.trigger('movements.create', movement);
    refreshLog();
    return false;
  });
});

//Serialize attack data
function attackParams() {
  return {
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

function displayUserStats(character) {
  $('#user-stats').html("Energy: " + character.energy_level + " power level: " + character.power_level );
}

function displayOtherCharacters(otherCharacters) {
  otherCharacters.forEach(function(otherCharacter) {
    $(".character-display").append(showOtherCharacter(otherCharacter));
    $(".character-display").append(attackForm(otherCharacter));
  });
}


function paragraphTag(content) {
  return "<p> " + content + " </p>";
}
//
function showOtherCharacter(otherCharacter) {
  return paragraphTag(otherCharacter.name + " is standing here (" + otherCharacter.power_level + ")");
}

function attackForm(otherCharacter) {

  return ' <form accept-charset="UTF-8" action="/" class="attack" method="post">' +
    '<input id="attack_attack_type" name="attack[attack_type]" type="hidden" value="punch"/>' +
    '<input id="attack_target_id" name="attack[target_id]" type="hidden" value="' + otherCharacter.id + '"/>' +
    '<input name="commit" type="submit" value="Punch  ' + otherCharacter.name + '"/>' +
    '</form>'
}

function bindAttack() {
  $(".attack").submit(function() {
    dispatcher.trigger('attacks.create', attackParams());
    return false;
  });
}

function refreshLog() {
  $('.character-display').empty();
  $('#http').empty();
}

function startHTTPboot() {
  colorMap(); 
}
