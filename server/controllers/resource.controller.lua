-- Resource Start Handler Controller
AddEventHandler("onResourceStart",function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end

    print("^2[+] ^7Sistema iniciado com sucesso.")
end)

-- Resource Stop Handler Controller
AddEventHandler("onResourceStop",function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end

    print("^1[+] ^7Sistema desligado com sucesso.")
end)
