ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    for _, v in pairs(Config.Vehicles) do
        if not IsModelInCdimage(v.Model) then return end
        RequestModel(v.Model)
        while not HasModelLoaded(v.Model) do -- Waits for the model to load
            Wait(100)
        end
        Vehicles = CreateVehicle(v.Model, v.coords.x, v.coords.y, v.coords.z - 1.0, v.coords.w, true, false)
        FreezeEntityPosition(Vehicles, true)
        SetEntityInvincible(Vehicles, true)
        SetVehicleFixed(Vehicles)
        SetVehicleColours(Vehicles, v.color1, v.color2)
        if v.locked then
            SetVehicleDoorsLocked(Vehicles, 2)
        else
        end
    end
end)
