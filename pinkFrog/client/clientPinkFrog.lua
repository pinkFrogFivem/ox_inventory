
local stateSelf, notLoadedDataFromConfig, alwaysDisplay = false, false, false

local actualDamagedBones = {}

while GetResourceState('pinkFrog_inventoryAddon') ~= "started" do
    Citizen.Wait(100)
    print('Waiting for pinkFrog_inventoryAddon to start...')
end

Citizen.CreateThread(function() if  exports['pinkFrog_inventoryAddon']:checkInstantShowPedAfterOpenInventory() then client.screenblur = false  stateSelf = true end end)


RegisterNuiCallback('getEnabledClonedPed', function(data, cb)
    if not exports['pinkFrog_inventoryAddon']:checkInstantShowPedAfterOpenInventory() then
        SendNUIMessage({
            action = 'setEnabledClonedPed',
            data = true,
        })
    else
        SendNUIMessage({
            action = 'checkAlwaysEnablePedClone',
        })
    end
    cb({ success = true }) 
end)


RegisterNUICallback('getMainColor', function(data, cb)
    local ui = exports['pinkFrog_inventoryAddon']:getUiSettings()
    SendNUIMessage({
        action = 'updateColors',
        data = {
            dataMainColor = ui.mainColor,
            dataSecondaryColor = ui.secondaryColor,
            dataCloseButtonColor = ui.closeButtonColor,
        }
    })
    SendNUIMessage({
        action = 'updateItemNotificationSettings',
        data = {
            itemNotificationContainer = ui.itemNotificationContainer
        }
    })
    cb({ success = true }) 
end)


RegisterNUICallback('getBackPackSettings', function(data, cb)
    local backPackData = exports['pinkFrog_inventoryAddon']:getEnableBackPack()
    SendNUIMessage({
        action = 'updateBackPackSettings',
        data = backPackData
    })
    cb({ success = true })
end)

RegisterNUICallback('getTranslations', function(data, cb)
    SendNUIMessage({
        action = 'updateTranslations',
        data = exports['pinkFrog_inventoryAddon']:getUI_locales()
    })
    cb({ success = true }) 
end)

local pedCloneVisible = false

RegisterNUICallback('showPedClone', function(data, cb)
    pedCloneVisible = not pedCloneVisible

    if pedCloneVisible then
        if client.screenblur then TriggerScreenblurFadeOut(0) end
        TriggerEvent('pinkFrog:startClonedPedByOx')
        SendNUIMessage({ action = 'displayDivider', data = { visible = false } })
    else
        if client.screenblur then TriggerScreenblurFadeIn(0) end
        TriggerEvent('pinkFrog:removeClonedPedFromOxInventory')
        SendNUIMessage({ action = 'displayDivider', data = { visible = true } })
    end

    cb({ success = true })
end)

RegisterNUICallback('alwaysEnablePedClone', function(data, cb)
    TriggerEvent('pinkFrog_syncClonePed', true)
    cb({ success = true }) 
end)


RegisterNetEvent('pinkFrog_syncClonePed', function(open, inv, player, selfOpen, noEvent)
    if open then 
        if exports['pinkFrog_inventoryAddon']:checkInstantShowPedAfterOpenInventory() then
            TriggerEvent('pinkFrog:startClonedPedByOx')
            if client.screenblur then
                TriggerScreenblurFadeOut(0)
            end
            SendNUIMessage({ action = 'displayDivider', data = { visible = false } })
        else
            SendNUIMessage({ action = 'displayDivider', data = { visible = true } })
            if client.screenblur then
                TriggerScreenblurFadeIn(0)
            end
            TriggerEvent('pinkFrog:removeClonedPedFromOxInventory')
        end
    else 
        if exports['pinkFrog_inventoryAddon']:checkInstantShowPedAfterOpenInventory() then
            TriggerEvent('pinkFrog:removeClonedPedFromOxInventory')
        else 
            SendNUIMessage({ action = 'displayDivider', data = { visible = false } })
               TriggerEvent('pinkFrog:removeClonedPedFromOxInventory')
        end
    end
end)

RegisterNetEvent('pinkFrog:updateNUISlots', function(backPackData)
    SendNUIMessage({
        action = 'updateBackPackSettings',
        data = backPackData
    })
end)


RegisterNetEvent('pinkFrog_closeClonedPed', function(open)
TriggerEvent('pinkFrog:removeClonedPedFromOxInventory') 
end)

RegisterNUICallback('getActualDamagedBones', function(data, cb)
    cb(actualDamagedBones)
end)


RegisterNetEvent('pinkFrog_inventoryAddon:updateClientDamage', function(damagedBones)
    actualDamagedBones = damagedBones
    SendNUIMessage({
        action = 'updateDamageBones',
        data = damagedBones
    })
end)


-- RegisterNetEvent('pinkFrog_syncClonePed', function(open, inv)
--     if open then 
--         TriggerEvent('pinkFrog:startClonedPedByOx')
--         if client.screenblur then 
--             TriggerScreenblurFadeOut(0) 
--         end
--         SendNUIMessage({
--             action = 'displayDivider',  
--             data = { visible = false }
--         })
--     else
      
--             SendNUIMessage({
--                 action = 'displayDivider',  
--                 data = { visible = true }
--             })
   
--         if client.screenblur then 
--             TriggerScreenblurFadeOut(0) 
--         end
--         TriggerEvent('pinkFrog:removeClonedPedFromOxInventory') 
--     end
-- end)
