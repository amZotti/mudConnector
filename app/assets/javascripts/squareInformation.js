$(document).ready(function() {
  window.channel.bind('square_information', function(allCharacters) {
    displayUserStats(allCharacters['character']);
    displayOtherCharacters(allCharacters['other_characters']);
    bindAttack();
  });
});
