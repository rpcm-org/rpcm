print ("Hello Worrd! I am server.")

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        print("Toto se nepsutilo.")              
    end
end)

RegisterServerEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
    print("Player spawned!")
end)
