local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = {}
OwnedFurniture = L0_1
L0_1 = {}
L1_1 = Config
L1_1 = L1_1.Furnishing
L1_1 = L1_1.acquisition
if "instant" == L1_1 then
  L1_1 = Config
  L1_1 = L1_1.Furnishing
  L1_1 = L1_1.buyAt
  L1_1 = L1_1.shop
  if not L1_1 then
    L1_1 = Config
    L1_1 = L1_1.Furnishing
    L1_1 = L1_1.fulfilment
    if "delivery" ~= L1_1 then
      goto lbl_34
    end
  end
  L1_1 = Utils
  L1_1 = L1_1.Warn
  L2_1 = "Config.Furnishing.buyAt.shop and fulfilment \"delivery\" only work with acquisition \"inventory\", falling back to instant/menu-only"
  L1_1(L2_1)
  L1_1 = Config
  L1_1 = L1_1.Furnishing
  L1_1 = L1_1.buyAt
  L1_1.shop = false
  L1_1 = Config
  L1_1 = L1_1.Furnishing
  L1_1.fulfilment = "instant"
end
::lbl_34::
L1_1 = OwnedFurniture
function L2_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Furnishing
  L0_2 = L0_2.acquisition
  L0_2 = "inventory" == L0_2
  return L0_2
end
L1_1.IsEnabled = L2_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Config
  L3_2 = L3_2.Furnishing
  L3_2 = L3_2.storage
  if "property" == L3_2 then
    L3_2 = "property"
    L4_2 = tostring
    L5_2 = A1_2
    L4_2, L5_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2
  end
  if not A2_2 then
    L3_2 = GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = GetIdentifier
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_24
        A2_2 = L4_2 or A2_2
      end
    end
    A2_2 = nil
  end
  ::lbl_24::
  L3_2 = "player"
  L4_2 = A2_2
  return L3_2, L4_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 > 0 then
      L8_2 = Utils
      L8_2 = L8_2.GetCatalogEntryByModel
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = #L1_2
        L9_2 = L9_2 + 1
        L10_2 = {}
        L10_2.model = L6_2
        L11_2 = L8_2.model
        L10_2.name = L11_2
        L11_2 = L8_2.label
        L10_2.label = L11_2
        L10_2.quantity = L7_2
        L1_2[L9_2] = L10_2
      end
    end
  end
  return L1_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Utils
  L2_2 = L2_2.GetCatalogEntryByModel
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = AddItem
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = Config
  L5_2 = L5_2.Furnishing
  L5_2 = L5_2.item
  L6_2 = 1
  L7_2 = {}
  L7_2.model = A1_2
  L8_2 = L2_2 or L8_2
  if L2_2 then
    L8_2 = L2_2.label
  end
  if not L8_2 then
    L8_2 = Config
    L8_2 = L8_2.Furnishing
    L8_2 = L8_2.item
  end
  L7_2.label = L8_2
  if L2_2 then
    L8_2 = _U
    L9_2 = "furniture_item_desc"
    L10_2 = L2_2.label
    L11_2 = Utils
    L11_2 = L11_2.GroupDigits
    L12_2 = L2_2.price
    if not L12_2 then
      L12_2 = 0
    end
    L11_2, L12_2 = L11_2(L12_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    if L8_2 then
      goto lbl_41
    end
  end
  L8_2 = nil
  ::lbl_41::
  L7_2.description = L8_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetItemSlots
  L4_2 = L2_2
  L5_2 = Config
  L5_2 = L5_2.Furnishing
  L5_2 = L5_2.item
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Utils
    L10_2 = L10_2.DoModelsMatch
    L11_2 = L9_2.metadata
    if L11_2 then
      L11_2 = L11_2.model
    end
    L12_2 = A1_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L10_2 = L9_2.count
      if not L10_2 then
        L10_2 = 0
      end
      if L10_2 > 0 then
        L10_2 = RemoveItemFromSlot
        L11_2 = L2_2
        L12_2 = Config
        L12_2 = L12_2.Furnishing
        L12_2 = L12_2.item
        L13_2 = L9_2.slot
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
        return L10_2, L11_2, L12_2, L13_2
      end
    end
  end
  L4_2 = false
  return L4_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetItemSlots
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.Furnishing
  L3_2 = L3_2.item
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.metadata
    if L10_2 then
      L10_2 = L10_2.model
    end
    if nil ~= L10_2 then
      L11_2 = L2_2[L10_2]
      if L11_2 then
        L12_2 = L11_2.quantity
        L13_2 = L9_2.count
        if not L13_2 then
          L13_2 = 1
        end
        L12_2 = L12_2 + L13_2
        L11_2.quantity = L12_2
      else
        L12_2 = Utils
        L12_2 = L12_2.GetCatalogEntryByModel
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L13_2 = {}
        L13_2.model = L10_2
        L14_2 = L12_2 or L14_2
        if L12_2 then
          L14_2 = L12_2.model
        end
        L13_2.name = L14_2
        L14_2 = L12_2 or L14_2
        if L12_2 then
          L14_2 = L12_2.label
        end
        if not L14_2 then
          L14_2 = L9_2.metadata
          if L14_2 then
            L14_2 = L14_2.label
          end
          if not L14_2 then
            L14_2 = Config
            L14_2 = L14_2.Furnishing
            L14_2 = L14_2.item
          end
        end
        L13_2.label = L14_2
        L14_2 = L9_2.count
        if not L14_2 then
          L14_2 = 1
        end
        L13_2.quantity = L14_2
        L2_2[L10_2] = L13_2
        L14_2 = #L3_2
        L14_2 = L14_2 + 1
        L3_2[L14_2] = L13_2
      end
    end
  end
  return L3_2
end
L6_1 = OwnedFurniture
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = OwnedFurniture
  L2_2 = L2_2.IsEnabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.Furnishing
  L2_2 = L2_2.storage
  if "player" == L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.InventorySupportsMetadata
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = L5_1
      L3_2 = A0_2
      return L2_2(L3_2)
    end
  end
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_1
  L5_2 = FurnitureStockDb
  L5_2 = L5_2.Get
  L6_2 = L2_2
  L7_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L4_2(L5_2, L6_2, L7_2)
end
L6_1.Get = L7_1
L6_1 = OwnedFurniture
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = OwnedFurniture
  L5_2 = L5_2.IsEnabled
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if "number" == L5_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  if not A3_2 then
    A3_2 = 1
  end
  L5_2 = Config
  L5_2 = L5_2.Furnishing
  L5_2 = L5_2.storage
  if "player" == L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.InventorySupportsMetadata
    L5_2 = L5_2()
    if L5_2 then
      if not A0_2 then
        return
      end
      L5_2 = 1
      L6_2 = A3_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = L3_1
        L10_2 = A0_2
        L11_2 = A2_2
        L9_2(L10_2, L11_2)
      end
      return
    end
  end
  L5_2 = L1_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = FurnitureStockDb
  L7_2 = L7_2.Add
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = A2_2
  L11_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L6_1.Add = L7_1
L6_1 = OwnedFurniture
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = OwnedFurniture
  L4_2 = L4_2.IsEnabled
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      goto lbl_13
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_13::
  if not A3_2 then
    A3_2 = 1
  end
  L4_2 = Config
  L4_2 = L4_2.Furnishing
  L4_2 = L4_2.storage
  if "player" == L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.InventorySupportsMetadata
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = 1
      L5_2 = A3_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = L4_1
        L9_2 = A0_2
        L10_2 = A2_2
        L8_2 = L8_2(L9_2, L10_2)
        if not L8_2 then
          L8_2 = 1
          L9_2 = L7_2 - 1
          L10_2 = 1
          for L11_2 = L8_2, L9_2, L10_2 do
            L12_2 = L3_1
            L13_2 = A0_2
            L14_2 = A2_2
            L12_2(L13_2, L14_2)
          end
          L8_2 = false
          return L8_2
        end
      end
      L4_2 = true
      return L4_2
    end
  end
  L4_2 = L1_1
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = FurnitureStockDb
  L6_2 = L6_2.TryTake
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = A3_2
  return L6_2(L7_2, L8_2, L9_2, L10_2)
end
L6_1.Take = L7_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = TriggerClientEvent
  L3_2 = "tk_housing:syncOwnedFurniture"
  L4_2 = A0_2
  L5_2 = OwnedFurniture
  L5_2 = L5_2.Get
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
SyncOwnedFurniture = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Permissions
  L3_2 = L3_2.HasPermission
  L4_2 = L2_2
  L5_2 = A1_2
  L6_2 = "furnish"
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = L7_2.permissions
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L3_2 = true
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = false
  ::lbl_27::
  return L3_2
end
L7_1 = OwnedFurniture
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = GetPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetProperties
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Permissions
    L9_2 = L9_2.DoesPlayerOwnHouse
    L10_2 = L1_2
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = Permissions
      L9_2 = L9_2.HasPermission
      L10_2 = L1_2
      L11_2 = L7_2
      L12_2 = "furnish"
      L13_2 = L8_2.permissions
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      if not L9_2 then
        goto lbl_51
      end
    end
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.id = L7_2
    L11_2 = L8_2.name
    if L11_2 then
      L11_2 = L8_2.name
      if "" ~= L11_2 then
        L11_2 = L8_2.name
        if L11_2 then
          goto lbl_49
        end
      end
    end
    L11_2 = L8_2.address
    ::lbl_49::
    L10_2.label = L11_2
    L2_2[L9_2] = L10_2
    ::lbl_51::
  end
  return L2_2
end
L7_1.OrderableProperties = L8_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" ~= L9_2 then
      L9_2 = nil
      return L9_2
    end
    L9_2 = Utils
    L9_2 = L9_2.GetCatalogEntryByModel
    L10_2 = L8_2.model
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L10_2 = nil
      return L10_2
    end
    L10_2 = math
    L10_2 = L10_2.floor
    L11_2 = tonumber
    L12_2 = L8_2.quantity
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2(L11_2)
    if L10_2 < 1 then
      L11_2 = nil
      return L11_2
    end
    L11_2 = Utils
    L11_2 = L11_2.NormalizeModelHash
    L12_2 = type
    L13_2 = L8_2.model
    L12_2 = L12_2(L13_2)
    if "string" == L12_2 then
      L12_2 = joaat
      L13_2 = L8_2.model
      L12_2 = L12_2(L13_2)
      if L12_2 then
        goto lbl_56
      end
    end
    L12_2 = L8_2.model
    ::lbl_56::
    L11_2 = L11_2(L12_2)
    L12_2 = #L1_2
    L12_2 = L12_2 + 1
    L13_2 = {}
    L13_2.model = L11_2
    L13_2.quantity = L10_2
    L1_2[L12_2] = L13_2
    L12_2 = L9_2.price
    if not L12_2 then
      L12_2 = 0
    end
    L12_2 = L12_2 * L10_2
    L2_2 = L2_2 + L12_2
  end
  L3_2 = #L1_2
  if 0 == L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 <= 0 then
    L2_2 = true
    return L2_2
  end
  L2_2 = GetAccountMoney
  L3_2 = A0_2
  L4_2 = "money"
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 <= L2_2 then
    L2_2 = RemoveAccountMoney
    L3_2 = A0_2
    L4_2 = "money"
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = GetAccountMoney
  L3_2 = A0_2
  L4_2 = "bank"
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 <= L2_2 then
    L2_2 = RemoveAccountMoney
    L3_2 = A0_2
    L4_2 = "bank"
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L9_1 = RegisterCallback
L10_1 = "tk_housing:orderFurniture"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = OwnedFurniture
  L4_2 = L4_2.IsEnabled
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = false
    return L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.Furnishing
  L4_2 = L4_2.fulfilment
  L4_2 = "delivery" == L4_2
  if L4_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if "number" == L5_2 then
      L5_2 = Main
      L5_2 = L5_2.GetProperty
      L6_2 = A2_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_44
      end
    end
    L5_2 = Utils
    L5_2 = L5_2.Debug
    L6_2 = "Got a property id that does not exist when ordering furniture"
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
    L5_2 = A1_2
    L6_2 = false
    do return L5_2(L6_2) end
    ::lbl_44::
    L5_2 = L6_1
    L6_2 = A0_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = Permissions
      L5_2 = L5_2.DenyCheater
      L6_2 = A0_2
      L7_2 = GetPlayerFromId
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      L8_2 = "orderFurniture"
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A1_2
      L6_2 = false
      return L5_2(L6_2)
    end
  else
    A2_2 = nil
  end
  L5_2 = L7_1
  L6_2 = A3_2
  L5_2, L6_2 = L5_2(L6_2)
  if not L5_2 then
    L7_2 = Utils
    L7_2 = L7_2.Debug
    L8_2 = "Got a furniture order with bad items, did not place it"
    L9_2 = A2_2
    L10_2 = A3_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A1_2
    L8_2 = false
    return L7_2(L8_2)
  end
  L7_2 = L0_1
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = A1_2
    L8_2 = false
    return L7_2(L8_2)
  end
  L7_2 = L0_1
  L7_2[A0_2] = true
  L7_2 = GetPlayerFromId
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L8_1
  L9_2 = L7_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = L0_1
    L8_2[A0_2] = nil
    L8_2 = Notify
    L9_2 = A0_2
    L10_2 = _U
    L11_2 = "not_enough_money"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A1_2
    L9_2 = false
    return L8_2(L9_2)
  end
  L8_2 = pcall
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = Config
    L0_3 = L0_3.Furnishing
    L0_3 = L0_3.fulfilment
    if "delivery" == L0_3 then
      L0_3 = os
      L0_3 = L0_3.time
      L0_3 = L0_3()
      L1_3 = math
      L1_3 = L1_3.floor
      L2_3 = Config
      L2_3 = L2_3.Furnishing
      L2_3 = L2_3.delivery
      L2_3 = L2_3.time
      L2_3 = L2_3 / 1000
      L1_3 = L1_3(L2_3)
      L0_3 = L0_3 + L1_3
      L1_3 = DeliveryDb
      L1_3 = L1_3.Insert
      L2_3 = GetIdentifier
      L3_3 = L7_2
      L2_3 = L2_3(L3_3)
      L3_3 = A2_2
      L4_3 = L5_2
      L5_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if L1_3 then
        L2_3 = OwnedFurniture
        L2_3 = L2_3.ScheduleDelivery
        L3_3 = {}
        L3_3.id = L1_3
        L4_3 = GetIdentifier
        L5_3 = L7_2
        L4_3 = L4_3(L5_3)
        L3_3.identifier = L4_3
        L4_3 = A2_2
        L3_3.propertyId = L4_3
        L4_3 = L5_2
        L3_3.items = L4_3
        L3_3.arriveAt = L0_3
        L3_3.status = "pending"
        L2_3(L3_3)
      end
      L2_3 = Notify
      L3_3 = A0_2
      L4_3 = _U
      L5_3 = "delivery_scheduled"
      L4_3 = L4_3(L5_3)
      L5_3 = "success"
      L2_3(L3_3, L4_3, L5_3)
    else
      L0_3 = ipairs
      L1_3 = L5_2
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = OwnedFurniture
        L6_3 = L6_3.Add
        L7_3 = A0_2
        L8_3 = A2_2
        L9_3 = L5_3.model
        L10_3 = L5_3.quantity
        L6_3(L7_3, L8_3, L9_3, L10_3)
      end
      L0_3 = SyncOwnedFurniture
      L1_3 = A0_2
      L2_3 = A2_2
      L0_3(L1_3, L2_3)
      L0_3 = Notify
      L1_3 = A0_2
      L2_3 = _U
      L3_3 = "order_placed"
      L4_3 = Utils
      L4_3 = L4_3.GroupDigits
      L5_3 = L6_2
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3(L5_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L3_3 = "success"
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L8_2, L9_2 = L8_2(L9_2)
  L10_2 = L0_1
  L10_2[A0_2] = nil
  if not L8_2 then
    L10_2 = Utils
    L10_2 = L10_2.Warn
    L11_2 = "Player was charged for a furniture order but fulfillment failed"
    L12_2 = A0_2
    L13_2 = A2_2
    L14_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L10_2 = Webhook
  L11_2 = _U
  L12_2 = "webhook_action"
  L13_2 = Utils
  L13_2 = L13_2.GetIdentifiers
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  L14_2 = "Order Furniture"
  L15_2 = json
  L15_2 = L15_2.encode
  L16_2 = {}
  L16_2.propertyId = A2_2
  L16_2.total = L6_2
  L16_2.items = L5_2
  L17_2 = {}
  L17_2.indent = true
  L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2)
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2 = A1_2
  L11_2 = true
  L10_2(L11_2)
end
L9_1(L10_1, L11_1)
L9_1 = {}
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = next
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = L9_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = L9_1
    L3_2[A0_2] = A1_2
    return
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L2_2[L7_2] = true
  end
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Utils
  L1_2 = L1_2.GetPropertyBlipCoords
  L2_2 = Main
  L2_2 = L2_2.properties
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = {}
    L3_2 = L1_2.x
    L2_2.x = L3_2
    L3_2 = L1_2.y
    L2_2.y = L3_2
    L3_2 = L1_2.z
    L2_2.z = L3_2
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = nil
  ::lbl_20::
  L3_2 = ipairs
  L4_2 = Main
  L4_2 = L4_2.GetPropertyPlayers
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = TriggerClientEvent
    L10_2 = "tk_housing:deliveryArrived"
    L11_2 = L8_2
    L12_2 = A0_2
    L13_2 = L2_2
    L14_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.owner
  end
  if L4_2 then
    L4_2 = GetPlayerFromIdentifier
    L5_2 = L3_2.owner
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = GetSource
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = TriggerClientEvent
      L7_2 = "tk_housing:deliveryArrived"
      L8_2 = L5_2
      L9_2 = A0_2
      L10_2 = L2_2
      L11_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L9_1
  L2_2[A0_2] = nil
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 then
      L1_3 = L2_2
      L1_3 = L1_3[A0_3]
      if not L1_3 then
        L1_3 = L2_2
        L1_3[A0_3] = true
        L1_3 = TriggerClientEvent
        L2_3 = "tk_housing:deliveryArrived"
        L3_3 = A0_3
        L4_3 = A0_2
        L5_3 = nil
        L6_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    end
  end
  L4_2 = ipairs
  L5_2 = Main
  L5_2 = L5_2.GetPropertyPlayers
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L3_2
    L11_2 = L9_2
    L10_2(L11_2)
  end
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = L4_2.owner
  end
  if L5_2 then
    L5_2 = GetPlayerFromIdentifier
    L6_2 = L4_2.owner
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L3_2
      L7_2 = GetSource
      L8_2 = L5_2
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
  if A1_2 then
    L5_2 = L3_2
    L6_2 = A1_2
    L5_2(L6_2)
  end
end
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = Config
  L3_2 = L3_2.Furnishing
  L3_2 = L3_2.storage
  if "player" == L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.InventorySupportsMetadata
    L3_2 = L3_2()
    if L3_2 then
      if not A1_2 then
        L3_2 = false
        return L3_2
      end
      L3_2 = 0
      L4_2 = ipairs
      L5_2 = A0_2.items
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.quantity
        if not L10_2 then
          L10_2 = 1
        end
        L3_2 = L3_2 + L10_2
      end
      L4_2 = CanCarryItem
      L5_2 = GetPlayerFromId
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      L6_2 = Config
      L6_2 = L6_2.Furnishing
      L6_2 = L6_2.item
      L7_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      if not L4_2 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L3_2 = ipairs
  L4_2 = A0_2.items
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = OwnedFurniture
    L9_2 = L9_2.Add
    L10_2 = A1_2
    L11_2 = A0_2.propertyId
    L12_2 = L8_2.model
    L13_2 = L8_2.quantity
    L14_2 = A2_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = DeliveryDb
  L3_2 = L3_2.Delete
  L4_2 = A0_2.id
  L3_2(L4_2)
  if A1_2 then
    L3_2 = SyncOwnedFurniture
    L4_2 = A1_2
    L5_2 = A0_2.propertyId
    L3_2(L4_2, L5_2)
  end
  L3_2 = true
  return L3_2
end
L14_1 = RegisterNetEvent
L15_1 = "tk_housing:openDeliveryBox"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  L2_2 = OwnedFurniture
  L2_2 = L2_2.IsEnabled
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Furnishing
    L2_2 = L2_2.fulfilment
    if "delivery" == L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Main
    L2_2 = L2_2.GetProperty
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L2_2 = Properties
  L2_2 = L2_2.CanAccessProperty
  L3_2 = GetPlayerFromId
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = L6_1
    L3_2 = L1_2
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = Webhook
      L3_2 = _U
      L4_2 = "webhook_cheater"
      L5_2 = Utils
      L5_2 = L5_2.GetIdentifiers
      L6_2 = L1_2
      L5_2 = L5_2(L6_2)
      L6_2 = "Delivery box opened without access"
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      return
    end
  end
  L2_2 = L9_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = next
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_62
    end
  end
  do return end
  ::lbl_62::
  L3_2 = L9_1
  L3_2[A0_2] = nil
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = DeliveryDb
  L4_2 = L4_2.LoadPendingForProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L6_2 = false
  L7_2 = ipairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.id
    L13_2 = L2_2[L13_2]
    if L13_2 then
      L13_2 = L12_2.arriveAt
      if L3_2 >= L13_2 then
        L13_2 = L13_1
        L14_2 = L12_2
        L15_2 = L1_2
        L16_2 = nil
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        if L13_2 then
          L5_2 = true
          L13_2 = L12_2.id
          L2_2[L13_2] = nil
        else
          L6_2 = true
          break
        end
      end
    end
  end
  L7_2 = L10_1
  L8_2 = A0_2
  L9_2 = L2_2
  L7_2(L8_2, L9_2)
  if L6_2 then
    L7_2 = Notify
    L8_2 = L1_2
    L9_2 = _U
    L10_2 = "inventory_full"
    L9_2 = L9_2(L10_2)
    L10_2 = "error"
    L7_2(L8_2, L9_2, L10_2)
    return
  end
  if L5_2 then
    L7_2 = Notify
    L8_2 = L1_2
    L9_2 = _U
    L10_2 = "delivery_collected"
    L9_2 = L9_2(L10_2)
    L10_2 = "success"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = next
    L8_2 = L9_1
    L8_2 = L8_2[A0_2]
    if not L8_2 then
      L8_2 = {}
    end
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = L12_1
      L8_2 = A0_2
      L9_2 = L1_2
      L7_2(L8_2, L9_2)
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCallback
L15_1 = "tk_housing:getOwnedFurniture"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Furnishing
  L3_2 = L3_2.storage
  if "property" == L3_2 then
    L3_2 = type
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if "number" == L3_2 then
      L3_2 = Main
      L3_2 = L3_2.GetProperty
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = L6_1
        L4_2 = A0_2
        L5_2 = A2_2
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          goto lbl_36
        end
      end
    end
    L3_2 = Permissions
    L3_2 = L3_2.DenyCheater
    L4_2 = A0_2
    L5_2 = GetPlayerFromId
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = "getOwnedFurniture"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A1_2
    L4_2 = {}
    return L3_2(L4_2)
  end
  ::lbl_36::
  L3_2 = A1_2
  L4_2 = OwnedFurniture
  L4_2 = L4_2.Get
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = {}
L15_1 = 1000
L16_1 = RegisterCallback
L17_1 = "tk_housing:getOrderProperties"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L14_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L3_2.at
    L4_2 = L2_2 - L4_2
    L5_2 = L15_1
    if L4_2 < L5_2 then
      L4_2 = A1_2
      L5_2 = L3_2.result
      return L4_2(L5_2)
    end
  end
  L4_2 = OwnedFurniture
  L4_2 = L4_2.OrderableProperties
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L14_1
  L6_2 = {}
  L6_2.at = L2_2
  L6_2.result = L4_2
  L5_2[A0_2] = L6_2
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L16_1(L17_1, L18_1)
L16_1 = AddEventHandler
L17_1 = "playerDropped"
function L18_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L14_1
  L0_2[L1_2] = nil
end
L16_1(L17_1, L18_1)
L16_1 = OwnedFurniture
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 0
  L4_2 = A0_2.arriveAt
  L4_2 = L4_2 - L1_2
  L4_2 = L4_2 * 1000
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = SetTimeout
  L4_2 = L2_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A0_2.propertyId
    L0_3 = L0_3(L1_3)
    if nil == L0_3 then
      return
    end
    L1_3 = A0_2.propertyId
    L0_3 = L9_1
    L3_3 = A0_2.propertyId
    L2_3 = L9_1
    L2_3 = L2_3[L3_3]
    if not L2_3 then
      L2_3 = {}
    end
    L0_3[L1_3] = L2_3
    L1_3 = A0_2.propertyId
    L0_3 = L9_1
    L0_3 = L0_3[L1_3]
    L1_3 = A0_2.id
    L0_3[L1_3] = true
    L0_3 = L11_1
    L1_3 = A0_2.propertyId
    L0_3(L1_3)
    L0_3 = SetTimeout
    L1_3 = Config
    L1_3 = L1_3.Furnishing
    L1_3 = L1_3.delivery
    L1_3 = L1_3.collectTimeout
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L1_4 = A0_2.propertyId
      L0_4 = L9_1
      L0_4 = L0_4[L1_4]
      if L0_4 then
        L1_4 = A0_2.id
        L0_4 = L0_4[L1_4]
      end
      if not L0_4 then
        return
      end
      L1_4 = A0_2.propertyId
      L0_4 = L9_1
      L0_4 = L0_4[L1_4]
      L1_4 = A0_2.id
      L0_4[L1_4] = nil
      L0_4 = false
      L1_4 = ipairs
      L2_4 = DeliveryDb
      L2_4 = L2_4.LoadPendingForProperty
      L3_4 = A0_2.propertyId
      L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4 = L2_4(L3_4)
      L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
        L7_4 = L6_4.id
        L8_4 = A0_2.id
        if L7_4 == L8_4 then
          L0_4 = true
          break
        end
      end
      if not L0_4 then
        return
      end
      L1_4 = GetPlayerFromIdentifier
      L2_4 = A0_2.identifier
      L1_4 = L1_4(L2_4)
      if L1_4 then
        L2_4 = GetSource
        L3_4 = L1_4
        L2_4 = L2_4(L3_4)
        if L2_4 then
          goto lbl_47
        end
      end
      L2_4 = nil
      ::lbl_47::
      L3_4 = L13_1
      L4_4 = A0_2
      L5_4 = L2_4
      L6_4 = A0_2.identifier
      L3_4 = L3_4(L4_4, L5_4, L6_4)
      if not L3_4 then
        L3_4 = L10_1
        L4_4 = A0_2.propertyId
        L5_4 = {}
        L6_4 = A0_2.id
        L5_4[L6_4] = true
        L3_4(L4_4, L5_4)
        return
      end
      if L2_4 then
        L3_4 = Notify
        L4_4 = L2_4
        L5_4 = _U
        L6_4 = "delivery_auto_collected"
        L5_4 = L5_4(L6_4)
        L6_4 = "inform"
        L3_4(L4_4, L5_4, L6_4)
      end
      L3_4 = next
      L5_4 = A0_2.propertyId
      L4_4 = L9_1
      L4_4 = L4_4[L5_4]
      if not L4_4 then
        L4_4 = {}
      end
      L3_4 = L3_4(L4_4)
      if not L3_4 then
        L3_4 = L12_1
        L4_4 = A0_2.propertyId
        L3_4(L4_4)
      end
    end
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2)
end
L16_1.ScheduleDelivery = L17_1
L16_1 = OwnedFurniture
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DeliveryDb
  L0_2 = L0_2.DeleteCollected
  L0_2()
  L0_2 = Config
  L0_2 = L0_2.Furnishing
  L0_2 = L0_2.fulfilment
  if "delivery" ~= L0_2 then
    return
  end
  L0_2 = ipairs
  L1_2 = DeliveryDb
  L1_2 = L1_2.LoadPending
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Main
    L6_2 = L6_2.GetProperty
    L7_2 = L5_2.propertyId
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = OwnedFurniture
      L6_2 = L6_2.ScheduleDelivery
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
end
L16_1.LoadDeliveries = L17_1
