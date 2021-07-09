local function sendDiscord(data)
    local source = source
    local user_id = vRP.getUserId(source) -- change for esx module if you need
    local identity = vRP.getUserIdentity(user_id) -- change for esx module if you need

    -- Your Webhook

    -- DiscordScreenshote code (if data.requireScreenshot)
end

-- Apply Punish
function src.applyPunish(data)
    local source = source
    local user_id = vRP.getUserId(source) -- change for esx module if you need

    if vRP.hasPermission(user_id,"smash-anticheat.bypass") then
        return
    end

    sendDiscord(data)
    if data.requireScreenshoot then
        Citizen.Wait(2000)
    end

    if data.punishment == "Ban" then
        -- ban and kick functions from
    else
        -- kick function
    end
end