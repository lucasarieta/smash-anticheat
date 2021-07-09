Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)
        for _,v in ipairs(GetRegisteredCommands()) do
            for _,command in pairs(Config["NOT_ALLOWED_COMMANDS"]) do
                if (string.lower(v["name"]) == string.lower(command) or
                        string.lower(v["name"]) == string.lower('+' .. command) or
                        string.lower(v["name"]) == string.lower('_' .. command) or
                        string.lower(v["name"]) == string.lower('-' .. command) or
                        string.lower(v["name"]) == string.lower('/' .. command)) then
                    serverAPI.applyPunish({ reason = "Injection ("..v["name"]..")", punishment = "Ban", requireScreenshoot = true });
                end
            end
        end
    end
end)