outputServer = function(player, message, red, green, blue)
    triggerClientEvent(player, "calloutputClient", root, message, red, green, blue)
    return "true: added text '"..message.."'"
end