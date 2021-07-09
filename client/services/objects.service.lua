Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local handle,object = FindFirstObject()
        local finished = false

        while not finished do
            Citizen.Wait(1)
            if (IsEntityAttached(object) and DoesEntityExist(object)) then
                if (GetEntityModel(object) == GetHashKey('prop_acc_guitar_01')) then
                    RequestAndDelete(object,true);
                end
            end

            for _,_object in pairs(Config["NOT_ALLOWED_OBJECTS"]) do
                if (GetEntityModel(object) == GetHashKey(_object)) then
                    RequestAndDelete(object,false);
                end
            end

            finished,object = FindNextObject(handle)
        end

        EndFindObject(handle)
    end
end)

RequestAndDelete = function(object, detach)
    if (DoesEntityExist(object)) then
        NetworkRequestControlOfEntity(object)

        while not NetworkHasControlOfEntity(object) do
            Citizen.Wait(0)
        end

        if (detach) then
            DetachEntity(object, 0, false)
        end

        SetEntityCollision(object, false, false)
        SetEntityAlpha(object, 0.0, true)
        SetEntityAsMissionEntity(object, true, true)
        SetEntityAsNoLongerNeeded(object)
        DeleteEntity(object)
    end
end