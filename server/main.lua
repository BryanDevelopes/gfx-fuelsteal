ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem("fuel_can", function(source, item)
    TriggerClientEvent("gfx-stealfuel:InteractWithCar", source, ((value == nil or value == 0) and "steal" or "fill"), value)
end)

RegisterServerEvent("gfx-stealfuel:InteractWithCar")
AddEventHandler("gfx-stealfuel:InteractWithCar", function(value, slot)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        local item = xPlayer.getInventoryItem("fuel_can")
        if item then
            item.value = value
        end
    end
end)
