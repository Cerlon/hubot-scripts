# Description:
#   Hubot, be polite and support Mélenchon.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "Mélenchon" makes hubot say "Can't stenchon the Mélenchon!"
#   "Mémel vaincra" makes hubot greet you back
cantstench = [
    "Yeah, %, can't stenchon the Mélenchon!! :cantstench:",
    "Mélenchon!! HUSS, HUSS, HUSS, HUSS, HUUUUUUSSSSSS!!!!",
    ":cantstench2: Can't stenchon the Mélenchon!!",
    "Mémel vaincra",
    "Que Mémel te garde, %"
]
victory = [
    ":LeftLike:",
    "L'esprit des vrais camarades t'habite, %",
    "Et le peuple avec lui :poinglevé:",
    "Mémel veille sur toi, %"
]
module.exports = (robot) ->
    robot.hear /(Mélenchon)/i, (msg) ->
        melenchon = msg.random cantstench
        msg.send melenchon.replace "%", msg.message.user.name

    robot.hear /(Mémel vaincra)/i, (msg) ->
        melenchon = msg.random victory
        msg.send melenchon.replace "%", msg.message.user.name
