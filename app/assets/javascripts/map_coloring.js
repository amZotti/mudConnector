$(document).ready(function() {
  var textWithColor = $('#ascii-map').html();
  if( textWithColor ){
    textWithColor = textWithColor.replace(/\*/g, "<span class='character'>*</span>");
    textWithColor = textWithColor.replace(/~/g, "<span class='water'>~</span>");
    textWithColor = textWithColor.replace(/:/g, "<span class='grass'>:</span>");
    textWithColor = textWithColor.replace(/T/g, "<span class='forest'>T</span>");
    $('#ascii-map').html(textWithColor);
  }
}); 
