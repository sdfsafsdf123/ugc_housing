local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L0_1.furnish = true
L0_1.changeCode = true
L0_1.lock = true
L0_1.managePermissions = true
L0_1.manageSecurity = true
L0_1.viewCamera = true
L0_1.sell = true
L0_1.transfer = true
L1_1 = "furnish, changeCode, lock, managePermissions, manageSecurity, viewCamera, sell or transfer"
L2_1 = {}
L2_1.lockpick = true
L2_1.entry = true
L2_1.raid = true
L2_1.storage = true
L3_1 = "lockpick, entry, raid or storage"
L4_1 = {}
L5_1 = "electricity"
L6_1 = "water"
L7_1 = "internet"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L5_1 = {}
L6_1 = "house"
L7_1 = "garage"
L8_1 = "yard"
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = Utils
  L4_2 = L4_2.Warn
  L5_2 = "Export %s got an invalid argument, expected %s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A0_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = false
  return L4_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetAllHousePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2[A0_2]
    if L7_2 then
      L7_2 = L5_2
      L8_2 = "house"
      return L7_2, L8_2
    end
  end
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetAllGaragePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2[A0_2]
    if L7_2 then
      L7_2 = L5_2
      L8_2 = "garage"
      return L7_2, L8_2
    end
  end
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetAllYardPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2[A0_2]
    if L7_2 then
      L7_2 = L5_2
      L8_2 = "yard"
      return L7_2, L8_2
    end
  end
end
L8_1 = exports
L9_1 = "getPropertyOwner"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "getPropertyOwner"
  L4_2 = L1_2
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.owner
  if "" == L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.owner
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPlayerProperties"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "getPlayerProperties"
  L4_2 = L1_2
  L5_2 = "the server id of an online player"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = exports
  L2_2 = L2_2.tk_housing
  L3_2 = L2_2
  L2_2 = L2_2.getPropertiesByIdentifier
  L4_2 = GetIdentifier
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "isPropertyOwner"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L6_1
  L4_2 = "isPropertyOwner"
  L5_2 = L2_2
  L6_2 = "the server id of an online player"
  L7_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L6_1
  L4_2 = "isPropertyOwner"
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = "an existing property id"
  L7_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Permissions
  L3_2 = L3_2.DoesPlayerOwnHouse
  L4_2 = L2_2
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPlayerProperty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "getPlayerProperty"
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "the server id of an online player"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L7_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "isPlayerInProperty"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L3_2 = "isPlayerInProperty"
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "the server id of an online player"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L6_1
  L3_2 = "isPlayerInProperty"
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = "an existing property id"
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetHousePlayers
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2[A0_2]
  end
  L2_2 = nil ~= L2_2
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPlayersInProperty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L6_1
  L2_2 = "getPlayersInProperty"
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "an existing property id"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Main
  L1_2 = L1_2.GetPropertyPlayers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L2_2[L8_2] = true
  end
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetYardPlayers
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    if not L8_2 then
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L1_2[L8_2] = L7_2
    end
  end
  return L1_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "hasPropertyAccess"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L6_1
  L4_2 = "hasPropertyAccess"
  L5_2 = L2_2
  L6_2 = "the server id of an online player"
  L7_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L6_1
  L4_2 = "hasPropertyAccess"
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = "an existing property id"
  L7_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Properties
  L3_2 = L3_2.CanAccessProperty
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = true == L3_2
  return L3_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "hasPropertyPermission"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L6_1
  L6_2 = "hasPropertyPermission"
  L7_2 = L3_2
  L8_2 = "the server id of an online player"
  L9_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L6_1
  L6_2 = "hasPropertyPermission"
  L7_2 = L4_2
  L8_2 = "an existing property id"
  L9_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L6_1
  L6_2 = "hasPropertyPermission"
  L7_2 = L0_1
  L7_2 = L7_2[A2_2]
  L8_2 = "one of "
  L9_2 = L1_1
  L8_2 = L8_2 .. L9_2
  L9_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = L4_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = true == L5_2
  return L5_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertyPermissions"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L6_1
  L4_2 = "getPropertyPermissions"
  L5_2 = L2_2
  L6_2 = "the server id of an online player"
  L7_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L6_1
  L4_2 = "getPropertyPermissions"
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = "an existing property id"
  L7_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = Permissions
  L3_2 = L3_2.GetPlayerPermissionsByProperty
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = Main
    L4_2 = L4_2.DeepCopy
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_41
    end
  end
  L4_2 = nil
  ::lbl_41::
  return L4_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertyKeyholders"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "getPropertyKeyholders"
  L4_2 = L1_2
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2.permissions
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L7_2
    L8_2 = L7_2.find
    L10_2 = "^job:"
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L2_2[L8_2] = L7_2
    end
  end
  L3_2 = GetCharNames
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = #L4_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L12_2.identifier = L10_2
    L13_2 = L3_2[L10_2]
    L12_2.name = L13_2
    L13_2 = Main
    L13_2 = L13_2.DeepCopy
    L14_2 = L1_2.permissions
    L14_2 = L14_2[L10_2]
    L13_2 = L13_2(L14_2)
    L12_2.permissions = L13_2
    L4_2[L11_2] = L12_2
  end
  return L4_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "isPropertyLocked"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "isPropertyLocked"
  L4_2 = L1_2
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.interior
  if L2_2 then
    L2_2 = L2_2.doors
  end
  if L2_2 then
    L2_2 = Doors
    L2_2 = L2_2.IsDoorSystemLocked
    L3_2 = A0_2
    return L2_2(L3_2)
  end
  L2_2 = Doors
  L2_2 = L2_2.IsEntranceUnlocked
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertyStashes"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "getPropertyStashes"
  L4_2 = L1_2
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.LoadPropertyData
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L5_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = pairs
    L10_2 = L1_2.furniture
    if L10_2 then
      L10_2 = L10_2[L8_2]
    end
    if not L10_2 then
      L10_2 = {}
    end
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = Utils
      L15_2 = L15_2.EntryHasKind
      L16_2 = L14_2
      L17_2 = "storage"
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = #L2_2
        L15_2 = L15_2 + 1
        L16_2 = {}
        L17_2 = Main
        L17_2 = L17_2.GetStorageStashName
        L18_2 = A0_2
        L19_2 = L8_2
        L20_2 = L14_2.id
        L17_2 = L17_2(L18_2, L19_2, L20_2)
        L16_2.stashName = L17_2
        L16_2.furnitureType = L8_2
        L17_2 = L14_2.id
        L16_2.furnitureId = L17_2
        L17_2 = L14_2.model
        L16_2.model = L17_2
        L2_2[L15_2] = L16_2
      end
    end
  end
  L3_2 = Main
  L3_2 = L3_2.ScheduleEviction
  L4_2 = A0_2
  L3_2(L4_2)
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertyUtilities"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "getPropertyUtilities"
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "an existing property id"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Utilities
  L1_2 = L1_2.GetStatus
  L2_2 = A0_2
  return L1_2(L2_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertyBills"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "getPropertyBills"
  L4_2 = L1_2
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.LoadPropertyData
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = {}
  L2_2.totalOwed = 0
  L3_2 = ipairs
  L4_2 = L4_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L1_2.bills
    if L9_2 then
      L9_2 = L9_2[L8_2]
    end
    if L9_2 then
      L10_2 = {}
      L11_2 = L9_2.connected
      L11_2 = true == L11_2
      L10_2.connected = L11_2
      L11_2 = L9_2.amountOwed
      if not L11_2 then
        L11_2 = 0
      end
      L10_2.amountOwed = L11_2
      L11_2 = L9_2.lastPaid
      L10_2.lastPaid = L11_2
      L11_2 = L9_2.dueAt
      L10_2.dueAt = L11_2
      L11_2 = Utilities
      L11_2 = L11_2.IsBillOverdue
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
      L10_2.overdue = L11_2
      L2_2[L8_2] = L10_2
      L10_2 = L2_2.totalOwed
      L11_2 = L2_2[L8_2]
      L11_2 = L11_2.amountOwed
      L10_2 = L10_2 + L11_2
      L2_2.totalOwed = L10_2
    end
  end
  L3_2 = Main
  L3_2 = L3_2.ScheduleEviction
  L4_2 = A0_2
  L3_2(L4_2)
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertyMortgage"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "getPropertyMortgage"
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "an existing property id"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Mortgage
  L1_2 = L1_2.GetInfo
  L2_2 = A0_2
  return L1_2(L2_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "getPropertySecurity"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "getPropertySecurity"
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "an existing property id"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Security
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = L1_2.alarm
  if L3_2 then
    L3_2 = L3_2.installed
  end
  L3_2 = true == L3_2
  L2_2.installed = L3_2
  L3_2 = L1_2.alarm
  if L3_2 then
    L3_2 = L3_2.armed
  end
  L3_2 = true == L3_2
  L2_2.armed = L3_2
  L3_2 = L1_2.alarm
  if L3_2 then
    L3_2 = L3_2.tier
  end
  if not L3_2 then
    L3_2 = 0
  end
  L2_2.tier = L3_2
  L3_2 = L1_2.camera
  if L3_2 then
    L3_2 = L3_2.installed
  end
  L3_2 = true == L3_2
  L2_2.camera = L3_2
  L3_2 = L1_2.state
  if L3_2 then
    L3_2 = L3_2.triggered
  end
  L3_2 = true == L3_2
  L2_2.triggered = L3_2
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "hasStarterProperty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "hasStarterProperty"
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "string" == L3_2 and "" ~= A0_2
  L4_2 = "a player identifier"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetResourceKvpInt
  L2_2 = "tk_housing-starter-"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 > 0
  return L1_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "clearPropertyOwner"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L6_1
  L3_2 = "clearPropertyOwner"
  L4_2 = L1_2
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.owner
  if L2_2 then
    L2_2 = L1_2.owner
    if "" ~= L2_2 then
      goto lbl_23
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_23::
  L2_2 = Properties
  L2_2 = L2_2.RemovePropertyOwner
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = false ~= L2_2
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "deleteProperty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "deleteProperty"
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "an existing property id"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Properties
  L1_2 = L1_2.RemoveProperty
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "addPropertyKeyholder"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L3_2 = "addPropertyKeyholder"
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L6_1
  L3_2 = "addPropertyKeyholder"
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.find
  L6_2 = "^job:"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = "string" == L4_2 and "" ~= A1_2 and L4_2
  L5_2 = "a player identifier"
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Permissions
  L2_2 = L2_2.AddKeyholder
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = nil ~= L2_2
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "removePropertyKeyholder"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L3_2 = "removePropertyKeyholder"
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L6_1
  L3_2 = "removePropertyKeyholder"
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.find
  L6_2 = "^job:"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = "string" == L4_2 and "" ~= A1_2 and L4_2
  L5_2 = "a player identifier"
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Permissions
  L2_2 = L2_2.RemoveKeyholder
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "setPropertyLocked"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L3_2 = "setPropertyLocked"
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L6_1
  L3_2 = "setPropertyLocked"
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = "boolean" == L4_2
  L5_2 = "true or false"
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Doors
  L2_2 = L2_2.SetHouseDoorsLocked
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 > 0
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "enterProperty"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L6_1
  L5_2 = "enterProperty"
  L6_2 = L2_2
  L7_2 = "the server id of an online player"
  L8_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L6_1
  L5_2 = "enterProperty"
  L6_2 = L3_2
  L7_2 = "an existing property id"
  L8_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L6_1
  L5_2 = "enterProperty"
  L6_2 = L3_2.houseInterior
  L7_2 = "a property with a house interior"
  L8_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L7_1
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  if "house" == L5_2 or "garage" == L5_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = L3_2.permissions
  L7_2 = Permissions
  L7_2 = L7_2.DoesPlayerOwnHouse
  L8_2 = L2_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = Permissions
    L7_2 = L7_2.HasPermission
    L8_2 = L2_2
    L9_2 = A1_2
    L10_2 = "lock"
    L11_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      L7_2 = Permissions
      L7_2 = L7_2.HasPermission
      L8_2 = L2_2
      L9_2 = A1_2
      L10_2 = "changeCode"
      L11_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      if not L7_2 then
        L7_2 = Permissions
        L7_2 = L7_2.HasPermission
        L8_2 = L2_2
        L9_2 = A1_2
        L10_2 = "managePermissions"
        L11_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        if not L7_2 then
          L7_2 = false
          return L7_2
        end
      end
    end
  end
  L7_2 = TriggerClientEvent
  L8_2 = "tk_housing:forceEnterProperty"
  L9_2 = A0_2
  L10_2 = A1_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = true
  return L7_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "exitProperty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L6_1
  L2_2 = "exitProperty"
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "the server id of an online player"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L7_1
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  if "house" ~= L2_2 and "garage" ~= L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:forceExitProperty"
  L5_2 = A0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = true
  return L3_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "triggerPropertyAlarm"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L3_2 = "triggerPropertyAlarm"
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "an existing property id"
  L6_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L6_1
  L3_2 = "triggerPropertyAlarm"
  L4_2 = L2_1
  L4_2 = L4_2[A1_2]
  L5_2 = "one of "
  L6_2 = L3_1
  L5_2 = L5_2 .. L6_2
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Security
  L2_2 = L2_2.Trigger
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = true == L2_2
  return L2_2
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "giveStarterProperty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L2_2 = "giveStarterProperty"
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "the server id of an online player"
  L5_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Starter
  L1_2 = L1_2.Grant
  L2_2 = A0_2
  return L1_2(L2_2)
end
L8_1(L9_1, L10_1)
