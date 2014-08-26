window.bindToUserPowerLevel = () ->
  channel.bind("userPowerLevel", (data) ->
    $("#user-powerlevel").html("PowerLevel: #{data}"))
