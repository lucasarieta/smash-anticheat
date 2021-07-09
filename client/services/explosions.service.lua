local blocked_explosions = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38 }

AddEventHandler('explosionEvent',function(sender,ev)
    for _,v in ipairs(blocked_explosions) do
        if ev["explosionType"] == v then
            CancelEvent()

            Citizen.Wait(2000)
            TriggerEvent('smash-common:killGod')
            return
        end
    end
end)