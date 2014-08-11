$(document).ready(function() {
    var textWithColor = $('#ascii-map').html();
    textWithColor = textWithColor.replace("*", "<span class='red-font'>*</span>");
    textWithColor = textWithColor.replace(/\~/g, "<span class='blue-font'>~</span>");
    textWithColor = textWithColor.replace(/\:/g, "<span class='lightgreen-font'>:</span>");
    textWithColor = textWithColor.replace(/T/g, "<span class='darkgreen-font'>T</span>");
    $('#ascii-map').html(textWithColor);
}); 
