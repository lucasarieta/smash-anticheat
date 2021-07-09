Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local ped = PlayerPedId()
        if GetPedArmour(ped) > 0 then
            SetPedArmour(ped,0)
            serverAPI.applyPunish({ reason = "Spawn de colete", punishment = "Log", requireScreenshoot = true })
        end
    end
end)