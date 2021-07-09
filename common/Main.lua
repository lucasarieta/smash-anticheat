-- Declare Proxy and Tunnel from vRP
Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")

-- Declare vRP and vRPC from vRP
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")

-- has value function
function has_value(tab,val)
    for index,value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end