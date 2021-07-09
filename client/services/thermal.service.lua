Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)
        if IsNightvisionActive() then
            serverAPI.applyPunish({ reason = "Uso de visão termal **(SUSPEITA I)**", punishment = "Log", requireScreenshoot = true });
        end
    end
end)