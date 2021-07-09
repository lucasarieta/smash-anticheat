Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        local spectator = NetworkIsInSpectatorMode()
        if spectator == 1 then
            serverAPI.applyPunish({ reason = "Modo espectador", punishment = "Ban", requireScreenshoot = true });
        end
    end
end)