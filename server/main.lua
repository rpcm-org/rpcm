print ("Hello Worrd! I am server.")

RegisterServerEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
    print("Player spawned!")
end)
