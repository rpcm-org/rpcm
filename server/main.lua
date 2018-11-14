RegisterServerEvent('playerSpawned')
AddEventHandler('playerSpawned', function()
    print("Player " ..source .." spawned!")
    local identifiers = GetPlayerIdentifiers(source)
    print("identifiers:")
    for k, v in pairs(identifiers) do
        print(k, v)
    end
end)