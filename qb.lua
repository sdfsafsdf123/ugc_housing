if Config.Framework ~= 'qb' then return end

QBCore = exports['qb-core']:GetCoreObject()

RegisterCallback = QBCore.Functions.CreateCallback
CreateUsableItem = QBCore.Functions.CreateUseableItem

function ShowNotification(src, text, notifyType)
    if notifyType == 'inform' then notifyType = 'primary' end
    TriggerClientEvent('QBCore:Notify', src, text, notifyType)
end

function GetPlayerFromId(playerId)
    return QBCore.Functions.GetPlayer(playerId)
end

function GetPlayerFromIdentifier(identifier)
    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function GetSource(player)
    return player.PlayerData.source
end

function GetIdentifier(player)
    return player.PlayerData.citizenid
end

function GetCurrentPlayers()
    return QBCore.Functions.GetPlayers()
end

function IsAdmin(playerId)
    if IsPlayerAceAllowed(playerId, 'command') then return true end

    for group in pairs(Config.AdminGroups) do
        if QBCore.Functions.HasPermission(playerId, group) then
            return true
        end
    end

    return false
end

function IsInGroup(player, groups)
    local src = GetSource(player)

    for _,group in ipairs(groups) do
        if QBCore.Functions.HasPermission(src, group) then return true end
    end

    return false
end

function GetCharName(identifier)
    local targetPlayer = GetPlayerFromIdentifier(identifier)
    if targetPlayer then
        local name = ('%s %s'):format(targetPlayer.PlayerData.charinfo.firstname, targetPlayer.PlayerData.charinfo.lastname)
        return name
    end

	local result = MySQL.Sync.fetchAll('SELECT charinfo FROM players where citizenid = ?', {identifier})
    local charinfo = result?[1] and json.decode(result[1].charinfo)
    if not charinfo then return nil end
    local name = ('%s %s'):format(charinfo.firstname, charinfo.lastname)

    return name
end

function GetCharNames(identifiers)
    local names = {}
    local offline = {}
    local seen = {}

    for _, identifier in ipairs(identifiers) do
        if not seen[identifier] then
            seen[identifier] = true
            local targetPlayer = GetPlayerFromIdentifier(identifier)
            if targetPlayer then
                names[identifier] = ('%s %s'):format(targetPlayer.PlayerData.charinfo.firstname, targetPlayer.PlayerData.charinfo.lastname)
            else
                offline[#offline+1] = identifier
            end
        end
    end

    if #offline == 0 then return names end

    local placeholders = ('?,'):rep(#offline):sub(1, -2)
    local result = MySQL.Sync.fetchAll('SELECT citizenid, charinfo FROM players WHERE citizenid IN (' .. placeholders .. ')', offline)
    for _, row in ipairs(result or {}) do
        local charinfo = json.decode(row.charinfo)
        if charinfo then
            names[row.citizenid] = ('%s %s'):format(charinfo.firstname, charinfo.lastname)
        end
    end

    return names
end

function IsOnDuty(player)
    return true --player.PlayerData.job.onduty
end

function GetJob(player)
    return player.PlayerData.job
end

function GetJobName(player)
    return player.PlayerData.job.name
end

function GetGradeId(player)
    return player.PlayerData.job.grade.level
end

function SetJob(player, job, grade)
    player.Functions.SetJob(job, grade)
end

function IsBoss(player, page)
    local grade = GetGradeId(player)
    local job = GetJobName(player)
    return Config.Jobs?[page]?[job] and grade >= Config.Jobs[page][job]
end

function GetAccountMoney(player, account)
    if account == 'money' then account = 'cash' end
    return player.Functions.GetMoney(account)
end

function AddAccountMoney(player, account, amount)
    if account == 'money' then account = 'cash' end
    player.Functions.AddMoney(account, amount)
end

function RemoveAccountMoney(player, account, amount)
    if account == 'money' then account = 'cash' end
    player.Functions.RemoveMoney(account, amount)
end

function UpdatePlayerBankBalance(identifier, amount)
    local result = MySQL.Sync.fetchAll('SELECT money FROM players WHERE citizenid = ?', {identifier})
    if not result?[1]?.money then
        return false
    end

    local accounts = json.decode(result[1].money)

    if type(accounts) ~= 'table' or type(accounts.bank) ~= 'number' then
        return false
    end

    if amount < 0 and accounts.bank < math.abs(amount) then
        return false
    end

    accounts.bank += amount
    MySQL.Sync.execute('UPDATE players SET money = ? WHERE citizenid = ?', {json.encode(accounts), identifier})

    return true
end

function GetItemAmount(player, item)
    if item == 'money' then
        return GetAccountMoney(player, item)
    end
    if Config.Inventory == 'ox' then
        local count = exports.ox_inventory:Search(GetSource(player), 'count', item)
        return type(count) == 'number' and count or 0
    end

    local invItem = player.Functions.GetItemByName(item)
    return invItem?.amount or invItem?.count or 0
end

function GetWeaponAmount(player, item)
    return GetItemAmount(player, item) > 0 and 1 or nil
end

function CanCarryItem(player, item, amount)
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:CanCarryItem(GetSource(player), item, amount)
    end

    if Config.Inventory == 'qs' then
        return exports['qs-inventory']:CanCarryItem(GetSource(player), item, amount) == true
    end

    if Config.Inventory == 'qb_new' then
        return exports['qb-inventory']:CanAddItem(GetSource(player), item, amount) == true
    end

    if Config.Inventory == 'qb_old' then
        if not QBCore then return true end

        if not player?.Functions or not player.PlayerData?.items then return true end

        local maxWeight = QBCore.Config.Player?.MaxWeight
        local maxSlots = QBCore.Config.Player?.MaxInvSlots
        local itemWeight = QBCore.Shared?.Items?[item]?.weight
        if not maxWeight or not maxSlots or not itemWeight or not QBCore.Player?.GetTotalWeight then return true end

        local totalWeight = QBCore.Player.GetTotalWeight(player.PlayerData.items)
        if totalWeight + itemWeight * amount > maxWeight then return false end

        local usedSlots = 0
        for _ in pairs(player.PlayerData.items) do usedSlots += 1 end

        return usedSlots + amount <= maxSlots
    end

    return true
end

function AddItem(player, item, amount, metadata)
    if item == 'money' then
        return AddAccountMoney(player, item, amount)
    end

    if Config.Inventory == 'ox' then
        exports.ox_inventory:AddItem(GetSource(player), item, amount, metadata)
        return
    end

    if Config.Inventory == 'qs' then
        exports['qs-inventory']:AddItem(GetSource(player), item, amount, nil, metadata)
        return
    end

    if Config.Inventory == 'qb_new' then
        exports['qb-inventory']:AddItem(GetSource(player), item, amount, nil, metadata, 'tk_housing')
        TriggerClientEvent('inventory:client:ItemBox', player.PlayerData.source, QBCore.Shared.Items[item], 'add')
        return
    end

    player.Functions.AddItem(item, amount, nil, metadata)
    TriggerClientEvent('inventory:client:ItemBox', player.PlayerData.source, QBCore.Shared.Items[item], 'add')
end

function GetItemSlots(player, item)
    local slots = {}

    if Config.Inventory == 'ox' then
        local found = exports.ox_inventory:Search(GetSource(player), 'slots', item)
        return type(found) == 'table' and found or slots
    elseif Config.Inventory == 'qs' then
        local inventory = exports['qs-inventory']:GetInventory(GetSource(player))
        if type(inventory) == 'table' then
            for itemSlot, entry in pairs(inventory) do
                if entry.name == item then
                    slots[#slots + 1] = { slot = entry.slot or itemSlot, count = entry.amount, metadata = entry.info }
                end
            end
        end
    elseif Config.Inventory == 'qb_old' then
        for itemSlot, entry in pairs(player.PlayerData?.items or {}) do
            if entry.name == item then
                slots[#slots + 1] = { slot = entry.slot or itemSlot, count = entry.amount, metadata = entry.info }
            end
        end
    elseif Config.Inventory == 'qb_new' then
        local found = exports['qb-inventory']:GetItemsByName(GetSource(player), item)
        if type(found) == 'table' then
            for _, entry in pairs(found) do
                slots[#slots + 1] = { slot = entry.slot, count = entry.amount, metadata = entry.info }
            end
        end
    end

    return slots
end

function RemoveItemFromSlot(player, item, slot)
    if Config.Inventory == 'ox' then
        return exports.ox_inventory:RemoveItem(GetSource(player), item, 1, nil, slot) == true
    elseif Config.Inventory == 'qs' then
        return exports['qs-inventory']:RemoveItem(GetSource(player), item, 1, slot, nil) ~= false
    elseif Config.Inventory == 'qb_old' then
        if not player?.Functions then return false end
        return player.Functions.RemoveItem(item, 1, slot) == true
    elseif Config.Inventory == 'qb_new' then
        return exports['qb-inventory']:RemoveItem(GetSource(player), item, 1, slot, 'tk_housing') == true
    end

    return false
end

function RemoveItem(player, item, amount)
    if item == 'money' then
        return RemoveAccountMoney(player, item, amount)
    end

    player.Functions.RemoveItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', player.PlayerData.source, QBCore.Shared.Items[item], 'remove')
end

function TryRemoveItem(player, item, amount)
    if GetItemAmount(player, item) < amount then return false end
    if Config.Inventory == 'ox' then
        local success = exports.ox_inventory:RemoveItem(GetSource(player), item, amount)
        return success == true
    end
    return player.Functions.RemoveItem(item, amount) == true
end

function GetItemLabel(item)
    return QBCore.Shared.Items?[string.lower(item)]?.label or item
end

RegisterCallback('tk_housing:getCharName', function(src, cb)
	cb(GetCharName(GetIdentifier(GetPlayerFromId(src))))
end)

AddEventHandler('QBCore:Server:PlayerLoaded', function(player)
    PlayerLoaded(player.PlayerData.source, nil)
end)

CreateThread(function()
    repeat Wait(100) until QBCore

    frameworkLoaded = true
end)
