AM.LoadModel = function(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(0)
    end
end

AM.SetCamera = function(coords)
    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamCoord(cam, coords.x + AM.DefaultSettings.camAngle.x, coords.y + AM.DefaultSettings.camAngle.y, coords.z + AM.DefaultSettings.camAngle.z)
    PointCamAtEntity(cam, PlayerPedId(), 0.0, 0.0, 0.0)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 0, true, true)
    return cam
end

AM.TakePic = function(model, coords)
    AM.LoadModel(model)
    local hash = GetHashKey(model)
    local vehicle = CreateVehicle(hash, coords.x, coords.y, coords.z, coords.h, true, false)
    local ped = PlayerPedId()
    TaskWarpPedIntoVehicle(ped, vehicle, -1)
    SetEntityVisible(ped, false, false)
    Wait(500)
    TriggerServerEvent("am-vehiclePhoto:server:uploadImage", model)
    Wait(4000)
    DeleteEntity(vehicle)
    SetEntityVisible(ped, true, true)
    Wait(500)
end