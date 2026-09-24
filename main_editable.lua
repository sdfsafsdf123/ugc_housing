---@param src number
---@param text string
---@param notifyType string
function Notify(src, text, notifyType)
    TriggerClientEvent('tk_housing:notify', src, text, notifyType)
end

---@param message string
function Webhook(message)
    if not ConfigSV.WebhookLink or ConfigSV.WebhookLink == '' then return end

    if #message > 3900 then
        message = message:sub(1, 3900) .. '\n... (truncated)'
    end

    local msg = {{title = '**' .. _U('webhook_title') .. '**', description = message, footer = { text = os.date('%d.%m.%y Time: %X')}}}
    PerformHttpRequest(ConfigSV.WebhookLink, function(err, text, headers) end, 'POST', json.encode({embeds = msg}), {['Content-Type'] = 'application/json'})
end

local UPLOAD_URL = 'https://api.fivemanage.com/api/v3/file/base64'

---Uploads a jpeg or png data url and calls back with its hosted url
---@param dataUrl string photo as a data:image/jpeg or data:image/png base64 url
---@param filename string name for the upload, ending in .jpg or .png
---@param cb function called with the hosted https url, or nil when the upload failed
function UploadPhoto(dataUrl, filename, cb)
    PerformHttpRequest(UPLOAD_URL, function(code, text)
        if code < 200 or code >= 300 then
            Utils.Debug('photo upload failed', code, text)
            cb(nil)
            return
        end

        local ok, data = pcall(json.decode, text)
        local url = ok and type(data) == 'table' and data.data?.url
        if type(url) ~= 'string' or url:sub(1, 8) ~= 'https://' then
            Utils.Debug('photo upload gave no https url', text)
            cb(nil)
            return
        end
        cb(url)
    end, 'POST', json.encode({ base64 = dataUrl, filename = filename }), {
        ['Authorization'] = ConfigSV.FivemanageToken,
        ['Content-Type'] = 'application/json',
    })
end

---Called when an alarm triggers a break-in and the property has the dispatch link
---Edit to report it to your dispatch or phone resource, never called for a raid
---@param propertyId number index of the property
---@param alarmType 'lockpick' | 'entry' | 'storage' the type of break-in that was detected
---@param coords table|nil property coords {x, y, z}, nil when the property has no door
---@param name string the property's display name (or address, when it has no name)
function ReportBreakIn(propertyId, alarmType, coords, name)
    if type(coords) ~= 'table' then return end

    if Config.Dispatch == 'tk' and GetResourceState('tk_dispatch') == 'started' then
        exports.tk_dispatch:addCall({
            title = _U('security_dispatch_title'),
            message = _U('security_dispatch_message', name),
            coords = vec3(coords.x, coords.y, coords.z),
            jobs = {'police'},
            blip = { color = 3, sprite = 357, scale = 1.0 },
            playSound = true,
        })
    elseif Config.Dispatch == 'cd' and GetResourceState('cd_dispatch') == 'started' then
        TriggerEvent('cd_dispatch:AddNotification', {
            job_table = {'police'},
            coords = vec3(coords.x, coords.y, coords.z),
            title = _U('security_dispatch_title'),
            message = _U('security_dispatch_message', name),
            flash = 0,
            sound = 1,
            blip = {
                sprite = 431,
                scale = 1.2,
                colour = 3,
                flashes = false,
                text = _U('security_dispatch_title'),
                time = 5,
                radius = 0,
            },
        })
    end
end

---Called when one or more properties are created
---@param playerId number id of the player who created the properties
---@param propertyIds table ids of the properties that were created
---@param propertyData table data of the properties that were created
function PropertyCreated(playerId, propertyIds, propertyData)

end

---Takes the payment when a player buys or rents a property
---@param playerId number id of the player who is purchasing the property
---@param price number price of the property
---@param propertyId number index of the property
---@param propertyData table data of the property
---@param moneyType 'money' | 'bank' account to take the money from
---@param purchaseType 'rent' | 'price' price when buying, rent when renting
---@return boolean success whether the property was purchased/rented successfully
function PurchaseProperty(playerId, price, propertyId, propertyData, moneyType, purchaseType)
    local xPlayer = GetPlayerFromId(playerId)
    RemoveAccountMoney(xPlayer, moneyType, price)

    local propertyOwner = propertyData.owner
    if propertyOwner then
        UpdatePlayerBankBalance(propertyOwner, price)
    end

    return true
end

---Called when a property is sold back
---@param playerId number id of the player who sold the property
---@param propertyId number index of the property
---@param price number amount the seller was paid
---@param moneyType 'money' | 'bank' money type the seller was paid in
function SoldProperty(playerId, propertyId, price, moneyType)

end

---Charges rent or a bill off a property owner's bank, online or offline
---@param identifier string identifier of the owner to charge
---@param amount number amount to deduct
---@return boolean success whether the charge went through
function PayBill(identifier, amount)
    local xPlayer = GetPlayerFromIdentifier(identifier)
    if not xPlayer then
        return UpdatePlayerBankBalance(identifier, -amount)
    end

    if GetAccountMoney(xPlayer, 'bank') >= amount then
        RemoveAccountMoney(xPlayer, 'bank', amount)
        return true
    end

    return false
end

---Returns the outdoor temperature when Config.Temperature.outdoor.source is 'custom'
---Edit to read it from your own weather script, return nothing to use Config.Temperature.outdoor
---@param propertyId number index of the property
---@param area 'house' | 'garage' part of the property asking
---@return number? temperature outdoor temperature in degrees Celsius
function GetOutdoorTemperature(propertyId, area)
    return nil
end

---Charges the rent for a property
---@param identifier string identifier of the player who is paying the rent
---@param rentAmount number amount of the rent to pay
---@return boolean success whether the rent was paid successfully
function PayRent(identifier, rentAmount)
    return PayBill(identifier, rentAmount)
end

---Called when a player purchases furniture (checkout cart)
---@param playerId number server id of the player
---@param propertyId number index of the property
---@param furnitureType string type of the furniture
---@param model string|number model of the furniture
function PurchasedFurniture(playerId, propertyId, furnitureType, model)

end

---Checks whether a player can transfer a property to another player
---@param playerId number id of the player who is transferring the property
---@param targetId number id of the player who is receiving the property
---@param propertyId number index of the property
---@return boolean canTransfer whether the property can be transferred
function CanTransferProperty(playerId, targetId, propertyId)
    return true
end

---Called when the player is entering a house
---@param playerId number id of the player
---@param propertyId number index of the property
---@param isPreviewing boolean whether the player is only previewing the property
function EnteringHouse(playerId, propertyId, isPreviewing)
    SetRoutingBucketPopulationEnabled(propertyId, false)
    SetPlayerRoutingBucket(playerId, propertyId)
end

---Called when the player is leaving a house
---@param playerId number id of the player
---@param propertyId number index of the property
function LeavingHouse(playerId, propertyId)
    SetPlayerRoutingBucket(playerId, 0)
end

---Called when the player is entering a garage
---@param playerId number id of the player
---@param propertyId number index of the property
---@param isPreviewing boolean whether the player is only previewing the property
---@param vehNetId number|nil network id of the vehicle the player entered with
---@param isPassanger boolean|nil whether the player entered as a passenger
function EnteringGarage(playerId, propertyId, isPreviewing, vehNetId, isPassanger)
    SetRoutingBucketPopulationEnabled(propertyId, false)
    SetPlayerRoutingBucket(playerId, propertyId)
end

---Called when the player is leaving a garage
---@param playerId number id of the player
---@param propertyId number index of the property
---@param isPreviewing boolean|nil whether the player was only previewing the property
---@param vehNetId number|nil network id of the vehicle the player left with
function LeavingGarage(playerId, propertyId, isPreviewing, vehNetId)
    SetPlayerRoutingBucket(playerId, 0)
end

---Called when a player opens the front door camera feed
---@param playerId number id of the player
---@param propertyId number index of the property
---@param propertyType 'house' | 'garage' part of the property the camera watches
function OpeningCamera(playerId, propertyId, propertyType)
    SetPlayerRoutingBucket(playerId, 0)
end

---Called when a player closes the front door camera feed
---@param playerId number id of the player
---@param propertyId number index of the property
---@param propertyType 'house' | 'garage' part of the property the camera watches
function ClosingCamera(playerId, propertyId, propertyType)
    SetPlayerRoutingBucket(playerId, propertyId)
end

---Called when the first player into a garage spawns its vehicles
---@param playerId number id of the player who entered the garage
---@param vehicles table list of {netId, props} entries for the vehicles that were spawned
function SpawnedGarageVehicles(playerId, vehicles)
    if GetResourceState('qbx_vehiclekeys') == 'started' then
        for _,v in pairs(vehicles) do
            local vehicle = NetworkGetEntityFromNetworkId(v.netId)
            exports.qbx_vehiclekeys:GiveKeys(playerId, vehicle)
        end
    end

    if GetResourceState('qb-vehiclekeys') == 'started' then
        for _,v in pairs(vehicles) do
            local plate = Utils.Trim(v.props.plate)
            exports['qb-vehiclekeys']:GiveKeys(playerId, plate)
        end
    end
end

---Checks whether a player can put an item into a storage
---@param playerId number id of the player
---@param item string name of the item
---@param amount number amount of the item
---@param propertyId number index of the property
---@param furnitureType string type of the furniture the storage belongs to
---@param storageId number id of the storage
---@return boolean canPut whether the item can be put in the storage
function CanPutItemInStorage(playerId, item, amount, propertyId, furnitureType, storageId)
    return true
end

---Checks whether a player can take an item from a storage
---@param playerId number id of the player
---@param item string name of the item
---@param amount number amount of the item
---@param propertyId number index of the property
---@param furnitureType string type of the furniture the storage belongs to
---@param storageId number id of the storage
---@return boolean canTake whether the item can be taken from the storage
function CanTakeItemFromStorage(playerId, item, amount, propertyId, furnitureType, storageId)
    return true
end

---Checks whether a player can put an item into a real-estate business's office stash
---@param playerId number id of the player
---@param item string name of the item
---@param amount number amount of the item
---@param businessId number id of the business
---@return boolean canPut whether the item can be put in the stash
function CanPutItemInBusinessStash(playerId, item, amount, businessId)
    return true
end

---Checks whether a player can take an item from a real-estate business's office stash
---@param playerId number id of the player
---@param item string name of the item
---@param amount number amount of the item
---@param businessId number id of the business
---@return boolean canTake whether the item can be taken from the stash
function CanTakeItemFromBusinessStash(playerId, item, amount, businessId)
    return true
end

---Returns a player's inventory, only used for storages on esx
---@param playerId number id of the player
---@return table items list of {label, name, amount} entries
function GetPlayerInventory(playerId)
    if Config.Framework == 'qb' and Config.Inventory == 'default' then
        Utils.Warn('Config.Inventory is "default" which only works with Config.Framework = "esx", set Config.Inventory to "qb_old", "qb_new" or "ox" in config/config.lua')
        return {}
    end

    local xPlayer = GetPlayerFromId(playerId)
    local items = {}

    for _,v in pairs(xPlayer.inventory) do
        local amount = v.count or v.amount or 0

        if amount > 0 and not Utils.IsStorageBlacklisted(v.name) then
            items[#items+1] = {label = v.label, name = v.name, amount = amount}
        end
    end

    local money = GetAccountMoney(xPlayer, 'money')
    if not Utils.IsStorageBlacklisted('money') and money > 0 then
        items[#items+1] = {label = _U('money'), name = 'money', amount = money}
    end

    local blackMoney = GetAccountMoney(xPlayer, 'black_money')
    if not Utils.IsStorageBlacklisted('black_money') and blackMoney > 0 then
        items[#items+1] = {label = _U('black_money'), name = 'black_money', amount = blackMoney}
    end

    for _,v in pairs(xPlayer.loadout) do
        if not Utils.IsStorageBlacklisted(v.name) then
            items[#items+1] = {label = v.label, name = v.name, amount = v.ammo or 0}
        end
    end

    return items
end

---Returns extra data to attach to a weapon given from storage, passed on to GiveWeapon
---@param source number server id of the player taking the weapon out of storage
---@param weapon string weapon item name
---@param amount number ammo amount
---@return table|nil data additional weapon data, nil by default
function GetAdditionalWeaponData(source, weapon, amount)
    return
end

---Gives a weapon item to a player from storage, used on esx
---@param source number server id of the player receiving the weapon
---@param item string weapon item name
---@param amount number ammo amount
---@param data table|nil additional data returned by GetAdditionalWeaponData, use it to add attachments etc
function GiveWeapon(source, item, amount, data)
    local xPlayer = GetPlayerFromId(source)
    AddItem(xPlayer, item, amount)
end

local webhookTransactionKinds = { deposit = true, withdraw = true, adjust = true, sale = true, commission = true }

---Called when money moves in or out of a business
---Called for salaries and bills too, but those only reach the log, not Discord
---@param business table the business the money moved in or out of
---@param kind 'deposit' | 'withdraw' | 'salary' | 'salary_failed' | 'commission' | 'sale' | 'purchase' | 'bill' | 'adjust'
---@param amount number how much moved, positive means into the business
---@param actor string|nil the player behind it, if there was one
---@param note string|nil free text saved with the movement
function BusinessTransaction(business, kind, amount, actor, note)
    if not webhookTransactionKinds[kind] then return end

    Webhook(_U('webhook_action', actor or 'Server', 'Business Transaction', json.encode({ business = business.label, kind = kind, amount = amount, note = note }, { indent = true })))
end

---Registers a stash for a property storage or a business office
---@param stashName string name of the stash
---@param label string name shown on the stash
---@param slots number how many slots the stash has
---@param weight number how much the stash can hold
---@param coords vector3|nil point players must stand near to open the stash, nil = anywhere
function RegisterStash(stashName, label, slots, weight, coords)
    if Config.Inventory == 'ox' then
        exports.ox_inventory:RegisterStash(stashName, label, slots, weight, nil, nil, coords)
    end
end

---Checks whether a storage stash still has items in it before its furniture is removed
---@param stashName string name of the stash, the same name given to RegisterStash
---@return boolean|nil hasItems true keeps the furniture, false lets it be removed, nil skips the check
function StashHasItems(stashName)
    local items, countField
    if Config.Inventory == 'ox' then
        items = exports.ox_inventory:GetInventoryItems(stashName)
        if type(items) ~= 'table' then
            Utils.Warn('Could not read the stash from ox_inventory, keeping the furniture', stashName)
            return true
        end
        countField = 'count'
    elseif Config.Inventory == 'qs' then
        items = exports['qs-inventory']:GetStashItems(stashName) or {}
        countField = 'amount'
    elseif Config.Inventory == 'qb_new' then
        items = exports['qb-inventory']:GetInventory(stashName)?.items or {}
        countField = 'amount'
    elseif Config.Inventory == 'qb_old' then
        local rows = MySQL.Sync.fetchAll('SELECT items FROM stashitems WHERE stash = ?', { stashName })
        items = rows?[1]?.items and json.decode(rows[1].items) or {}
        countField = 'amount'
    else
        return nil
    end

    for _, item in pairs(items) do
        if (item[countField] or 0) > 0 then return true end
    end

    return false
end

---Gets the identifier of a vehicle's owner
---@param plate string vehicle plate
---@return string|nil owner identifier of the owner, nil if the vehicle has no owner
function GetVehicleOwner(plate)
    plate = Utils.Trim(plate)

    if Config.Framework == 'qb' then
        return MySQL.Sync.fetchScalar('SELECT citizenid FROM player_vehicles WHERE plate = ? LIMIT 1', {plate})
    end

    return MySQL.Sync.fetchScalar('SELECT owner FROM owned_vehicles WHERE plate = ? LIMIT 1', {plate})
end

local ownedVehiclesHasGarage = nil
local playerVehiclesHasGarage = nil

---Updates a vehicle's stored/garage state in the framework's vehicle table
---@param src number|nil server id of the vehicle's owner, nil when updated while offline
---@param plate string vehicle plate
---@param stored number|boolean whether the vehicle is stored
---@param garage string name written to the garage/parking column
function SetVehicleStored(src, plate, stored, garage)
    if Config.Framework == 'esx' then
        if ownedVehiclesHasGarage == nil then
            local result = MySQL.Sync.fetchAll('SHOW COLUMNS FROM owned_vehicles LIKE "garage"')
            ownedVehiclesHasGarage = #result > 0
        end
        if ownedVehiclesHasGarage then
            MySQL.Sync.execute('UPDATE owned_vehicles SET garage = ?, stored = ? WHERE plate = ?', {garage, stored, plate})
        else
            MySQL.Sync.execute('UPDATE owned_vehicles SET parking = ?, stored = ? WHERE plate = ?', {garage, stored, plate})
        end
    elseif Config.Framework == 'qb' then
        if playerVehiclesHasGarage == nil then
            local result = MySQL.Sync.fetchAll('SHOW COLUMNS FROM player_vehicles LIKE "garage"')
            playerVehiclesHasGarage = #result > 0
        end
        if playerVehiclesHasGarage then
            MySQL.Sync.execute('UPDATE player_vehicles SET garage = ?, state = ? WHERE plate = ?', {garage, stored, plate})
        else
            MySQL.Sync.execute('UPDATE player_vehicles SET parking = ?, state = ? WHERE plate = ?', {garage, stored, plate})
        end
    end
end

if Config.Commands.removeUnusedProperties and Config.Commands.removeUnusedProperties ~= '' then
    RegisterCommand(Config.Commands.removeUnusedProperties, function(src, args, raw)
        local days = tonumber(args[1]) or 30
        RemoveUnusedProperties(days)
    end, true)
end