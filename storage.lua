local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = {}
Storage = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = 5
L4_1 = 60
L5_1 = 500
L6_1 = 24
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.name
    if L8_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.IsWeapon
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L7_1
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if nil ~= L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = Utils
  L3_2 = L3_2.GetStorageStashDataByModel
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.slots
  if not L3_2 then
    L3_2 = L6_1
  end
  L4_2 = #A0_2
  L4_2 = L3_2 > L4_2
  return L4_2
end
L9_1 = {}
L10_1 = 3000
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L9_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L9_1
  L2_2[A0_2] = nil
  L2_2 = Webhook
  L3_2 = _U
  L4_2 = "webhook_action"
  L5_2 = L1_2.identifiers
  L6_2 = L1_2.label
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = {}
  L9_2 = L1_2.propertyId
  L8_2.propertyId = L9_2
  L9_2 = L1_2.storageIndex
  L8_2.storageIndex = L9_2
  L9_2 = L1_2.items
  L8_2.items = L9_2
  L9_2 = {}
  L9_2.indent = true
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = "%s:%s:%s:%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = A1_2
  L9_2 = A4_2
  L10_2 = A5_2
  L11_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L9_1
  L7_2 = L7_2[L6_2]
  if not L7_2 then
    L8_2 = {}
    L9_2 = Utils
    L9_2 = L9_2.GetIdentifiers
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    L8_2.identifiers = L9_2
    L8_2.label = A0_2
    L8_2.propertyId = A4_2
    L8_2.storageIndex = A5_2
    L9_2 = {}
    L8_2.items = L9_2
    L7_2 = L8_2
    L8_2 = L9_1
    L8_2[L6_2] = L7_2
    L8_2 = SetTimeout
    L9_2 = L10_1
    function L10_2()
      local L0_3, L1_3
      L0_3 = L11_1
      L1_3 = L6_2
      L0_3(L1_3)
    end
    L8_2(L9_2, L10_2)
  end
  L8_2 = L7_2.items
  L9_2 = L7_2.items
  L9_2 = #L9_2
  L9_2 = L9_2 + 1
  L10_2 = {}
  L10_2.item = A2_2
  L10_2.amount = A3_2
  L8_2[L9_2] = L10_2
end
L13_1 = {}
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetAccountMoney
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L13_1.playerHas = L14_1
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = RemoveAccountMoney
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L13_1.fromPlayer = L14_1
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = AddAccountMoney
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L13_1.toPlayer = L14_1
L13_1.canReceive = nil
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = _U
  L2_2 = A0_2
  return L1_2(L2_2)
end
L13_1.label = L14_1
L13_1.putKey = "you_put_money"
L13_1.takeKey = "you_took_money"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.GroupDigits
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  return L2_2
end
L13_1.putArgs = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.GroupDigits
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  return L2_2
end
L13_1.takeArgs = L14_1
L14_1 = {}
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetItemAmount
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L14_1.playerHas = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = RemoveItem
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L14_1.fromPlayer = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = AddItem
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L14_1.toPlayer = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CanCarryItem
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L14_1.canReceive = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetItemLabel
  L2_2 = A0_2
  return L1_2(L2_2)
end
L14_1.label = L15_1
L14_1.putKey = "you_put_item"
L14_1.takeKey = "you_took_item"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = A0_2
  return L2_2, L3_2
end
L14_1.putArgs = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = A0_2
  return L2_2, L3_2
end
L14_1.takeArgs = L15_1
function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L8_2 = A0_2.playerHas
  L9_2 = A1_2
  L10_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2)
  if A4_2 <= L8_2 then
    L8_2 = A0_2.fromPlayer
    L9_2 = A1_2
    L10_2 = A3_2
    L11_2 = A4_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = L7_1
    L9_2 = A2_2
    L10_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2)
    if nil == L8_2 then
      L9_2 = #A2_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L10_2.name = A3_2
      L10_2.amount = A4_2
      A2_2[L9_2] = L10_2
    else
      L9_2 = A2_2[L8_2]
      L10_2 = A2_2[L8_2]
      L10_2 = L10_2.amount
      L10_2 = L10_2 + A4_2
      L9_2.amount = L10_2
    end
    L9_2 = A0_2.label
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    L10_2 = Notify
    L11_2 = A5_2
    L12_2 = _U
    L13_2 = A0_2.putKey
    L14_2 = A0_2.putArgs
    L15_2 = L9_2
    L16_2 = A4_2
    L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L13_2 = "success"
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = L12_1
    L11_2 = "Put Item"
    L12_2 = A5_2
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A6_2
    L16_2 = A7_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  else
    L8_2 = Notify
    L9_2 = A5_2
    L10_2 = _U
    L11_2 = "invalid_amount"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    L8_2(L9_2, L10_2, L11_2)
  end
end
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L8_2 = L7_1
  L9_2 = A2_2
  L10_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A2_2[L8_2]
  if L9_2 then
    L9_2 = A2_2[L8_2]
    L9_2 = L9_2.amount
    if A4_2 <= L9_2 then
      L9_2 = A0_2.canReceive
      if nil ~= L9_2 then
        L9_2 = A0_2.canReceive
        L10_2 = A1_2
        L11_2 = A3_2
        L12_2 = A4_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        if not L9_2 then
          goto lbl_65
        end
      end
      L9_2 = A2_2[L8_2]
      L10_2 = A2_2[L8_2]
      L10_2 = L10_2.amount
      L10_2 = L10_2 - A4_2
      L9_2.amount = L10_2
      L9_2 = A2_2[L8_2]
      L9_2 = L9_2.amount
      if 0 == L9_2 then
        L9_2 = table
        L9_2 = L9_2.remove
        L10_2 = A2_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
      L9_2 = A0_2.toPlayer
      L10_2 = A1_2
      L11_2 = A3_2
      L12_2 = A4_2
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A0_2.label
      L10_2 = A3_2
      L9_2 = L9_2(L10_2)
      L10_2 = Notify
      L11_2 = A5_2
      L12_2 = _U
      L13_2 = A0_2.takeKey
      L14_2 = A0_2.takeArgs
      L15_2 = L9_2
      L16_2 = A4_2
      L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L13_2 = "success"
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = L12_1
      L11_2 = "Take Item"
      L12_2 = A5_2
      L13_2 = A3_2
      L14_2 = A4_2
      L15_2 = A6_2
      L16_2 = A7_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      goto lbl_80
      ::lbl_65::
      L9_2 = Notify
      L10_2 = A5_2
      L11_2 = _U
      L12_2 = "no_space"
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
  end
  else
    L9_2 = Notify
    L10_2 = A5_2
    L11_2 = _U
    L12_2 = "invalid_amount"
    L11_2 = L11_2(L12_2)
    L12_2 = "error"
    L9_2(L10_2, L11_2, L12_2)
  end
  ::lbl_80::
end
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L7_2 = GetWeaponAmount
  L8_2 = A0_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    A3_2 = L7_2
    L8_2 = GetAdditionalWeaponData
    L9_2 = A4_2
    L10_2 = A2_2
    L11_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A1_2
    L11_2 = {}
    L11_2.name = A2_2
    L11_2.amount = A3_2
    L11_2.data = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = RemoveItem
    L10_2 = A0_2
    L11_2 = A2_2
    L12_2 = A3_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = GetItemLabel
    L10_2 = A2_2
    L9_2 = L9_2(L10_2)
    L10_2 = Notify
    L11_2 = A4_2
    L12_2 = _U
    L13_2 = "you_put_weapon"
    L14_2 = L9_2
    L15_2 = A3_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = "success"
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = L12_1
    L11_2 = "Put Item"
    L12_2 = A4_2
    L13_2 = A2_2
    L14_2 = A3_2
    L15_2 = A5_2
    L16_2 = A6_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  else
    L8_2 = Notify
    L9_2 = A4_2
    L10_2 = _U
    L11_2 = "invalid_amount"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    L8_2(L9_2, L10_2, L11_2)
  end
end
function L18_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L7_2 = A0_2.getWeapon
  L8_2 = A2_2
  L7_2, L8_2 = L7_2(L8_2)
  if not L8_2 then
    L9_2 = L7_1
    L10_2 = A1_2
    L11_2 = A2_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A1_2[L9_2]
    if L10_2 then
      L10_2 = A1_2[L9_2]
      L10_2 = L10_2.name
      if L10_2 == A2_2 then
        L10_2 = A1_2[L9_2]
        A3_2 = L10_2.amount
        L10_2 = GiveWeapon
        L11_2 = A4_2
        L12_2 = A2_2
        L13_2 = A3_2
        L14_2 = A1_2[L9_2]
        L14_2 = L14_2.data
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = table
        L10_2 = L10_2.remove
        L11_2 = A1_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
        L10_2 = GetItemLabel
        L11_2 = A2_2
        L10_2 = L10_2(L11_2)
        L11_2 = Notify
        L12_2 = A4_2
        L13_2 = _U
        L14_2 = "you_took_weapon"
        L15_2 = L10_2
        L16_2 = A3_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L14_2 = "success"
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = L12_1
        L12_2 = "Take Item"
        L13_2 = A4_2
        L14_2 = A2_2
        L15_2 = A3_2
        L16_2 = A5_2
        L17_2 = A6_2
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    else
      L10_2 = Notify
      L11_2 = A4_2
      L12_2 = _U
      L13_2 = "invalid_amount"
      L12_2 = L12_2(L13_2)
      L13_2 = "error"
      L10_2(L11_2, L12_2, L13_2)
    end
  else
    L9_2 = Notify
    L10_2 = A4_2
    L11_2 = _U
    L12_2 = "no_space"
    L11_2 = L11_2(L12_2)
    L12_2 = "error"
    L9_2(L10_2, L11_2, L12_2)
  end
end
L19_1 = Storage
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.furniture
  L4_2 = L4_2[A0_2]
  L4_2[A1_2] = A2_2
  L5_2 = Main
  L5_2 = L5_2.SaveAccessPointRow
  L6_2 = A3_2
  L7_2 = A0_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = FurnitureDb
  L5_2 = L5_2.UpdateStorageItems
  L6_2 = A3_2
  L7_2 = A0_2
  L8_2 = A2_2.id
  L9_2 = A2_2.items
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L19_1.UpdateStorageItems = L20_1
L19_1 = RegisterNetEvent
L20_1 = "tk_housing:changeStorageCode"
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = source
  L5_2 = GetPlayerFromId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if A0_2 then
    L6_2 = type
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if "number" == L6_2 then
      L6_2 = Main
      L6_2 = L6_2.GetProperty
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        goto lbl_24
      end
    end
  end
  L6_2 = Utils
  L6_2 = L6_2.Debug
  L7_2 = "Got a property id that does not exist when changing the storage code"
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
  do return end
  ::lbl_24::
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.furniture
  L6_2 = L6_2[A1_2]
  L7_2 = Main
  L7_2 = L7_2.GetFurnitureIndexById
  L8_2 = L6_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    return
  end
  L8_2 = Permissions
  L8_2 = L8_2.HasPermission
  L9_2 = L5_2
  L10_2 = A0_2
  L11_2 = "changeCode"
  L12_2 = L6_2[L7_2]
  L12_2 = L12_2.permissions
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L8_2 = Permissions
    L8_2 = L8_2.DenyCheater
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = "changeStorageCode"
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L8_2 = A3_2.changeCodeForAll
  if L8_2 then
    L8_2 = pairs
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = Utils
      L14_2 = L14_2.EntryHasKind
      L15_2 = L13_2
      L16_2 = "storage"
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        L14_2 = A3_2.code
        L13_2.code = L14_2
        L14_2 = Main
        L14_2 = L14_2.SaveAccessPointRow
        L15_2 = A0_2
        L16_2 = A1_2
        L17_2 = L13_2
        L14_2(L15_2, L16_2, L17_2)
        L14_2 = FurnitureDb
        L14_2 = L14_2.UpdateStorage
        L15_2 = A0_2
        L16_2 = A1_2
        L17_2 = L13_2.id
        L18_2 = L13_2.items
        L19_2 = L13_2.code
        L20_2 = L13_2.permissions
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
    end
    L8_2 = Storage
    L8_2 = L8_2.RevokeStorageAccessGrants
    L9_2 = A0_2
    L8_2(L9_2)
  else
    L8_2 = L6_2[L7_2]
    L9_2 = A3_2.code
    L8_2.code = L9_2
    L8_2 = Main
    L8_2 = L8_2.SaveAccessPointRow
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L6_2[L7_2]
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = FurnitureDb
    L8_2 = L8_2.UpdateStorage
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L6_2[L7_2]
    L11_2 = L11_2.id
    L12_2 = L6_2[L7_2]
    L12_2 = L12_2.items
    L13_2 = L6_2[L7_2]
    L13_2 = L13_2.code
    L14_2 = L6_2[L7_2]
    L14_2 = L14_2.permissions
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = Storage
    L8_2 = L8_2.RevokeStorageAccessGrants
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = Notify
  L9_2 = L4_2
  L10_2 = _U
  L11_2 = "code_changed"
  L10_2 = L10_2(L11_2)
  L11_2 = "success"
  L8_2(L9_2, L10_2, L11_2)
end
L19_1(L20_1, L21_1)
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.furniture
  L4_2 = Main
  L4_2 = L4_2.GetFurnitureIndexById
  L5_2 = L3_2[A1_2]
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = L3_2[A1_2]
  L5_2 = L5_2[L4_2]
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = L5_2.items
  if not L6_2 then
    L6_2 = {}
  end
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  return L7_2, L8_2, L9_2, L10_2
end
L20_1 = Storage
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if "money" == A3_2 or "black_money" == A3_2 then
    if A0_2 then
      L8_2 = L15_1
      L9_2 = L13_1
      L10_2 = A1_2
      L11_2 = A2_2
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = A5_2
      L15_2 = A6_2
      L16_2 = A7_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    else
      L8_2 = L16_1
      L9_2 = L13_1
      L10_2 = A1_2
      L11_2 = A2_2
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = A5_2
      L15_2 = A6_2
      L16_2 = A7_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  else
    L8_2 = Utils
    L8_2 = L8_2.IsWeapon
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      if A0_2 then
        L8_2 = L17_1
        L9_2 = A1_2
        L10_2 = A2_2
        L11_2 = A3_2
        L12_2 = A4_2
        L13_2 = A5_2
        L14_2 = A6_2
        L15_2 = A7_2
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      else
        L8_2 = L18_1
        L9_2 = A1_2
        L10_2 = A2_2
        L11_2 = A3_2
        L12_2 = A4_2
        L13_2 = A5_2
        L14_2 = A6_2
        L15_2 = A7_2
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    elseif A0_2 then
      L8_2 = L15_1
      L9_2 = L14_1
      L10_2 = A1_2
      L11_2 = A2_2
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = A5_2
      L15_2 = A6_2
      L16_2 = A7_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    else
      L8_2 = L16_1
      L9_2 = L14_1
      L10_2 = A1_2
      L11_2 = A2_2
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = A5_2
      L15_2 = A6_2
      L16_2 = A7_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
L20_1.DispatchStorageItem = L21_1
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = L0_1
  L6_2 = L6_2[A1_2]
  L7_2 = nil ~= L6_2
  L8_2 = Permissions
  L8_2 = L8_2.HasPermission
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = "open"
  L12_2 = A5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 and not L7_2 then
    L8_2 = false
    return L8_2
  end
  L8_2 = Main
  L8_2 = L8_2.GetFurnitureLockState
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if false == L8_2 then
    L8_2 = Permissions
    L8_2 = L8_2.HasPermission
    L9_2 = A0_2
    L10_2 = A2_2
    L11_2 = "lock"
    L12_2 = A5_2
    return L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = true
  return L8_2
end
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = L19_1
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  if not L7_2 then
    L10_2 = nil
    return L10_2
  end
  L10_2 = L20_1
  L11_2 = A1_2
  L12_2 = A0_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = L8_2.permissions
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if not L10_2 then
    L10_2 = Permissions
    L10_2 = L10_2.DenyCheater
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = A5_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = nil
    return L10_2
  end
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L9_2
  return L10_2, L11_2, L12_2, L13_2
end
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if "house" == A2_2 then
    L3_2 = Main
    L3_2 = L3_2.GetHousePlayers
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L3_2[A0_2]
    end
    if L3_2 then
      goto lbl_35
    end
  end
  if "garage" == A2_2 then
    L3_2 = Main
    L3_2 = L3_2.GetGaragePlayers
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L3_2[A0_2]
    end
  end
  L3_2 = Main
  L3_2 = L3_2.GetYardPlayers
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 or "yard" == A2_2 and L3_2 and L3_2
  ::lbl_35::
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  if "yard" == A2_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = Main
  L4_2 = L4_2.GetPropertyAccess
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == A1_2
  return L4_2
end
L23_1 = AddEventHandler
L24_1 = "playerDropped"
function L25_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L0_1
  L0_2[L1_2] = nil
  L1_2 = source
  L0_2 = L1_1
  L0_2[L1_2] = nil
  L1_2 = source
  L0_2 = L2_1
  L0_2[L1_2] = nil
end
L23_1(L24_1, L25_1)
L23_1 = Storage
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.propertyId
    if L9_2 == A0_2 then
      if nil ~= A1_2 then
        L9_2 = L8_2.furnitureType
        if L9_2 ~= A1_2 then
          goto lbl_20
        end
      end
      if nil ~= A2_2 then
        L9_2 = L8_2.storageId
        if L9_2 ~= A2_2 then
          goto lbl_20
        end
      end
      L9_2 = L0_1
      L9_2[L7_2] = nil
    end
    ::lbl_20::
  end
end
L23_1.RevokeStorageAccessGrants = L24_1
L23_1 = RegisterCallback
L24_1 = "tk_housing:authorizeStorageOpen"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = GetPlayerFromId
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = type
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if "number" == L8_2 then
    L8_2 = Main
    L8_2 = L8_2.GetProperty
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_19
    end
  end
  L8_2 = A1_2
  L9_2 = false
  do return L8_2(L9_2) end
  ::lbl_19::
  L8_2 = FurnitureDb
  L8_2 = L8_2.IsValidType
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = A1_2
    L9_2 = false
    return L8_2(L9_2)
  end
  L8_2 = L22_1
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if not L8_2 then
    L8_2 = A1_2
    L9_2 = false
    return L8_2(L9_2)
  end
  L8_2 = Main
  L8_2 = L8_2.LoadPropertyData
  L9_2 = A2_2
  L8_2(L9_2)
  L8_2 = L19_1
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2)
  if not L9_2 then
    L11_2 = A1_2
    L12_2 = false
    return L11_2(L12_2)
  end
  L11_2 = L10_2.permissions
  L12_2 = Permissions
  L12_2 = L12_2.HasPermission
  L13_2 = L7_2
  L14_2 = A2_2
  L15_2 = "open"
  L16_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  if L12_2 then
    L12_2 = true
    if L12_2 then
      goto lbl_69
    end
  end
  L12_2 = false
  ::lbl_69::
  if not L12_2 and A6_2 then
    L13_2 = Config
    L13_2 = L13_2.Lockpicking
    if L13_2 then
      L13_2 = L13_2.storage
      if L13_2 then
        L13_2 = L13_2.enable
      end
    end
    L13_2 = Utils
    L13_2 = L13_2.EntryHasKind
    L14_2 = L10_2
    L15_2 = "storage"
    L13_2 = L13_2(L14_2, L15_2)
    L12_2 = L13_2 or L12_2
    if L13_2 then
      L13_2 = Config
      L13_2 = L13_2.Lockpicking
      L13_2 = L13_2.storage
      L13_2 = L13_2.item
      if L13_2 then
        L13_2 = GetItemAmount
        L14_2 = L7_2
        L15_2 = Config
        L15_2 = L15_2.Lockpicking
        L15_2 = L15_2.storage
        L15_2 = L15_2.item
        L13_2 = L13_2(L14_2, L15_2)
      end
      L13_2 = Properties
      L13_2 = L13_2.TakePickAttempt
      L14_2 = A0_2
      L15_2 = A2_2
      L16_2 = "storage"
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2 = true == L13_2 and L12_2
    end
  end
  if not L12_2 and nil ~= A5_2 then
    L13_2 = GetGameTimer
    L13_2 = L13_2()
    L14_2 = L2_1
    L14_2 = L14_2[A0_2]
    if L14_2 then
      L14_2 = L2_1
      L14_2 = L14_2[A0_2]
      L14_2 = L13_2 - L14_2
      L15_2 = L5_1
      if L14_2 < L15_2 then
        L14_2 = A1_2
        L15_2 = false
        return L14_2(L15_2)
      end
    end
    L14_2 = L2_1
    L14_2[A0_2] = L13_2
    L14_2 = L10_2.code
    L15_2 = type
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    if "string" == L15_2 and "" ~= L14_2 and A5_2 == L14_2 then
      L12_2 = true
      L15_2 = L1_1
      L15_2[A0_2] = nil
      L15_2 = Utils
      L15_2 = L15_2.Debug
      L16_2 = "storage code accepted"
      L17_2 = A0_2
      L18_2 = A2_2
      L19_2 = A3_2
      L20_2 = A4_2
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    else
      L15_2 = L1_1
      L15_2 = L15_2[A0_2]
      if L15_2 then
        L16_2 = os
        L16_2 = L16_2.time
        L16_2 = L16_2()
        L17_2 = L15_2.at
        L16_2 = L16_2 - L17_2
        L17_2 = L4_1
        if not (L16_2 >= L17_2) then
          goto lbl_179
        end
      end
      L16_2 = {}
      L16_2.count = 0
      L15_2 = L16_2
      L16_2 = L1_1
      L16_2[A0_2] = L15_2
      ::lbl_179::
      L16_2 = L15_2.count
      L16_2 = L16_2 + 1
      L15_2.count = L16_2
      L16_2 = os
      L16_2 = L16_2.time
      L16_2 = L16_2()
      L15_2.at = L16_2
      L16_2 = L15_2.count
      L17_2 = L3_1
      if L16_2 >= L17_2 then
        L16_2 = Permissions
        L16_2 = L16_2.DenyCheater
        L17_2 = A0_2
        L18_2 = L7_2
        L19_2 = "authorizeStorageOpen"
        L16_2(L17_2, L18_2, L19_2)
        L15_2.count = 0
      end
    end
  end
  if not L12_2 then
    L13_2 = A1_2
    L14_2 = false
    return L13_2(L14_2)
  end
  L13_2 = Main
  L13_2 = L13_2.GetFurnitureLockState
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A4_2
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  if false == L13_2 then
    L13_2 = Permissions
    L13_2 = L13_2.HasPermission
    L14_2 = L7_2
    L15_2 = A2_2
    L16_2 = "lock"
    L17_2 = L11_2
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    if not L13_2 then
      L13_2 = A1_2
      L14_2 = false
      L15_2 = "locked"
      return L13_2(L14_2, L15_2)
    end
  end
  L13_2 = L0_1
  L14_2 = {}
  L14_2.propertyId = A2_2
  L14_2.furnitureType = A3_2
  L14_2.storageId = A4_2
  L13_2[A0_2] = L14_2
  L13_2 = A1_2
  L14_2 = true
  L13_2(L14_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "tk_housing:putItem"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = source
  L6_2 = GetPlayerFromId
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = tonumber
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = 0
  end
  L7_2 = L7_2(L8_2)
  A1_2 = L7_2
  if A1_2 <= 0 then
    return
  end
  L7_2 = Config
  L7_2 = L7_2.Inventory
  if "ox" == L7_2 then
    return
  end
  L7_2 = type
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = Main
    L7_2 = L7_2.GetProperty
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_35
    end
  end
  do return end
  ::lbl_35::
  L7_2 = FurnitureDb
  L7_2 = L7_2.IsValidType
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if not L7_2 or not A4_2 then
    return
  end
  L7_2 = L22_1
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    return
  end
  L7_2 = Utils
  L7_2 = L7_2.IsStorageBlacklisted
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    return
  end
  L7_2 = CanPutItemInStorage
  L8_2 = L5_2
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L7_2 then
    return
  end
  L7_2 = Main
  L7_2 = L7_2.LoadPropertyData
  L8_2 = A2_2
  L7_2(L8_2)
  L7_2 = L21_1
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = "putItem"
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L8_2 then
    return
  end
  L11_2 = L8_1
  L12_2 = L10_2
  L13_2 = A0_2
  L14_2 = L9_2.model
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  if not L11_2 then
    L11_2 = Notify
    L12_2 = L5_2
    L13_2 = _U
    L14_2 = "no_space"
    L13_2 = L13_2(L14_2)
    L14_2 = "error"
    L11_2(L12_2, L13_2, L14_2)
    return
  end
  L11_2 = Storage
  L11_2 = L11_2.DispatchStorageItem
  L12_2 = true
  L13_2 = L6_2
  L14_2 = L10_2
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = L5_2
  L18_2 = A2_2
  L19_2 = A4_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2.items = L10_2
  L11_2 = Storage
  L11_2 = L11_2.UpdateStorageItems
  L12_2 = A3_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = A2_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "tk_housing:takeItem"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = source
  L6_2 = GetPlayerFromId
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = tonumber
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = 0
  end
  L7_2 = L7_2(L8_2)
  A1_2 = L7_2
  if A1_2 <= 0 then
    return
  end
  L7_2 = Config
  L7_2 = L7_2.Inventory
  if "ox" == L7_2 then
    return
  end
  L7_2 = type
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = Main
    L7_2 = L7_2.GetProperty
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_35
    end
  end
  do return end
  ::lbl_35::
  L7_2 = FurnitureDb
  L7_2 = L7_2.IsValidType
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if not L7_2 or not A4_2 then
    return
  end
  L7_2 = L22_1
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    return
  end
  L7_2 = CanTakeItemFromStorage
  L8_2 = L5_2
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L7_2 then
    return
  end
  L7_2 = Main
  L7_2 = L7_2.LoadPropertyData
  L8_2 = A2_2
  L7_2(L8_2)
  L7_2 = L21_1
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = "takeItem"
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L8_2 then
    return
  end
  L11_2 = Storage
  L11_2 = L11_2.DispatchStorageItem
  L12_2 = false
  L13_2 = L6_2
  L14_2 = L10_2
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = L5_2
  L18_2 = A2_2
  L19_2 = A4_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2.items = L10_2
  L11_2 = Storage
  L11_2 = L11_2.UpdateStorageItems
  L12_2 = A3_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = A2_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "tk_housing:setStorageIsOpen"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = source
  L5_2 = GetPlayerFromId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if "number" == L6_2 then
    L6_2 = Main
    L6_2 = L6_2.GetProperty
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L6_2 = Main
  L6_2 = L6_2.LoadPropertyData
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = L19_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
  if not L7_2 then
    return
  end
  L9_2 = Permissions
  L9_2 = L9_2.HasPermission
  L10_2 = L5_2
  L11_2 = A0_2
  L12_2 = "lock"
  L13_2 = L8_2.permissions
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  if not L9_2 then
    L9_2 = Permissions
    L9_2 = L9_2.DenyCheater
    L10_2 = L4_2
    L11_2 = L5_2
    L12_2 = "setStorageIsOpen"
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = Main
  L9_2 = L9_2.SetFurnitureLockState
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = L4_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "tk_housing:openQBStorage"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = source
  L5_2 = GetPlayerFromId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L6_2 = GetIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not (A0_2 and A1_2) or not A2_2 then
    return
  end
  L7_2 = L22_1
  L8_2 = L4_2
  L9_2 = A0_2
  L10_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    return
  end
  L7_2 = Main
  L7_2 = L7_2.LoadPropertyData
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = L21_1
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = "openQBStorage"
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L8_2 then
    return
  end
  L10_2 = Main
  L10_2 = L10_2.GetStorageStashName
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = Utils
  L11_2 = L11_2.GetStorageStashDataByModel
  L12_2 = L9_2.model
  L11_2 = L11_2(L12_2)
  L12_2 = exports
  L12_2 = L12_2["qb-inventory"]
  L13_2 = L12_2
  L12_2 = L12_2.OpenInventory
  L14_2 = L4_2
  L15_2 = L10_2
  L16_2 = {}
  L17_2 = _U
  L18_2 = "stash"
  L17_2 = L17_2(L18_2)
  L16_2.label = L17_2
  L17_2 = L11_2.weight
  if not L17_2 then
    L17_2 = 100000
  end
  L16_2.maxweight = L17_2
  L17_2 = L11_2.slots
  if not L17_2 then
    L17_2 = 24
  end
  L16_2.slots = L17_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterCallback
L24_1 = "tk_housing:getStorageItems"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A2_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if "number" == L5_2 then
      L5_2 = Main
      L5_2 = L5_2.GetProperty
      L6_2 = A2_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_24
      end
    end
  end
  L5_2 = Utils
  L5_2 = L5_2.Debug
  L6_2 = "Got a property id that does not exist when getting storage items"
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A1_2
  L6_2 = {}
  L5_2(L6_2)
  do return end
  ::lbl_24::
  L5_2 = L22_1
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.LoadPropertyData
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.furniture
  L6_2 = Main
  L6_2 = L6_2.GetFurnitureIndexById
  L7_2 = L5_2[A3_2]
  L8_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L7_2 = A1_2
    L8_2 = {}
    L7_2(L8_2)
    return
  end
  L7_2 = L5_2[A3_2]
  L7_2 = L7_2[L6_2]
  L8_2 = GetPlayerFromId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = L20_1
  L10_2 = L8_2
  L11_2 = A0_2
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = L7_2.permissions
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if not L9_2 then
    L9_2 = A1_2
    L10_2 = {}
    L9_2(L10_2)
    return
  end
  L9_2 = L7_2.items
  if not L9_2 then
    L9_2 = {}
  end
  L10_2 = {}
  L11_2 = ipairs
  L12_2 = L9_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L16_2.name
    if "money" == L17_2 then
      L17_2 = _U
      L18_2 = "money"
      L17_2 = L17_2(L18_2)
      if L17_2 then
        goto lbl_107
      end
    end
    L17_2 = L16_2.name
    if "black_money" == L17_2 then
      L17_2 = _U
      L18_2 = "black_money"
      L17_2 = L17_2(L18_2)
      if L17_2 then
        goto lbl_107
      end
    end
    L17_2 = GetItemLabel
    L18_2 = L16_2.name
    L17_2 = L17_2(L18_2)
    ::lbl_107::
    L18_2 = {}
    L19_2 = L16_2.name
    L18_2.name = L19_2
    L19_2 = L16_2.amount
    L18_2.amount = L19_2
    L18_2.label = L17_2
    L19_2 = L16_2.data
    L18_2.data = L19_2
    L10_2[L15_2] = L18_2
  end
  L11_2 = A1_2
  L12_2 = L10_2
  L11_2(L12_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterCallback
L24_1 = "tk_housing:getPlayerInventory"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = GetPlayerInventory
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
