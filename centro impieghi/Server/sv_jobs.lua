
--------------TAXI-----------

RegisterNetEvent('job')
AddEventHandler('job', function(text)
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.setJob('taxi', 1)
end)

--------------BOSCAIOLO-----------

RegisterNetEvent('job_boscaiolo')
AddEventHandler('job_boscaiolo', function(text)
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.setJob('boscaiolo', 1)
end)

RegisterServerEvent('taglia:legna')
AddEventHandler('taglia:legna', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('legna', math.random(1, 12))
end)

--------------MINATORE-----------

RegisterNetEvent('job_minatore')
AddEventHandler('job_minatore', function(text)
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.setJob('minatore', 1)
end)

--------------AGRICOLTORE-----------

RegisterNetEvent('job_agricoltore')
AddEventHandler('job_agricoltore', function(text)
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.setJob('agricoltore', 1)
end)

RegisterServerEvent('raccogli:verdure')
AddEventHandler('raccogli:verdure', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('scarti', math.random(10, 12))
    xPlayer.addInventoryItem('verdure', math.random(10, 35))
end)

RegisterServerEvent('raccogli:arance')
AddEventHandler('raccogli:arance', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('arance', math.random(10, 35))
    xPlayer.addInventoryItem('scarti', math.random(10, 12))
end)

--------------ELETTRICISTA-----------

RegisterNetEvent('job_elettricista')
AddEventHandler('job_elettricista', function(text)
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.setJob('elettricista', 1)
end)

RegisterServerEvent('lavoro:riparazione')
AddEventHandler('lavoro:riparazione', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('cash', math.random(1000, 2500))
end)