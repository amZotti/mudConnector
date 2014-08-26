window.startFight = (bot,user) ->
  bot.hitPower = calculateHitPower(bot.powerLevel)
  user.damage = bot.hitPower
  attackPlayer(bot, user)

warningMessage = (botName) ->
  console.log("#{botName} retracts his arm towards you...")

attackPlayer = (bot, user) ->
  warningMessage(bot.name)
  setTimeout(
    (-> hitPlayer bot.name, bot.hitPower, user)
    ,3000)

hitPlayer = (name, hitPower, user) ->
  damagePlayer(user)
  console.log("#{name} hits you for #{hitPower} damage")

calculateHitPower = (powerLevel) ->
  Math.round((powerLevel / 10) + randomValue())

randomValue = () ->
  Math.round((Math.random() * 10) + 1)

damagePlayer = (user) ->
  dispatcher.trigger('damage_user.create', user)
  bindToUserPowerLevel()
