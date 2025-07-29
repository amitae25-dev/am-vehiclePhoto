RegisterNetEvent('am-vehiclePhoto:server:uploadImage')
AddEventHandler('am-vehiclePhoto:server:uploadImage', function(vehicle)
    exports['screenshot-basic']:requestClientScreenshot(source, {
        fileName = AM.SaveLocation .. vehicle .. '.png'
    }, function(err, data)
        print('err', err)
        print('data', data)
    end)
end)