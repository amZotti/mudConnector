function bindToSquareInformation() {
  window.channel.bind('square_information', function(allCharacters) {
    window.character = allCharacters['character'];
    window.bots = allCharacters['other_characters'];
    displayUserStats(character);
    displayOtherCharacters(bots);
    bindAttack();
  });

  window.channel.bind('update_square_information', function(allCharacters) {
    window.character = allCharacters['character'];
    window.bots = allCharacters['other_characters'];
  });
}
