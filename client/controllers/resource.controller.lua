local is_active = false
local already_trigged = false
Citizen.CreateThread(function()
    while not NetworkIsPlayerActive(PlayerId()) do
        Wait(0)
    end
    is_active = true
end)

AddEventHandler('onClientResourceStart',function(resourceName)
    if not is_active then
        return;
    end

    if not has_value(Config["ALLOWED_SCRIPTS"]) and not already_trigged then
        serverAPI.applyPunish({ reason = resourceName.." está rodando sem autêntificação **(SUSPEITA III)**", punishment = "Log", requireScreenshoot = false });
        already_trigged = true
    end
end)

AddEventHandler('onClientResourceStop',function(resourceName)
    serverAPI.stopResource(resourceName);
end)