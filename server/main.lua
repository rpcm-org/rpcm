RegisterServerEvent('playerSpawned')

AddEventHandler('playerSpawned', function()

    print('Lua version: ', _VERSION)

    local ped = source
    local identifiers = GetPlayerIdentifiers(ped)

    local steam_id = nil
    local license = nil
    for key, value in pairs(identifiers) do

        identifier, number = string.match(value, '(.*):(.*)')

        if identifier == 'steam' then
            steam_id = number
        end

        if identifier == 'license' then
            license = number
        end
    end

    if steam_id and license then
        print('Player: ' , steam_id, ' | ', license)

        local driver = require"luasql.mysql"
        local env = driver.mysql()
        print('>> ', env)

        MySQL.ready(function ()
            MySQL.Async.fetchAll("SELECT COUNT(id) FROM users WHERE steam_id = @steam_id", {['@steam_id'] = steam_id}, function(rowsChanged)
                for k, v in pairs(rowsChanged) do
                    print('>> ', k, ' :: ', v)
                end
            end)
        end)

    else
        print('Nepovedlo se')
        -- TODO: Display warning, you don't have steam running or you don't have legal GTA V.
    end

end)
