RegisterCommand('startPicture', function()
    if #AM.VehicleList > 0 then 
        --[[BeginTextCommandThefeedPost("STRING")
        AddTextComponentSubstringPlayerName("Picture Generator Started!\nAll vehicle: " .. #AM.VehicleList .. '\nEstimated Time: ' .. #AM.VehicleList * 5 .. ' seconds')
        EndTextCommandThefeedPostTicker(false, false)]]

        Citizen.CreateThread(function()
            while true do
                Wait(1)
                DisplayRadar(false)
                for i = 0, 22 do
                    HideHudComponentThisFrame(i)
                end
            end
        end)
        
        local cam = AM.SetCamera(AM.DefaultSettings.position)
        for i, vehicle in ipairs(AM.VehicleList) do 
            AM.TakePic(vehicle, AM.DefaultSettings.position)
        end
        RenderScriptCams(false, false, 0, true, true)
        DestroyCam(cam, false)
        DisplayRadar(true)
    else 
        BeginTextCommandThefeedPost("STRING")
        AddTextComponentSubstringPlayerName('Vehicle List Is Empty!\nCouldn\'t start the script!')
        EndTextCommandThefeedPostTicker(false, false)
    end
end, true)