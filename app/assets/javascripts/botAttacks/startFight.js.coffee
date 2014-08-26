window.startFight = (bot, user) ->
  bot.hitPower = calculateHitPower(bot.powerLevel)
  user.damage = bot.hitPower
  attackPlayer(bot, user)

warningMessage = (name) ->
  displayMessage("#{name} retracts his arm towards you...")

successMessage = (name, hitPower) ->
  displayMessage("#{name} hits you (#{hitPower})")

attackPlayer = (bot, user) ->
  warningMessage(bot.name)
  setTimeout(
    (-> hitPlayer bot, user)
    , 3000)

hitPlayer = (bot, user) ->
  damagePlayer(user)
  successMessage(bot.name, bot.hitPower)

calculateHitPower = (powerLevel) ->
  Math.round((powerLevel / 10) + randomValue())

randomValue = () ->
  Math.round((Math.random() * 10) + 1)

damagePlayer = (user) ->
  dispatcher.trigger("damage_user.create", user)
  bindToUserPowerLevel()

displayMessage = (combatMessage) ->
  $("#display").append("<li>" + combatMessage + "</li>");
