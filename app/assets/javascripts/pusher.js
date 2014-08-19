$(document).ready(function() {
  window.dispatcher = new WebSocketRails('localhost:3000/websocket');
  window.channel = dispatcher.subscribe('message');
  bindToMovement();
  bindToSquareInformation();
  bindToCombatStats();
});

