if Config.Framework ~= 'esx' then return end

ESX = exports["es_extended"]:getSharedObject()

RegisterCallback = ESX.RegisterServerCallback
CreateUsableItem = ESX.RegisterUsableItem

function ShowNotification(src, text, notifyType)
    TriggerClientEvent('esx:showNotification', src, text)
end

function GetPlayerFromId(playerId)
    return ESX.GetPlayerFromId(playerId)
end

function GetPlayerFromIdentifier(identifier)
    return ESX.GetPlayerFromIdentifier(identifier)
end

function GetSource(xPlayer)
    return xPlayer.source
end

function GetIdentifier(xPlayer)
    return xPlayer.identifier
end

function GetCurrentPlayers()
    return ESX.GetPlayers()
end

function IsAdmin(playerId)
    if IsPlayerAceAllowed(playerId, 'command') then return true end

    local xPlayer = GetPlayerFromId(playerId)
    return Config.AdminGroups[xPlayer.getGroup()]
end

function IsInGroup(xPlayer, groups)
    local group = xPlayer.getGroup()

    for _,name in ipairs(groups) do
        if name == group then return true end
    end

    return false
end

function GetCharName(identifier)
    local xTarget = GetPlayerFromIdentifier(identifier)
    if xTarget then return xTarget.getName() end

	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users where identifier = ?', {identifier})
    if not result?[1] then return nil end
    local name = ('%s %s'):format(result[1].firstname, result[1].lastname)

    return name
end

function GetCharNames(identifiers)
    local names = {}
    local offline = {}
    local seen = {}

    for _, identifier in ipairs(identifiers) do
        if not seen[identifier] then
            seen[identifier] = true
            local xTarget = GetPlayerFromIdentifier(identifier)
            if xTarget then
                names[identifier] = xTarget.getName()
            else
                offline[#offline+1] = identifier
            end
        end
    end

    if #offline == 0 then return names end

    local placeholders = ('?,'):rep(#offline):sub(1, -2)
    local result = MySQL.Sync.fetchAll('SELECT identifier, firstname, lastname FROM users WHERE identifier IN (' .. placeholders .. ')', offline)
    for _, row in ipairs(result or {}) do
        names[row.identifier] = ('%s %s'):format(row.firstname, row.lastname)
    end

    return names
end

function IsOnDuty(xPlayer)
    return true
end

function GetJob(xPlayer)
    return xPlayer.job
end

function GetJobName(xPlayer)
    return xPlayer.job.name
end

function GetGradeId(xPlayer)
    return xPlayer.job.grade
end

function SetJob(xPlayer, job, grade)
    xPlayer.setJob(job, grade)
end

function IsBoss(xPlayer, page)
    local grade = GetGradeId(xPlayer)
    local job = GetJobName(xPlayer)
    return Config.Jobs?[page]?[job] and grade >= Config.Jobs[page][job]
end

function GetAccountMoney(xPlayer, account)
    return xPlayer.getAccount(account).money
end

function AddAccountMoney(xPlayer, account, amount)
    xPlayer.addAccountMoney(account, amount)
end

function RemoveAccountMoney(xPlayer, account, amount)
    xPlayer.removeAccountMoney(account, amount)
end

function UpdatePlayerBankBalance(identifier, amount)
    local result = MySQL.Sync.fetchAll('SELECT accounts FROM users WHERE identifier = ?', {identifier})
    local accounts = json.decode(result?[1]?.accounts)

    if type(accounts) ~= 'table' or type(accounts.bank) ~= 'number' then
        return false
    end

    if amount < 0 and accounts.bank < math.abs(amount) then
        return false
    end

    accounts.bank += amount
    MySQL.Sync.fetchAll('UPDATE users SET accounts = ? WHERE identifier = ?', {json.encode(accounts), identifier})

    return true
end

function GetItemAmount(xPlayer, item)
    if Config.Inventory == 'ox' then
        local count = exports.ox_inventory:Search(GetSource(xPlayer), 'count', item)
        return type(count) == 'number' and count or 0
    end
    if Config.Inventory == 'default' and Utils.IsWeapon(item) then
        local has = xPlayer.getWeapon(item)
        return has
    end

    local xItem = xPlayer.getInventoryItem(item)
    return xItem?.count or xItem?.amount or 0
end

function GetWeaponAmount(xPlayer, item)
    local _, weapon = xPlayer.getWeapon(item)
    return weapon?.ammo
end

function CanCarryItem(xPlayer, item, amount)
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:CanCarryItem(GetSource(xPlayer), item, amount)
    end

    if Config.Inventory == 'qs' then
        return exports['qs-inventory']:CanCarryItem(GetSource(xPlayer), item, amount) == true
    end

    if Config.Inventory == 'default' and Utils.IsWeapon(item) then
        local weapon = xPlayer.getWeapon(item)
        return not weapon
    end

    return xPlayer.canCarryItem(item, amount)
end

function AddItem(xPlayer, item, amount, metadata)
    if Config.Inventory == 'ox' then
        exports.ox_inventory:AddItem(GetSource(xPlayer), item, amount, metadata)
        return
    end

    if Config.Inventory == 'qs' then
        exports['qs-inventory']:AddItem(GetSource(xPlayer), item, amount, nil, metadata)
        return
    end

    if Config.Inventory == 'default' and Utils.IsWeapon(item) then
        xPlayer.addWeapon(item, amount)
        return
    end

    xPlayer.addInventoryItem(item, amount)
end

function GetItemSlots(xPlayer, item)
    local slots = {}

    if Config.Inventory == 'ox' then
        local found = exports.ox_inventory:Search(GetSource(xPlayer), 'slots', item)
        return type(found) == 'table' and found or slots
    elseif Config.Inventory == 'qs' then
        local inventory = exports['qs-inventory']:GetInventory(GetSource(xPlayer))
        if type(inventory) == 'table' then
            for itemSlot, entry in pairs(inventory) do
                if entry.name == item then
                    slots[#slots + 1] = { slot = entry.slot or itemSlot, count = entry.amount, metadata = entry.info }
                end
            end
        end
    end

    return slots
end

function RemoveItemFromSlot(xPlayer, item, slot)
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:RemoveItem(GetSource(xPlayer), item, 1, nil, slot) == true
    elseif Config.Inventory == 'qs' then
        return exports['qs-inventory']:RemoveItem(GetSource(xPlayer), item, 1, slot, nil) ~= false
    end

    return false
end

function RemoveItem(xPlayer, item, amount)
    if Config.Inventory == 'default' and Utils.IsWeapon(item) then
        xPlayer.removeWeapon(item, amount)
        return
    end

    xPlayer.removeInventoryItem(item, amount)
end

function TryRemoveItem(xPlayer, item, amount)
    if GetItemAmount(xPlayer, item) < amount then return false end
    if Config.Inventory == 'ox' then
        local success = exports.ox_inventory:RemoveItem(GetSource(xPlayer), item, amount)
        return success == true
    end
    RemoveItem(xPlayer, item, amount)
    return true
end

function GetItemLabel(item)
    if Config.Inventory == 'default' and Utils.IsWeapon(item) then
        return ESX.GetWeaponLabel(item) or item
    end

    return ESX.GetItemLabel(item) or item
end

RegisterCallback('tk_housing:getItemLabel', function(src, cb, item)
	cb(GetItemLabel(item))
end)

RegisterCallback('tk_housing:getCharName', function(src, cb)
	cb(GetCharName(GetIdentifier(GetPlayerFromId(src))))
end)

AddEventHandler('esx:playerLoaded', function(playerId, xPlayer, isNew)
    PlayerLoaded(playerId, isNew)
end)

CreateThread(function()
    repeat Wait(100) until ESX

    frameworkLoaded = true
end)
