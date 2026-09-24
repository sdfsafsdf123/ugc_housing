local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = {}
Main = L0_1
L0_1 = false
L1_1 = Main
L2_1 = {}
L1_1.properties = L2_1
L1_1 = Main
L2_1 = {}
L1_1.loadedProperties = L2_1
L1_1 = Main
L2_1 = {}
L1_1.cartItems = L2_1
L1_1 = Main
L2_1 = {}
L1_1.housePlayers = L2_1
L1_1 = Main
L2_1 = {}
L1_1.garagePlayers = L2_1
L1_1 = Main
L2_1 = {}
L1_1.yardPlayers = L2_1
L1_1 = Main
L2_1 = {}
L1_1.spawnedVehicles = L2_1
L1_1 = Main
L2_1 = {}
L1_1.propertyAccess = L2_1
L1_1 = Main
L2_1 = {}
L1_1.lastChange = L2_1
L1_1 = {}
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
end
RegisterLatentCallback = L3_1
L3_1 = RegisterNetEvent
L4_1 = "tk_housing:triggerServerCallback"
function L5_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = error
    L4_2 = "Server callback %s invoked by %s not registered"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A0_2
    L7_2 = A2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = source
  L4_2 = L2_1
  L4_2 = L4_2[A0_2]
  L5_2 = L3_2
  function L6_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = TriggerLatentClientEvent
    L1_3 = "tk_housing:serverCallback"
    L2_3 = L3_2
    L3_3 = Config
    L3_3 = L3_3.BPS
    if not L3_3 then
      L3_3 = 200000
    end
    L4_3 = A1_2
    L5_3 = A2_2
    L6_3 = ...
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L7_2 = ...
  L4_2(L5_2, L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = 0
L4_1 = Main
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = pcall
  function L1_2()
    local L0_3, L1_3
    L0_3 = MySQL
    L0_3 = L0_3.Sync
    L0_3 = L0_3.fetchScalar
    L1_3 = [[
            SELECT MAX(CASE
                WHEN furniture_id REGEXP '^[0-9]+_[0-9]+_' THEN
                    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(furniture_id, '_', 2), '_', -1) AS UNSIGNED)
                WHEN furniture_id REGEXP '^[0-9]{11,}$' THEN
                    CAST(SUBSTRING(furniture_id, 11) AS UNSIGNED)
            END) FROM tk_housing_furniture
        ]]
    return L0_3(L1_3)
  end
  L0_2, L1_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  if L1_2 then
    L2_2 = L3_1
    if L1_2 > L2_2 then
      L3_1 = L1_2
    end
  end
end
L4_1.InitFurnitureIdCounter = L5_1
L4_1 = Main
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L3_1
  L0_2 = L0_2 + 1
  L3_1 = L0_2
  L0_2 = string
  L0_2 = L0_2.format
  L1_2 = "%08x"
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = 4294967295
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = tostring
  L2_2 = os
  L2_2 = L2_2.time
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = "_"
  L3_2 = L3_1
  L4_2 = "_"
  L5_2 = L0_2
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  return L1_2
end
L4_1.GenerateFurnitureId = L5_1
L4_1 = Main
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = "tk_housing_storage_"
  L4_2 = A0_2
  L5_2 = "_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = A2_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  return L3_2
end
L4_1.GetStorageStashName = L5_1
L4_1 = Main
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = Main
  L4_2 = L4_2.GetStorageStashName
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = Utils
  L5_2 = L5_2.GetStorageStashDataByModel
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  L6_2 = RegisterStash
  L7_2 = L4_2
  L8_2 = _U
  L9_2 = "stash"
  L8_2 = L8_2(L9_2)
  L9_2 = L5_2.slots
  if not L9_2 then
    L9_2 = 24
  end
  L10_2 = L5_2.weight
  if not L10_2 then
    L10_2 = 100000
  end
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L4_1.RegisterStorageStash = L5_1
L4_1 = Main
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.furniture
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = ipairs
  L3_2 = {}
  L4_2 = "house"
  L5_2 = "garage"
  L6_2 = "yard"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_2.furniture
    L8_2 = L8_2[L7_2]
    if L8_2 then
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = L14_2.id
        if not L15_2 then
          L15_2 = Main
          L15_2 = L15_2.GenerateFurnitureId
          L15_2 = L15_2()
        end
        L14_2.id = L15_2
        L15_2 = Utils
        L15_2 = L15_2.EntryHasKind
        L16_2 = L14_2
        L17_2 = "storage"
        L15_2 = L15_2(L16_2, L17_2)
        if L15_2 then
          L15_2 = Main
          L15_2 = L15_2.RegisterStorageStash
          L16_2 = A0_2
          L17_2 = L7_2
          L18_2 = L14_2.id
          L19_2 = L14_2.model
          L15_2(L16_2, L17_2, L18_2, L19_2)
        end
      end
    end
  end
end
L4_1.RegisterPropertyStashes = L5_1
L4_1 = Main
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.furniture
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = ipairs
  L3_2 = {}
  L4_2 = "house"
  L5_2 = "garage"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = ipairs
    L10_2 = AccessPoints
    L10_2 = L10_2.Get
    L11_2 = L1_2
    L12_2 = L7_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2)
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L14_2.id
      L8_2[L15_2] = true
      L15_2 = L1_2.furniture
      L16_2 = L1_2.furniture
      L16_2 = L16_2[L7_2]
      if not L16_2 then
        L16_2 = {}
      end
      L15_2[L7_2] = L16_2
      L15_2 = L1_2.furniture
      L15_2 = L15_2[L7_2]
      L16_2 = Main
      L16_2 = L16_2.GetFurnitureIndexById
      L17_2 = L15_2
      L18_2 = L14_2.id
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = vec3
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = L14_2.coords
      L20_2 = L20_2.w
      L17_2 = L17_2(L18_2, L19_2, L20_2)
      if L16_2 then
        L18_2 = L15_2[L16_2]
        L18_2.isAccessPoint = true
        L19_2 = {}
        L20_2 = L14_2.kind
        L19_2[1] = L20_2
        L18_2.kinds = L19_2
        L19_2 = L14_2.model
        if not L19_2 then
          L19_2 = 0
        end
        L18_2.model = L19_2
        L19_2 = L14_2.coords
        L18_2.coords = L19_2
        L18_2.rotation = L17_2
        L18_2.dbRowExists = true
      else
        L18_2 = #L15_2
        L18_2 = L18_2 + 1
        L19_2 = {}
        L20_2 = L14_2.id
        L19_2.id = L20_2
        L20_2 = L14_2.model
        if not L20_2 then
          L20_2 = 0
        end
        L19_2.model = L20_2
        L20_2 = L14_2.coords
        L19_2.coords = L20_2
        L19_2.rotation = L17_2
        L19_2.isAccessPoint = true
        L20_2 = {}
        L21_2 = L14_2.kind
        L20_2[1] = L21_2
        L19_2.kinds = L20_2
        L15_2[L18_2] = L19_2
      end
    end
    L9_2 = L1_2.furniture
    L9_2 = L9_2[L7_2]
    if L9_2 then
      L10_2 = #L9_2
      L11_2 = 1
      L12_2 = -1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L9_2[L13_2]
        L14_2 = L14_2.id
        L15_2 = type
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        if "string" == L15_2 then
          L16_2 = L14_2
          L15_2 = L14_2.match
          L17_2 = "^interior_%d+$"
          L15_2 = L15_2(L16_2, L17_2)
          if not L15_2 then
            L16_2 = L14_2
            L15_2 = L14_2.match
            L17_2 = "^property_%d+$"
            L15_2 = L15_2(L16_2, L17_2)
            if not L15_2 then
              goto lbl_129
            end
          end
          L15_2 = L8_2[L14_2]
          if not L15_2 then
            L15_2 = table
            L15_2 = L15_2.remove
            L16_2 = L9_2
            L17_2 = L13_2
            L15_2(L16_2, L17_2)
          end
        end
        ::lbl_129::
      end
    end
  end
end
L4_1.ReconcileAccessPoints = L5_1
L4_1 = Main
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not (A0_2 < 0) then
    L3_2 = A2_2.isAccessPoint
    if L3_2 then
      L3_2 = A2_2.dbRowExists
      if not L3_2 then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L3_2 = FurnitureDb
  L3_2 = L3_2.Save
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  function L7_2(A0_3)
    local L1_3
    if A0_3 then
      A2_2.dbRowExists = true
    end
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1.SaveAccessPointRow = L5_1
L4_1 = {}
L5_1 = Main
function L6_1(A0_2)
  local L1_2
  L1_2 = L4_1
  L1_2 = L1_2[A0_2]
  L1_2 = true == L1_2
  return L1_2
end
L5_1.IsPropertyLoading = L6_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = FurnitureDb
  L2_2 = L2_2.LoadForProperty
  L3_2 = A1_2.id
  L2_2 = L2_2(L3_2)
  A1_2.furniture = L2_2
  L2_2 = VehicleDb
  L2_2 = L2_2.LoadForProperty
  L3_2 = A1_2.id
  L2_2 = L2_2(L3_2)
  A1_2.vehicles = L2_2
  L2_2 = FurnitureCartDb
  L2_2 = L2_2.LoadForProperty
  L3_2 = A1_2.id
  L2_2 = L2_2(L3_2)
  L3_2 = Main
  L3_2 = L3_2.cartItems
  L4_2 = {}
  L5_2 = L2_2.house
  L4_2.house = L5_2
  L5_2 = L2_2.garage
  L4_2.garage = L5_2
  L5_2 = L2_2.yard
  L4_2.yard = L5_2
  L3_2[A0_2] = L4_2
  L3_2 = Main
  L3_2 = L3_2.ReconcileAccessPoints
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Main
  L3_2 = L3_2.RegisterPropertyStashes
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Generator
  if L3_2 then
    L3_2 = Generator
    L3_2 = L3_2.LoadProperty
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = Electricity
  if L3_2 then
    L3_2 = Electricity
    L3_2 = L3_2.LoadProperty
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = Utilities
  L3_2 = L3_2.LoadBills
  L4_2 = A0_2
  L3_2(L4_2)
end
L6_1 = Main
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 < 0 then
    L1_2 = true
    return L1_2
  end
  L1_2 = Main
  L1_2 = L1_2.IsPropertyLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = L1_1
      L2_2 = L1_1
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2 + 1
      L1_2[A0_2] = L2_2
    end
    L1_2 = true
    return L1_2
  end
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L4_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 + 10000
    while true do
      L3_2 = L4_1
      L3_2 = L3_2[A0_2]
      if not L3_2 then
        break
      end
      L3_2 = GetGameTimer
      L3_2 = L3_2()
      if not (L2_2 > L3_2) then
        break
      end
      L3_2 = Wait
      L4_2 = 50
      L3_2(L4_2)
    end
    L3_2 = Main
    L3_2 = L3_2.IsPropertyLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      if L3_2 then
        L3_2 = L1_1
        L4_2 = L1_1
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2 + 1
        L3_2[A0_2] = L4_2
      end
    end
    L3_2 = Main
    L3_2 = L3_2.IsPropertyLoaded
    L4_2 = A0_2
    return L3_2(L4_2)
  end
  L2_2 = L4_1
  L2_2[A0_2] = true
  L2_2 = pcall
  L3_2 = L5_1
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L4_1
  L4_2[A0_2] = nil
  if not L2_2 then
    L4_2 = Utils
    L4_2 = L4_2.Warn
    L5_2 = "Loading property data from the database failed"
    L6_2 = A0_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = Main
  L4_2 = L4_2.SetPropertyLoaded
  L5_2 = A0_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = Electricity
  if L4_2 then
    L4_2 = Electricity
    L4_2 = L4_2.Reconcile
    L5_2 = A0_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = true
  return L4_2
end
L6_1.LoadPropertyData = L7_1
L6_1 = 60000
L7_1 = Main
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = Main
    L1_2 = L1_2.IsPropertyLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = next
  L2_2 = Main
  L2_2 = L2_2.GetPropertyPlayers
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L1_2 = Temperature
    if not L1_2 then
      goto lbl_28
    end
    L1_2 = Temperature
    L1_2 = L1_2.HasPropertyOccupants
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_28
    end
  end
  do return end
  ::lbl_28::
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = 0
  end
  L1_2 = L1_2 + 1
  L2_2 = L1_1
  L2_2[A0_2] = L1_2
  L2_2 = SetTimeout
  L3_2 = L6_1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L1_3 = A0_2
    L0_3 = L1_1
    L0_3 = L0_3[L1_3]
    L1_3 = L1_2
    if L0_3 ~= L1_3 then
      return
    end
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L1_3 = next
    L2_3 = Main
    L2_3 = L2_3.GetPropertyPlayers
    L3_3 = A0_2
    L2_3, L3_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3)
    if not L1_3 then
      L1_3 = Temperature
      if not L1_3 then
        goto lbl_33
      end
      L1_3 = Temperature
      L1_3 = L1_3.HasPropertyOccupants
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        goto lbl_33
      end
    end
    do return end
    ::lbl_33::
    L1_3 = Electricity
    if L1_3 then
      L1_3 = Electricity
      L1_3 = L1_3.ReleaseProperty
      L2_3 = A0_2
      L1_3(L2_3)
    end
    L1_3 = next
    L2_3 = Main
    L2_3 = L2_3.GetPropertyPlayers
    L3_3 = A0_2
    L2_3, L3_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3)
    if not L1_3 then
      L1_3 = Temperature
      if not L1_3 then
        goto lbl_58
      end
      L1_3 = Temperature
      L1_3 = L1_3.HasPropertyOccupants
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        goto lbl_58
      end
    end
    do return end
    ::lbl_58::
    L1_3 = Generator
    if L1_3 then
      L1_3 = Generator
      L1_3 = L1_3.ReleaseProperty
      L2_3 = A0_2
      L1_3(L2_3)
    end
    L1_3 = Temperature
    if L1_3 then
      L1_3 = Temperature
      L1_3 = L1_3.ReleaseProperty
      L2_3 = A0_2
      L1_3(L2_3)
    end
    L1_3 = {}
    L2_3 = {}
    L1_3.house = L2_3
    L2_3 = {}
    L1_3.yard = L2_3
    L2_3 = {}
    L1_3.garage = L2_3
    L0_3.furniture = L1_3
    L1_3 = {}
    L0_3.vehicles = L1_3
    L1_3 = Music
    L1_3 = L1_3.Clear
    L2_3 = A0_2
    L1_3(L2_3)
    L1_3 = Television
    L1_3 = L1_3.Clear
    L2_3 = A0_2
    L1_3(L2_3)
    L1_3 = Main
    L1_3 = L1_3.SetPropertyLoaded
    L2_3 = A0_2
    L3_3 = false
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L7_1.ScheduleEviction = L8_1
L7_1 = Main
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = Main
  L1_2 = L1_2.GetSpawnedVehicles
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = next
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.vehicles
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    return
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = type
    L12_2 = L10_2.props
    L11_2 = L11_2(L12_2)
    if "table" == L11_2 then
      L11_2 = type
      L12_2 = L10_2.props
      L12_2 = L12_2.plate
      L11_2 = L11_2(L12_2)
      if "string" == L11_2 then
        L11_2 = Utils
        L11_2 = L11_2.NormalizePlate
        L12_2 = L10_2.props
        L12_2 = L12_2.plate
        L11_2 = L11_2(L12_2)
        L4_2[L11_2] = L10_2
      end
    end
  end
  L5_2 = pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = Utils
    L11_2 = L11_2.NormalizePlate
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = L4_2[L11_2]
    if L12_2 then
      L13_2 = VehicleDb
      L13_2 = L13_2.Save
      L14_2 = A0_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
end
L7_1.SaveSpawnedVehicles = L8_1
L7_1 = Main
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.owner
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = GetPlayerFromIdentifier
  L3_2 = L1_2.owner
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.Rent
  L3_2 = L3_2.onNonPayment
  if "lock" == L3_2 then
    L3_2 = L1_2.rentLocked
    if not L3_2 then
      L1_2.rentLocked = true
      L3_2 = Utilities
      L3_2 = L3_2.Sync
      L4_2 = A0_2
      L3_2(L4_2)
      if L2_2 then
        L3_2 = Notify
        L4_2 = GetSource
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = _U
        L6_2 = "rent_locked"
        L5_2 = L5_2(L6_2)
        L6_2 = "error"
        L3_2(L4_2, L5_2, L6_2)
      end
    end
    return
  end
  L3_2 = L1_2.owner
  L4_2 = L1_2.name
  if not L4_2 then
    L4_2 = L1_2.address
  end
  L5_2 = Properties
  L5_2 = L5_2.RemovePropertyOwner
  L6_2 = A0_2
  L5_2(L6_2)
  if L2_2 then
    L5_2 = Notify
    L6_2 = GetSource
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L7_2 = _U
    L8_2 = "rent_not_paid"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = Utils
    L5_2 = L5_2.IsEntityOwner
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = Properties
      L5_2 = L5_2.SaveLostProperty
      L6_2 = L3_2
      L7_2 = "rent"
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L7_1.HandleRentDefault = L8_1
L7_1 = Main
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Config
  L1_2 = L1_2.Bills
  L1_2 = L1_2.enable
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Rent
    L1_2 = L1_2.paymentMode
    L1_2 = "manual" == L1_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.owner
    if L3_2 then
      L3_2 = GetPlayerFromIdentifier
      L4_2 = L2_2.owner
      L3_2 = L3_2(L4_2)
      if L1_2 then
        L4_2 = Utilities
        L4_2 = L4_2.AccrueRent
        L5_2 = A0_2
        L6_2 = L2_2.rent
        L4_2(L5_2, L6_2)
        L4_2 = os
        L4_2 = L4_2.time
        L4_2 = L4_2()
        L2_2.lastRentTime = L4_2
        L4_2 = PropertyDb
        L4_2 = L4_2.UpdateRentTime
        L5_2 = A0_2
        L6_2 = L2_2.lastRentTime
        L4_2(L5_2, L6_2)
        if L3_2 then
          L4_2 = Notify
          L5_2 = GetSource
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          L6_2 = _U
          L7_2 = "bill_charged"
          L8_2 = _U
          L9_2 = "svc_rent"
          L8_2 = L8_2(L9_2)
          L9_2 = Utils
          L9_2 = L9_2.GroupDigits
          L10_2 = L2_2.rent
          L9_2, L10_2 = L9_2(L10_2)
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
          L7_2 = "inform"
          L4_2(L5_2, L6_2, L7_2)
        end
      else
        L4_2 = PayRent
        L5_2 = L2_2.owner
        L6_2 = L2_2.rent
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L4_2 = os
          L4_2 = L4_2.time
          L4_2 = L4_2()
          L2_2.lastRentTime = L4_2
          L4_2 = PropertyDb
          L4_2 = L4_2.UpdateRentTime
          L5_2 = A0_2
          L6_2 = L2_2.lastRentTime
          L4_2(L5_2, L6_2)
          L4_2 = L2_2.rentLocked
          if L4_2 then
            L4_2 = L2_2.bills
            if L4_2 then
              L4_2 = L4_2.rent
              if L4_2 then
                L4_2 = L4_2.amountOwed
              end
            end
            if not L4_2 then
              L4_2 = 0
            end
            if L4_2 <= 0 then
              L2_2.rentLocked = nil
              L4_2 = Utilities
              L4_2 = L4_2.Sync
              L5_2 = A0_2
              L4_2(L5_2)
            end
          end
          if L3_2 then
            L4_2 = Notify
            L5_2 = GetSource
            L6_2 = L3_2
            L5_2 = L5_2(L6_2)
            L6_2 = _U
            L7_2 = "rent_paid"
            L8_2 = Utils
            L8_2 = L8_2.GroupDigits
            L9_2 = L2_2.rent
            L8_2, L9_2, L10_2 = L8_2(L9_2)
            L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
            L7_2 = "success"
            L4_2(L5_2, L6_2, L7_2)
          end
        else
          L4_2 = Config
          L4_2 = L4_2.Bills
          L4_2 = L4_2.enable
          if L4_2 then
            L4_2 = Utilities
            L4_2 = L4_2.AccrueRent
            L5_2 = A0_2
            L6_2 = L2_2.rent
            L4_2(L5_2, L6_2)
            L4_2 = os
            L4_2 = L4_2.time
            L4_2 = L4_2()
            L2_2.lastRentTime = L4_2
            L4_2 = PropertyDb
            L4_2 = L4_2.UpdateRentTime
            L5_2 = A0_2
            L6_2 = L2_2.lastRentTime
            L4_2(L5_2, L6_2)
            if L3_2 then
              L4_2 = Notify
              L5_2 = GetSource
              L6_2 = L3_2
              L5_2 = L5_2(L6_2)
              L6_2 = _U
              L7_2 = "rent_not_paid"
              L6_2 = L6_2(L7_2)
              L7_2 = "error"
              L4_2(L5_2, L6_2, L7_2)
            end
          else
            L4_2 = Main
            L4_2 = L4_2.HandleRentDefault
            L5_2 = A0_2
            L4_2(L5_2)
          end
        end
      end
    end
  end
end
L7_1.ChargeRent = L8_1
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.min
  L1_2 = Config
  L1_2 = L1_2.Rent
  L1_2 = L1_2.interval
  L2_2 = 3600000
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = Config
      L0_3 = L0_3.Rent
      L0_3 = L0_3.interval
      L0_3 = L0_3 / 1000
      L1_3 = {}
      L2_3 = pairs
      L3_3 = Main
      L3_3 = L3_3.GetProperties
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L3_3()
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.owner
        if L8_3 then
          L8_3 = L7_3.lastRentTime
          if L8_3 then
            L8_3 = Utils
            L8_3 = L8_3.IsMotelType
            L9_3 = L7_3.propertyType
            L8_3 = L8_3(L9_3)
            if not L8_3 then
              L8_3 = Utils
              L8_3 = L8_3.IsEntityOwner
              L9_3 = L7_3.owner
              L8_3 = L8_3(L9_3)
              if not L8_3 then
                L8_3 = os
                L8_3 = L8_3.time
                L8_3 = L8_3()
                L9_3 = L7_3.lastRentTime
                L8_3 = L8_3 - L9_3
                if not (L8_3 < 0) then
                  L9_3 = L0_3 * 10
                  if not (L8_3 > L9_3) then
                    goto lbl_54
                  end
                end
                L9_3 = os
                L9_3 = L9_3.time
                L9_3 = L9_3()
                L7_3.lastRentTime = L9_3
                L9_3 = PropertyDb
                L9_3 = L9_3.UpdateRentTime
                L10_3 = L6_3
                L11_3 = L7_3.lastRentTime
                L9_3(L10_3, L11_3)
                goto lbl_60
                ::lbl_54::
                if L0_3 <= L8_3 then
                  L9_3 = #L1_3
                  L9_3 = L9_3 + 1
                  L1_3[L9_3] = L6_3
                end
              end
            end
          end
        end
        ::lbl_60::
      end
      L2_3 = ipairs
      L3_3 = L1_3
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = Main
        L8_3 = L8_3.ChargeRent
        L9_3 = L7_3
        L8_3(L9_3)
      end
      L2_3 = {}
      L3_3 = pairs
      L4_3 = Main
      L4_3 = L4_3.GetProperties
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L4_3()
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = L8_3.owner
        if L9_3 then
          L9_3 = L8_3.lastRentTime
          if L9_3 then
            L9_3 = Utils
            L9_3 = L9_3.IsMotelType
            L10_3 = L8_3.propertyType
            L9_3 = L9_3(L10_3)
            if not L9_3 then
              L9_3 = Utils
              L9_3 = L9_3.IsEntityOwner
              L10_3 = L8_3.owner
              L9_3 = L9_3(L10_3)
              if not L9_3 then
                L9_3 = Utilities
                L9_3 = L9_3.IsRentOverdue
                L10_3 = L7_3
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  L9_3 = #L2_3
                  L9_3 = L9_3 + 1
                  L2_3[L9_3] = L7_3
                end
              end
            end
          end
        end
      end
      L3_3 = ipairs
      L4_3 = L2_3
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = Main
        L9_3 = L9_3.HandleRentDefault
        L10_3 = L8_3
        L9_3(L10_3)
      end
      L3_3 = Wait
      L4_3 = L0_2
      L3_3(L4_3)
    end
  end
  L1_2(L2_2)
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Config
  L0_2 = L0_2.EnableMotels
  if not L0_2 then
    return
  end
  L0_2 = type
  L1_2 = Config
  L1_2 = L1_2.Motel
  L1_2 = L1_2.sweepInterval
  L0_2 = L0_2(L1_2)
  if "number" == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Motel
    L0_2 = L0_2.sweepInterval
    if L0_2 > 0 then
      L0_2 = Config
      L0_2 = L0_2.Motel
      L0_2 = L0_2.sweepInterval
      if L0_2 then
        goto lbl_24
      end
    end
  end
  L0_2 = 60000
  ::lbl_24::
  L1_2 = Config
  L1_2 = L1_2.Motel
  L1_2 = L1_2.duration
  L1_2 = L1_2 * 60
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = {}
      L1_3 = pairs
      L2_3 = Main
      L2_3 = L2_3.GetProperties
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L2_3()
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = Utils
        L7_3 = L7_3.IsMotelType
        L8_3 = L6_3.propertyType
        L7_3 = L7_3(L8_3)
        if L7_3 then
          L7_3 = L6_3.owner
          if L7_3 then
            L7_3 = L6_3.lastRentTime
            if L7_3 then
              L7_3 = os
              L7_3 = L7_3.time
              L7_3 = L7_3()
              L8_3 = L6_3.lastRentTime
              L7_3 = L7_3 - L8_3
              if L7_3 < 0 then
                L8_3 = os
                L8_3 = L8_3.time
                L8_3 = L8_3()
                L6_3.lastRentTime = L8_3
                L8_3 = PropertyDb
                L8_3 = L8_3.UpdateRentTime
                L9_3 = L5_3
                L10_3 = L6_3.lastRentTime
                L8_3(L9_3, L10_3)
              else
                L8_3 = L1_2
                if L7_3 >= L8_3 then
                  L8_3 = #L0_3
                  L8_3 = L8_3 + 1
                  L0_3[L8_3] = L5_3
                end
              end
            end
          end
        end
      end
      L1_3 = ipairs
      L2_3 = L0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = Main
        L7_3 = L7_3.GetProperty
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        if L7_3 then
          L8_3 = L7_3.owner
          if L8_3 then
            L8_3 = Utils
            L8_3 = L8_3.IsMotelType
            L9_3 = L7_3.propertyType
            L8_3 = L8_3(L9_3)
            if L8_3 then
              L8_3 = GetPlayerFromIdentifier
              L9_3 = L7_3.owner
              L8_3 = L8_3(L9_3)
              L9_3 = Properties
              L9_3 = L9_3.RemovePropertyOwner
              L10_3 = L6_3
              L9_3(L10_3)
              if L8_3 then
                L9_3 = Notify
                L10_3 = GetSource
                L11_3 = L8_3
                L10_3 = L10_3(L11_3)
                L11_3 = _U
                L12_3 = "motel_expired"
                L11_3 = L11_3(L12_3)
                L12_3 = "inform"
                L9_3(L10_3, L11_3, L12_3)
              end
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = L0_2
      L1_3(L2_3)
    end
  end
  L2_2(L3_2)
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 2166136261
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.byte
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L1_2 ~ L6_2
    L6_2 = L6_2 * 16777619
    L1_2 = L6_2 % 4294967296
  end
  return L1_2
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L0_2 = Config
  L0_2 = L0_2.UsePremadeProperties
  if L0_2 then
    L0_2 = type
    L1_2 = Config
    L1_2 = L1_2.Properties
    L0_2 = L0_2(L1_2)
    if "table" == L0_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L0_2 = 100000
  L1_2 = 50000
  L2_2 = 5
  L3_2 = 0.1
  L4_2 = 10
  L5_2 = 100000
  L6_2 = {}
  L7_2 = pairs
  L8_2 = Config
  L8_2 = L8_2.HouseInteriors
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.isCustomShell
    if not L13_2 then
      L13_2 = #L6_2
      L13_2 = L13_2 + 1
      L6_2[L13_2] = L11_2
    end
  end
  L7_2 = table
  L7_2 = L7_2.sort
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = #L6_2
  if 0 == L7_2 then
    L7_2 = Utils
    L7_2 = L7_2.Warn
    L8_2 = "Config.HouseInteriors has no static entries. Add one or premade properties get no interior"
    L7_2(L8_2)
  end
  L7_2 = {}
  L8_2 = pairs
  L9_2 = Main
  L9_2 = L9_2.properties
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.name
    if L14_2 then
      L14_2 = L13_2.name
      L7_2[L14_2] = true
    end
  end
  L8_2 = ipairs
  L9_2 = Config
  L9_2 = L9_2.Properties
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.name
    L14_2 = L7_2[L14_2]
    if not L14_2 then
      L14_2 = L13_2.name
      L7_2[L14_2] = true
      L14_2 = L9_1
      L15_2 = L13_2.name
      L14_2 = L14_2(L15_2)
      L15_2 = L13_2.houseInterior
      if not L15_2 then
        L16_2 = L13_2.houseInteriorIndex
        if L16_2 then
          L16_2 = L13_2.houseInteriorIndex
          L15_2 = L6_2[L16_2]
        end
      end
      if not L15_2 then
        L16_2 = #L6_2
        if L16_2 > 0 then
          L16_2 = #L6_2
          L16_2 = L14_2 % L16_2
          L16_2 = L16_2 + 1
          L15_2 = L6_2[L16_2]
        end
      end
      L16_2 = 1
      L17_2 = ipairs
      L18_2 = L6_2
      L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
      for L21_2, L22_2 in L17_2, L18_2, L19_2, L20_2 do
        if L22_2 == L15_2 then
          L16_2 = L21_2
          break
        end
      end
      L17_2 = math
      L17_2 = L17_2.min
      L18_2 = L16_2
      L19_2 = L2_2
      L17_2 = L17_2(L18_2, L19_2)
      L18_2 = L17_2 * L1_2
      L18_2 = L0_2 + L18_2
      L19_2 = L14_2 * 2654435761
      L19_2 = L19_2 + 1013904223
      L19_2 = L19_2 % 4294967296
      L20_2 = 2 * L4_2
      L20_2 = L20_2 + 1
      L20_2 = L19_2 % L20_2
      L20_2 = L20_2 - L4_2
      L20_2 = L20_2 * 10000
      L21_2 = L13_2.price
      if not L21_2 then
        L21_2 = math
        L21_2 = L21_2.max
        L22_2 = L5_2
        L23_2 = L18_2 + L20_2
        L21_2 = L21_2(L22_2, L23_2)
      end
      L22_2 = L13_2.rent
      if not L22_2 then
        L22_2 = math
        L22_2 = L22_2.ceil
        L23_2 = L21_2 * L3_2
        L22_2 = L22_2(L23_2)
      end
      L23_2 = L13_2.name
      L24_2 = L23_2
      L23_2 = L23_2.gsub
      L25_2 = "%d"
      L26_2 = ""
      L23_2 = L23_2(L24_2, L25_2, L26_2)
      L24_2 = type
      L25_2 = L13_2.maxStorages
      L24_2 = L24_2(L25_2)
      if "number" == L24_2 then
        L24_2 = L13_2.maxStorages
        if L24_2 >= 1 then
          L24_2 = math
          L24_2 = L24_2.floor
          L25_2 = L13_2.maxStorages
          L24_2 = L24_2(L25_2)
          if L24_2 then
            goto lbl_168
          end
        end
      end
      L24_2 = nil
      ::lbl_168::
      L25_2 = type
      L26_2 = L13_2.maxFurniture
      L25_2 = L25_2(L26_2)
      if "number" == L25_2 then
        L25_2 = L13_2.maxFurniture
        if L25_2 >= 1 then
          L25_2 = math
          L25_2 = L25_2.floor
          L26_2 = L13_2.maxFurniture
          L25_2 = L25_2(L26_2)
          if L25_2 then
            goto lbl_183
          end
        end
      end
      L25_2 = nil
      ::lbl_183::
      L26_2 = -L12_2
      L27_2 = Main
      L27_2 = L27_2.properties
      L28_2 = {}
      L28_2.id = L26_2
      L29_2 = {}
      L30_2 = {}
      L31_2 = {}
      L32_2 = vec4
      L33_2 = L13_2.coords
      L33_2 = L33_2.x
      L34_2 = L13_2.coords
      L34_2 = L34_2.y
      L35_2 = L13_2.coords
      L35_2 = L35_2.z
      L35_2 = L35_2 - 1.0
      L36_2 = 0.0
      L32_2 = L32_2(L33_2, L34_2, L35_2, L36_2)
      L31_2.coords = L32_2
      L31_2.exitIndex = 1
      L32_2 = _U
      L33_2 = "door_front_door"
      L32_2 = L32_2(L33_2)
      L31_2.label = L32_2
      L30_2[1] = L31_2
      L29_2.house = L30_2
      L28_2.doors = L29_2
      L29_2 = {}
      L28_2.doorLinks = L29_2
      L28_2.houseInterior = L15_2
      L28_2.price = L21_2
      L28_2.rent = L22_2
      L29_2 = L13_2.name
      L28_2.name = L29_2
      L28_2.address = L23_2
      L28_2.maxStorages = L24_2
      L28_2.maxFurniture = L25_2
      L29_2 = PropertyDb
      L29_2 = L29_2.DefaultSecurity
      L29_2 = L29_2()
      L28_2.security = L29_2
      L29_2 = {}
      L28_2.interiorStyle = L29_2
      L29_2 = {}
      L28_2.ambience = L29_2
      L29_2 = {}
      L28_2.yard = L29_2
      L29_2 = {}
      L28_2.permissions = L29_2
      L29_2 = {}
      L30_2 = {}
      L29_2.house = L30_2
      L30_2 = {}
      L29_2.yard = L30_2
      L30_2 = {}
      L29_2.garage = L30_2
      L28_2.furniture = L29_2
      L29_2 = {}
      L28_2.vehicles = L29_2
      L27_2[L26_2] = L28_2
      L27_2 = Main
      L27_2 = L27_2.ReconcileAccessPoints
      L28_2 = L26_2
      L27_2(L28_2)
      L27_2 = Main
      L27_2 = L27_2.RegisterPropertyStashes
      L28_2 = L26_2
      L27_2(L28_2)
    end
  end
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Locales
  L1_2 = Config
  L1_2 = L1_2.Locale
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    L0_2 = Utils
    L0_2 = L0_2.Warn
    L1_2 = "Config.Locale is set to a locale that has no locales/*.lua file. The menu will show raw keys"
    L2_2 = Config
    L2_2 = L2_2.Locale
    L0_2(L1_2, L2_2)
  end
  L0_2 = pcall
  L1_2 = Main
  L1_2 = L1_2.RunMigrations
  L0_2, L1_2 = L0_2(L1_2)
  if not L0_2 then
    L2_2 = Utils
    L2_2 = L2_2.Warn
    L3_2 = "Database migration failed, housing disabled for this boot to avoid writing to a partly-migrated database. Your data is intact, nothing was deleted and legacy columns were kept. Check the error below and restart"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = Main
  L2_2 = L2_2.InitFurnitureIdCounter
  L2_2()
  L2_2 = Main
  L3_2 = PropertyDb
  L3_2 = L3_2.LoadAll
  L3_2 = L3_2()
  L2_2.properties = L3_2
  L2_2 = L10_1
  L2_2()
  L2_2 = Generator
  if L2_2 then
    L2_2 = Generator
    L2_2 = L2_2.Prime
    L2_2()
  end
  L2_2 = Utilities
  L2_2 = L2_2.PrimeBills
  L2_2()
  L2_2 = Main
  L2_2 = L2_2.ClearExportCache
  L2_2()
  L2_2 = Business
  if L2_2 then
    L2_2 = Business
    L2_2 = L2_2.Init
    L2_2()
  end
  L2_2 = Properties
  L2_2 = L2_2.LoadOwnerLabels
  L2_2()
  L2_2 = L7_1
  L2_2()
  L2_2 = L8_1
  L2_2()
  L2_2 = Utilities
  L2_2 = L2_2.StartLoop
  L2_2()
  L2_2 = Mortgage
  L2_2 = L2_2.StartLoop
  L2_2()
  L2_2 = Starter
  L2_2 = L2_2.Init
  L2_2()
  L2_2 = RegisterItems
  L2_2()
  L2_2 = OwnedFurniture
  L2_2 = L2_2.LoadDeliveries
  L2_2()
  L2_2 = true
  L0_1 = L2_2
  L2_2 = Main
  L2_2.ready = true
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 or "" == A0_2 then
    return
  end
  L2_2 = CreateUsableItem
  L3_2 = A0_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = TriggerClientEvent
    L2_3 = A1_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = Security
  L0_2 = L0_2.RegisterItems
  L0_2()
  L0_2 = L12_1
  L1_2 = Config
  L1_2 = L1_2.PropertyManager
  L1_2 = L1_2.item
  L2_2 = "tk_housing:openPropertyManager"
  L0_2(L1_2, L2_2)
  L0_2 = L12_1
  L1_2 = Config
  L1_2 = L1_2.PropertyList
  L1_2 = L1_2.item
  L2_2 = "tk_housing:openPropertyList"
  L0_2(L1_2, L2_2)
  L0_2 = Config
  L0_2 = L0_2.RealEstateBusiness
  if L0_2 then
    L0_2 = L0_2.enabled
  end
  if L0_2 then
    L0_2 = L12_1
    L1_2 = Config
    L1_2 = L1_2.RealEstateBusiness
    L1_2 = L1_2.menuItem
    L2_2 = "tk_housing:openBusinessMenu"
    L0_2(L1_2, L2_2)
  end
  L0_2 = Config
  L0_2 = L0_2.Furnishing
  L0_2 = L0_2.enable
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Furnishing
    L0_2 = L0_2.acquisition
    if "inventory" == L0_2 then
      L0_2 = Config
      L0_2 = L0_2.Furnishing
      L0_2 = L0_2.buyAt
      L0_2 = L0_2.menu
      if not L0_2 then
        L0_2 = Config
        L0_2 = L0_2.Furnishing
        L0_2 = L0_2.buyAt
        L0_2 = L0_2.shop
        if not L0_2 then
          goto lbl_58
        end
      end
      L0_2 = L12_1
      L1_2 = Config
      L1_2 = L1_2.Furnishing
      L1_2 = L1_2.shop
      L1_2 = L1_2.item
      L2_2 = "tk_housing:openFurnitureShop"
      L0_2(L1_2, L2_2)
    end
  end
  ::lbl_58::
end
RegisterItems = L13_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.DeepCopy
  L2_2 = A0_2
  return L1_2(L2_2)
end
L13_1.DeepCopy = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.properties
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetProperty = L14_1
L13_1 = Main
function L14_1()
  local L0_2, L1_2
  L0_2 = Main
  L0_2 = L0_2.properties
  return L0_2
end
L13_1.GetProperties = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.properties
  L2_2[A0_2] = A1_2
end
L13_1.SetProperty = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.properties
  L1_2[A0_2] = nil
end
L13_1.RemoveProperty = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.loadedProperties
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.IsPropertyLoaded = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.loadedProperties
  L2_2[A0_2] = A1_2
end
L13_1.SetPropertyLoaded = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.propertyAccess
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetPropertyAccess = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.propertyAccess
  L2_2[A0_2] = A1_2
end
L13_1.SetPropertyAccess = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.propertyAccess
  L1_2[A0_2] = nil
end
L13_1.ClearPropertyAccess = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = Main
  L3_2 = L3_2.lastChange
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = Main
    L3_2 = L3_2.lastChange
    L3_2 = L3_2[A0_2]
    L3_2 = L2_2 - L3_2
    L4_2 = A1_2 or L4_2
    if not A1_2 then
      L4_2 = 1000
    end
    if L3_2 < L4_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = Main
  L3_2 = L3_2.lastChange
  L3_2[A0_2] = L2_2
  L3_2 = true
  return L3_2
end
L13_1.AllowChange = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Main
  L2_2 = L2_2.GetHousePlayers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Main
  L3_2 = L3_2.GetGaragePlayers
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = Main
  L5_2 = L5_2.propertyAccess
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 == A0_2 and L8_2 ~= A1_2 then
      L10_2 = L2_2 or L10_2
      if L2_2 then
        L10_2 = L2_2[L8_2]
      end
      if not L10_2 then
        L10_2 = L3_2 or L10_2
        if L3_2 then
          L10_2 = L3_2[L8_2]
        end
        if not L10_2 then
          L10_2 = Main
          L10_2 = L10_2.propertyAccess
          L10_2[L8_2] = nil
        end
      end
    end
  end
end
L13_1.ClearPropertyAccessForProperty = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.housePlayers
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetHousePlayers = L14_1
L13_1 = Main
function L14_1()
  local L0_2, L1_2
  L0_2 = Main
  L0_2 = L0_2.housePlayers
  return L0_2
end
L13_1.GetAllHousePlayers = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.housePlayers
  L2_2[A0_2] = A1_2
end
L13_1.SetHousePlayers = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.housePlayers
  L1_2[A0_2] = nil
end
L13_1.RemoveHousePlayers = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.garagePlayers
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetGaragePlayers = L14_1
L13_1 = Main
function L14_1()
  local L0_2, L1_2
  L0_2 = Main
  L0_2 = L0_2.garagePlayers
  return L0_2
end
L13_1.GetAllGaragePlayers = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.garagePlayers
  L2_2[A0_2] = A1_2
end
L13_1.SetGaragePlayers = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.garagePlayers
  L1_2[A0_2] = nil
end
L13_1.RemoveGaragePlayers = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.yardPlayers
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetYardPlayers = L14_1
L13_1 = Main
function L14_1()
  local L0_2, L1_2
  L0_2 = Main
  L0_2 = L0_2.yardPlayers
  return L0_2
end
L13_1.GetAllYardPlayers = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.yardPlayers
  L2_2[A0_2] = A1_2
end
L13_1.SetYardPlayers = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.yardPlayers
  L1_2[A0_2] = nil
end
L13_1.RemoveYardPlayers = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.spawnedVehicles
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetSpawnedVehicles = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.spawnedVehicles
  L2_2[A0_2] = A1_2
end
L13_1.SetSpawnedVehicles = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.cartItems
  L1_2 = L1_2[A0_2]
  return L1_2
end
L13_1.GetCartItems = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = Main
  L2_2 = L2_2.cartItems
  L2_2[A0_2] = A1_2
end
L13_1.SetCartItems = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2
  L1_2 = Main
  L1_2 = L1_2.cartItems
  L1_2[A0_2] = nil
end
L13_1.RemoveCartItems = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Main
  L3_2 = L3_2.properties
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L3_2.furniture
    if L3_2 then
      L3_2 = L3_2[A1_2]
    end
  end
  L4_2 = Main
  L4_2 = L4_2.GetFurnitureIndexById
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = L3_2[L4_2]
  L5_2 = L5_2.data
  if L5_2 then
    L5_2 = L5_2.open
  end
  return L5_2
end
L13_1.GetFurnitureLockState = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = Furniture
  L5_2 = L5_2.SetData
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = {}
  L10_2 = A3_2 or L10_2
  if not A3_2 then
    L10_2 = false
  end
  L9_2.open = L10_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L13_1.SetFurnitureLockState = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 1000
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = vec3
    L10_2 = L8_2.x
    L11_2 = L8_2.y
    L12_2 = L8_2.z
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L9_2 = A1_2 - L9_2
    L9_2 = #L9_2
    if L2_2 > L9_2 then
      L2_2 = L9_2
    end
  end
  return L2_2
end
L13_1.GetClosestPointDistance = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    if L8_2 == A1_2 then
      return L6_2
    end
  end
  return
end
L13_1.GetFurnitureIndexById = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = Main
  L3_2 = L3_2.GetHousePlayers
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = pairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2 in L4_2, L5_2, L6_2, L7_2 do
      L9_2 = L1_2[L8_2]
      if not L9_2 then
        L1_2[L8_2] = true
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L2_2[L9_2] = L8_2
      end
    end
  end
  L4_2 = Main
  L4_2 = L4_2.GetGaragePlayers
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2 in L5_2, L6_2, L7_2, L8_2 do
      L10_2 = L1_2[L9_2]
      if not L10_2 then
        L1_2[L9_2] = true
        L10_2 = #L2_2
        L10_2 = L10_2 + 1
        L2_2[L10_2] = L9_2
      end
    end
  end
  return L2_2
end
L13_1.GetPropertyPlayers = L14_1
L13_1 = Main
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetJobName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetGradeId
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "number" ~= L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2[A1_2]
  if L5_2 then
    L5_2 = L5_2[L3_2]
  end
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Jobs
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2[L3_2]
    L5_2 = L4_2 >= L5_2
  end
  return L5_2
end
L13_1.HasJob = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.GetListingRules
  L1_2 = L1_2()
  L1_2 = L1_2.agents
  if "none" == L1_2 then
    L2_2 = false
    return L2_2
  end
  if "job" ~= L1_2 then
    L2_2 = Business
    if L2_2 then
      L2_2 = Business
      L2_2 = L2_2.CanCreateProperty
      L3_2 = GetPlayerFromId
      L4_2 = A0_2
      L3_2, L4_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = true
        L4_2 = L2_2
        return L3_2, L4_2
      end
    end
  end
  L2_2 = "business" ~= L1_2
  return L2_2
end
L13_1.CanCreateProperties = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.GetListingRules
  L1_2 = L1_2()
  L1_2 = L1_2.agents
  if "none" == L1_2 then
    L2_2 = false
    return L2_2
  end
  if "job" ~= L1_2 then
    L2_2 = Business
    if L2_2 then
      L2_2 = Business
      L2_2 = L2_2.CanSellProperty
      L3_2 = GetPlayerFromId
      L4_2 = A0_2
      L3_2, L4_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = true
        L4_2 = L2_2
        return L3_2, L4_2
      end
    end
  end
  L2_2 = "business" ~= L1_2
  return L2_2
end
L13_1.CanListProperties = L14_1
L13_1 = Main
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.GetShellBuildAgents
  L1_2 = L1_2()
  if "none" == L1_2 then
    L2_2 = false
    return L2_2
  end
  if "job" ~= L1_2 then
    L2_2 = Business
    if L2_2 then
      L2_2 = Business
      L2_2 = L2_2.CanBuildShells
      L3_2 = GetPlayerFromId
      L4_2 = A0_2
      L3_2, L4_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  end
  L2_2 = "business" ~= L1_2
  return L2_2
end
L13_1.CanBuildShells = L14_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = os
  L1_2 = L1_2.time
  L1_2 = L1_2()
  L2_2 = SetResourceKvpInt
  L3_2 = "tk_housing-lastEnter-"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
SetPropertyLastEnter = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetResourceKvpInt
  L2_2 = "tk_housing-lastEnter-"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if not (L1_2 > 0) or not L1_2 then
    L2_2 = nil
  end
  return L2_2
end
GetPropertyLastEnter = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = A0_2 * 24
  L3_2 = L3_2 * 60
  L3_2 = L3_2 * 60
  L2_2 = L2_2 - L3_2
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetProperties
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = GetPropertyLastEnter
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 and L2_2 > L8_2 then
      L9_2 = Properties
      L9_2 = L9_2.RemoveProperty
      L10_2 = L7_2
      L9_2(L10_2)
      L1_2 = L1_2 + 1
    end
  end
  L3_2 = Utils
  L3_2 = L3_2.Warn
  L4_2 = "Removed "
  L5_2 = L1_2
  L6_2 = " unused properties"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2(L4_2)
end
RemoveUnusedProperties = L13_1
L13_1 = Config
L13_1 = L13_1.Commands
L13_1 = L13_1.removePropertyOwner
if L13_1 then
  L13_1 = Config
  L13_1 = L13_1.Commands
  L13_1 = L13_1.removePropertyOwner
  if "" ~= L13_1 then
    L13_1 = RegisterCommand
    L14_1 = Config
    L14_1 = L14_1.Commands
    L14_1 = L14_1.removePropertyOwner
    function L15_1(A0_2, A1_2, A2_2)
      local L3_2, L4_2, L5_2
      L3_2 = tonumber
      L4_2 = A1_2[1]
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        return
      end
      L4_2 = Properties
      L4_2 = L4_2.RemovePropertyOwner
      L5_2 = L3_2
      L4_2(L5_2)
    end
    L16_1 = true
    L13_1(L14_1, L15_1, L16_1)
  end
end
L13_1 = AddEventHandler
L14_1 = "playerDropped"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = Main
  L2_2 = L2_2.ClearPropertyAccess
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = Main
  L2_2 = L2_2.lastChange
  L2_2[L1_2] = nil
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetAllHousePlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2[L1_2]
    if L8_2 then
      L7_2[L1_2] = nil
      L8_2 = next
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = Main
        L8_2 = L8_2.RemoveHousePlayers
        L9_2 = L6_2
        L8_2(L9_2)
      end
      L8_2 = Main
      L8_2 = L8_2.ScheduleEviction
      L9_2 = L6_2
      L8_2(L9_2)
      L8_2 = TriggerEvent
      L9_2 = "tk_housing:propertyLeft"
      L10_2 = L1_2
      L11_2 = L6_2
      L12_2 = "house"
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetAllGaragePlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2[L1_2]
    if L8_2 then
      L7_2[L1_2] = nil
      L8_2 = next
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = Main
        L8_2 = L8_2.RemoveGaragePlayers
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = Main
        L8_2 = L8_2.GetSpawnedVehicles
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = Main
          L8_2 = L8_2.SaveSpawnedVehicles
          L9_2 = L6_2
          L8_2(L9_2)
          L8_2 = Garage
          L8_2 = L8_2.CleanupGarageVehicles
          L9_2 = L6_2
          L8_2(L9_2)
        end
      end
      L8_2 = Main
      L8_2 = L8_2.ScheduleEviction
      L9_2 = L6_2
      L8_2(L9_2)
      L8_2 = TriggerEvent
      L9_2 = "tk_housing:propertyLeft"
      L10_2 = L1_2
      L11_2 = L6_2
      L12_2 = "garage"
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetAllYardPlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2[L1_2]
    if L8_2 then
      L7_2[L1_2] = nil
      L8_2 = next
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = Main
        L8_2 = L8_2.RemoveYardPlayers
        L9_2 = L6_2
        L8_2(L9_2)
      end
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = AddEventHandler
L14_1 = "onResourceStop"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetAllGaragePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Main
    L7_2 = L7_2.SaveSpawnedVehicles
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L12_2 = LeavingGarage
      L13_2 = L11_2
      L14_2 = L5_2
      L12_2(L13_2, L14_2)
      L12_2 = Properties
      L12_2 = L12_2.SetCurrentProperty
      L13_2 = L11_2
      L14_2 = "garage"
      L12_2(L13_2, L14_2)
      L12_2 = TriggerEvent
      L13_2 = "tk_housing:propertyLeft"
      L14_2 = L11_2
      L15_2 = L5_2
      L16_2 = "garage"
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetAllHousePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L12_2 = LeavingHouse
      L13_2 = L11_2
      L14_2 = L5_2
      L12_2(L13_2, L14_2)
      L12_2 = Properties
      L12_2 = L12_2.SetCurrentProperty
      L13_2 = L11_2
      L14_2 = "house"
      L12_2(L13_2, L14_2)
      L12_2 = TriggerEvent
      L13_2 = "tk_housing:propertyLeft"
      L14_2 = L11_2
      L15_2 = L5_2
      L16_2 = "house"
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = {}
L13_1.furniture = true
L13_1.vehicles = true
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L13_1
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L8_2 = A0_2[L6_2]
      if nil == L8_2 then
        A0_2[L6_2] = L7_2
      end
    end
  end
  return A0_2
end
L15_1 = {}
L15_1.furniture = true
L15_1.vehicles = true
L15_1.bills = true
L15_1.security = true
L15_1.permissions = true
L16_1 = Main
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return A0_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = pairs
    L10_2 = L7_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      if "code" ~= L13_2 then
        L8_2[L13_2] = L14_2
      end
    end
    L1_2[L6_2] = L8_2
  end
  return L1_2
end
L16_1.StripDoorCodes = L17_1
L16_1 = Main
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L15_1
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L1_2[L6_2] = L7_2
    end
  end
  L2_2 = {}
  L3_2 = {}
  L2_2.house = L3_2
  L3_2 = {}
  L2_2.yard = L3_2
  L3_2 = {}
  L2_2.garage = L3_2
  L1_2.furniture = L2_2
  L2_2 = Ambience
  L2_2 = L2_2.ForClient
  L3_2 = A0_2.ambience
  L2_2 = L2_2(L3_2)
  L1_2.ambience = L2_2
  L2_2 = Main
  L2_2 = L2_2.StripDoorCodes
  L3_2 = A0_2.doorLinks
  L2_2 = L2_2(L3_2)
  L1_2.doorLinks = L2_2
  L2_2 = Properties
  L2_2 = L2_2.GetOwnerLabel
  L3_2 = A0_2.listedBy
  L2_2 = L2_2(L3_2)
  L1_2.listedByLabel = L2_2
  L2_2 = A0_2.doors
  if L2_2 then
    L2_2 = {}
    L3_2 = Main
    L3_2 = L3_2.StripDoorCodes
    L4_2 = A0_2.doors
    L4_2 = L4_2.house
    L3_2 = L3_2(L4_2)
    L2_2.house = L3_2
    L3_2 = Main
    L3_2 = L3_2.StripDoorCodes
    L4_2 = A0_2.doors
    L4_2 = L4_2.garage
    L3_2 = L3_2(L4_2)
    L2_2.garage = L3_2
    L1_2.doors = L2_2
  end
  L2_2 = A0_2.interior
  if L2_2 then
    L2_2 = L2_2.doors
  end
  if L2_2 then
    L2_2 = {}
    L3_2 = pairs
    L4_2 = A0_2.interior
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L2_2[L7_2] = L8_2
    end
    L3_2 = Main
    L3_2 = L3_2.StripDoorCodes
    L4_2 = A0_2.interior
    L4_2 = L4_2.doors
    L3_2 = L3_2(L4_2)
    L2_2.doors = L3_2
    L1_2.interior = L2_2
  end
  return L1_2
end
L16_1.BuildClientProperty = L17_1
L16_1 = nil
L17_1 = nil
L18_1 = nil
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetProperties
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Main
    L7_2 = L7_2.BuildClientProperty
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L0_2[L5_2] = L7_2
  end
  return L0_2
end
L20_1 = RegisterLatentCallback
L21_1 = "tk_housing:getProperties"
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 30000
  while true do
    L3_2 = L0_1
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = Utils
      L3_2 = L3_2.Warn
      L4_2 = "Timed out waiting for init before responding to getProperties, player will retry"
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      L3_2 = A1_2
      L4_2 = false
      L3_2(L4_2)
      return
    end
  end
  L3_2 = L18_1
  L3_2()
  L3_2 = L16_1
  if not L3_2 then
    L3_2 = L19_1
    L3_2 = L3_2()
    L16_1 = L3_2
  end
  L3_2 = A1_2
  L4_2 = L16_1
  L3_2(L4_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCallback
L21_1 = "tk_housing:getPropertyFurniture"
function L22_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "number" ~= L5_2 or not L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    return L5_2(L6_2)
  end
  if "house" ~= A3_2 and "yard" ~= A3_2 and "garage" ~= A3_2 then
    L5_2 = A1_2
    L6_2 = {}
    return L5_2(L6_2)
  end
  if "house" == A3_2 then
    L5_2 = Properties
    L5_2 = L5_2.CanAccessProperty
    L6_2 = GetPlayerFromId
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2
    L8_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if not L5_2 then
      L5_2 = A1_2
      L6_2 = {}
      return L5_2(L6_2)
    end
  end
  L5_2 = Main
  L5_2 = L5_2.LoadPropertyData
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = L4_2.furniture
  if L7_2 then
    L7_2 = L7_2[A3_2]
  end
  if not L7_2 then
    L7_2 = {}
  end
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = #L5_2
    L12_2 = L12_2 + 1
    L13_2 = Furniture
    L13_2 = L13_2.ProjectFurniture
    L14_2 = L11_2
    L13_2 = L13_2(L14_2)
    L5_2[L12_2] = L13_2
  end
  L6_2 = Main
  L6_2 = L6_2.ScheduleEviction
  L7_2 = A2_2
  L6_2(L7_2)
  L6_2 = GetPlayerFromId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = Permissions
    L7_2 = L7_2.GetPropertyAccess
    L8_2 = L6_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_90
    end
  end
  L7_2 = nil
  ::lbl_90::
  L8_2 = A1_2
  L9_2 = {}
  L9_2.furniture = L5_2
  L9_2.access = L7_2
  L8_2(L9_2)
end
L20_1(L21_1, L22_1)
L20_1 = CreateThread
function L21_1()
  local L0_2, L1_2
  repeat
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = frameworkLoaded
  until L0_2
  L0_2 = L11_1
  L0_2()
end
L20_1(L21_1)
L20_1 = nil
L21_1 = nil
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L3_2 = A1_2.permissions
  if L3_2 then
    L3_2 = next
    L4_2 = A1_2.permissions
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L3_2 = Main
      L3_2 = L3_2.DeepCopy
      L4_2 = A1_2.permissions
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
  end
  L3_2 = {}
  L3_2.id = A0_2
  L4_2 = A1_2.name
  L3_2.name = L4_2
  L4_2 = A1_2.address
  L3_2.address = L4_2
  L4_2 = A1_2.price
  L3_2.price = L4_2
  L4_2 = A1_2.rent
  L3_2.rent = L4_2
  L4_2 = A1_2.listingPrice
  L3_2.listingPrice = L4_2
  L4_2 = A1_2.owner
  L3_2.owner = L4_2
  L4_2 = A1_2.image
  L3_2.image = L4_2
  L3_2.permissions = L2_2
  L4_2 = Utils
  L4_2 = L4_2.GetPropertyBlipCoords
  L5_2 = Main
  L5_2 = L5_2.properties
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.coords = L4_2
  L4_2 = L14_1
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  return L3_2
end
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetProperties
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L22_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L0_2[L5_2] = L7_2
  end
  return L0_2
end
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L17_1
  if not L0_2 then
    return
  end
  L0_2 = pairs
  L1_2 = L17_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2 in L0_2, L1_2, L2_2, L3_2 do
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L16_1
    if L6_2 then
      L6_2 = L16_1
      if L5_2 then
        L7_2 = Main
        L7_2 = L7_2.BuildClientProperty
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          goto lbl_26
        end
      end
      L7_2 = nil
      ::lbl_26::
      L6_2[L4_2] = L7_2
    end
    L6_2 = L20_1
    if L6_2 then
      L6_2 = L20_1
      if L5_2 then
        L7_2 = L22_1
        L8_2 = L4_2
        L9_2 = L5_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          goto lbl_40
        end
      end
      L7_2 = nil
      ::lbl_40::
      L6_2[L4_2] = L7_2
    end
  end
  L0_2 = nil
  L17_1 = L0_2
end
L18_1 = L24_1
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L18_1
  L0_2()
  L0_2 = L21_1
  if not L0_2 then
    L0_2 = L20_1
    if not L0_2 then
      L0_2 = L23_1
      L0_2 = L0_2()
    end
    L20_1 = L0_2
    L0_2 = {}
    L1_2 = pairs
    L2_2 = L20_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
    end
    L21_1 = L0_2
  end
  L0_2 = L21_1
  return L0_2
end
L25_1 = Main
function L26_1(A0_2)
  local L1_2
  if not A0_2 then
    L1_2 = nil
    L20_1 = L1_2
    L1_2 = nil
    L21_1 = L1_2
    L1_2 = nil
    L16_1 = L1_2
    L1_2 = nil
    L17_1 = L1_2
    return
  end
  L1_2 = L16_1
  if not L1_2 then
    L1_2 = L20_1
    if not L1_2 then
      goto lbl_26
    end
  end
  L1_2 = L17_1
  if not L1_2 then
    L1_2 = {}
  end
  L17_1 = L1_2
  L1_2 = L17_1
  L1_2[A0_2] = true
  ::lbl_26::
  L1_2 = nil
  L21_1 = L1_2
end
L25_1.ClearExportCache = L26_1
L25_1 = exports
L26_1 = "getProperties"
function L27_1()
  local L0_2, L1_2
  L0_2 = L24_1
  return L0_2()
end
L25_1(L26_1, L27_1)
L25_1 = exports
L26_1 = "getPropertiesByIdentifier"
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L24_1
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.owner
    if L9_2 == A0_2 then
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L8_2
    end
  end
  return L2_2
end
L25_1(L26_1, L27_1)
L25_1 = exports
L26_1 = "getPropertyData"
function L27_1(A0_2)
  local L1_2, L2_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  return L1_2(L2_2)
end
L25_1(L26_1, L27_1)
