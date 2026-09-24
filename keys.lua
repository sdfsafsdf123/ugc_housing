local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
Keys = L0_1
L0_1 = Config
L0_1 = L0_1.Keys
if L0_1 then
  L0_1 = L0_1.enable
end
if L0_1 then
  L0_1 = Config
  L0_1 = L0_1.Inventory
  if "default" == L0_1 then
    L0_1 = Utils
    L0_1 = L0_1.Warn
    L1_1 = "Config.Keys.enable is on but Config.Inventory is 'default'. Physical house keys need an inventory that supports item metadata, so cutting and holding keys stays disabled until Config.Inventory is set to something other than 'default'"
    L0_1(L1_1)
  end
end
L0_1 = Keys
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Utils
  L2_2 = L2_2.KeysEnabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  if not A0_2 or not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.owner
  if L2_2 then
    L2_2 = A1_2.owner
    if "" ~= L2_2 then
      goto lbl_22
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_22::
  L2_2 = Utils
  L2_2 = L2_2.IsMotelType
  L3_2 = A1_2.propertyType
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = GetItemSlots
    L4_2 = L2_2
    L5_2 = Config
    L5_2 = L5_2.Keys
    L5_2 = L5_2.item
    L3_2 = L3_2(L4_2, L5_2)
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.metadata
    if L10_2 then
      L11_2 = L10_2.propertyId
      L12_2 = A1_2.id
      if L11_2 == L12_2 then
        L11_2 = L10_2.owner
        L12_2 = A1_2.owner
        if L11_2 == L12_2 then
          L11_2 = L10_2.keySerial
          L12_2 = A1_2.keySerial
          if not L12_2 then
            L12_2 = 0
          end
          if L11_2 == L12_2 then
            L11_2 = true
            return L11_2
          end
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L0_1.HasValidKey = L1_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.name
  if L1_2 then
    L1_2 = A0_2.name
    if "" ~= L1_2 then
      L1_2 = A0_2.name
      if L1_2 then
        goto lbl_22
      end
    end
  end
  L1_2 = A0_2.address
  if L1_2 then
    L1_2 = A0_2.address
    if "" ~= L1_2 then
      L1_2 = A0_2.address
      if L1_2 then
        goto lbl_22
      end
    end
  end
  L1_2 = _U
  L2_2 = "property"
  L1_2 = L1_2(L2_2)
  ::lbl_22::
  return L1_2
end
L1_1 = Keys
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L0_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.address
  if L3_2 ~= L4_2 then
    L4_2 = L2_2.address
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = nil
  ::lbl_18::
  L5_2 = AddItem
  L6_2 = GetPlayerFromId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.Keys
  L7_2 = L7_2.item
  L8_2 = 1
  L9_2 = {}
  L9_2.propertyId = A1_2
  L10_2 = L2_2.owner
  L9_2.owner = L10_2
  L10_2 = L2_2.keySerial
  if not L10_2 then
    L10_2 = 0
  end
  L9_2.keySerial = L10_2
  L10_2 = _U
  L11_2 = "key_item_label"
  L12_2 = L3_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.label = L10_2
  L10_2 = _U
  L11_2 = "key_item_desc"
  L12_2 = L3_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.description = L10_2
  L9_2.type = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L1_1.CutKey = L2_1
L1_1 = Keys
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.keySerial
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2.keySerial = L2_2
  L2_2 = PropertyDb
  L2_2 = L2_2.SetKeySerial
  L3_2 = A0_2
  L4_2 = L1_2.keySerial
  L2_2(L3_2, L4_2)
end
L1_1.BumpSerial = L2_1
L1_1 = RegisterNetEvent
L2_1 = "tk_housing:cutKey"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or not L3_2 then
    return
  end
  L4_2 = Utils
  L4_2 = L4_2.KeysEnabled
  L4_2 = L4_2()
  if not L4_2 then
    return
  end
  L4_2 = L3_2.owner
  if L4_2 then
    L4_2 = L3_2.owner
    if "" ~= L4_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L4_2 = Utils
  L4_2 = L4_2.IsMotelType
  L5_2 = L3_2.propertyType
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = Permissions
  L4_2 = L4_2.HasPermission
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = "managePermissions"
  L8_2 = L3_2.permissions
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = Permissions
    L4_2 = L4_2.DenyCheater
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = "cutKey"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = CanCarryItem
  L5_2 = L2_2
  L6_2 = Config
  L6_2 = L6_2.Keys
  L6_2 = L6_2.item
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Notify
    L5_2 = L1_2
    L6_2 = _U
    L7_2 = "inventory_full"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Keys
  L4_2 = L4_2.CutKey
  L5_2 = L1_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "key_cut"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Cut Key"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.propertyId = A0_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "tk_housing:changeLocks"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or not L3_2 then
    return
  end
  L4_2 = Utils
  L4_2 = L4_2.KeysEnabled
  L4_2 = L4_2()
  if not L4_2 then
    return
  end
  L4_2 = L3_2.owner
  if L4_2 then
    L4_2 = L3_2.owner
    if "" ~= L4_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L4_2 = Utils
  L4_2 = L4_2.IsMotelType
  L5_2 = L3_2.propertyType
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = Permissions
  L4_2 = L4_2.HasPermission
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = "changeCode"
  L8_2 = L3_2.permissions
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = Permissions
    L4_2 = L4_2.DenyCheater
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = "changeLocks"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Keys
  L4_2 = L4_2.BumpSerial
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "locks_changed"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Change Locks"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.propertyId = A0_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L1_1(L2_1, L3_1)
