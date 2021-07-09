Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000);

        local ped = GetPlayerPed(-1)

        for k,v in pairs(Config["NOT_ALLOWED_WEAPONS"]) do
            Citizen.Wait(10);
            if HasPedGotWeapon(ped,v,false) then
                RemoveAllPedWeapons(ped)
                Citizen.Wait(250);
                serverAPI.applyPunish({ reason = "Spawning "..v, punishment = "Ban", requireScreenshoot = true });
                break;
            end
        end
    end
end)