RegisterCommand("kneel", function(source, args, rawCommand)
    TriggerClientEvent("KneelHU", source) -- Event wird an den Client gesendet, um das Hinknien zu triggern
end, false)