ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('skay:pay')
AddEventHandler('skay:pay', function(model)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 350
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "Vous avez loué une ~o~Panto~o~ ~w~pour~w~ ~g~350$") 
    else        
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end  
end)