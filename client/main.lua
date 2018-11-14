AddEventHandler('onClientMapStart', function()
    TriggerServerEvent('playerSpawned')
    TriggerEvent('playerSpawned')
end)