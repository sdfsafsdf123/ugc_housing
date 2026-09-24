local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1
L0_1 = {}
Electricity = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = {}
L9_1 = {}
L10_1 = {}
L11_1 = os
L11_1 = L11_1.time
L11_1 = L11_1()
L12_1 = {}
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = L9_1
    L1_2 = L1_2[A0_2]
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = L8_1
  L1_2[A0_2] = true
  L1_2 = SetTimeout
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = Utilities
      if L0_3 then
        L0_3 = Utilities
        L0_3 = L0_3.Sync
        L1_3 = A0_2
        L0_3(L1_3)
      end
    end
    L1_3 = A0_2
    L0_3 = L8_1
    L0_3[L1_3] = nil
  end
  L1_2(L2_2, L3_2)
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = Permissions
    L3_2 = L3_2.IsOwnerOrManager
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
  end
  return L3_2
end
function L15_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Electricity
  if L0_2 then
    L0_2 = L0_2.mode
  end
  L0_2 = "advanced" == L0_2
  return L0_2
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A1_2
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A2_2
  L7_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L3_2 = ":"
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L2_2 = L2_2 .. L3_2 .. L4_2
  return L2_2
end
function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L4_2.furniture
    if L4_2 then
      L4_2 = L4_2[A1_2]
    end
  end
  L5_2 = Main
  L5_2 = L5_2.GetFurnitureIndexById
  L6_2 = L4_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L4_2[L5_2]
    if L6_2 then
      goto lbl_22
    end
  end
  L6_2 = nil
  ::lbl_22::
  if L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.GetEntryKindWithHandler
    L8_2 = L6_2
    L9_2 = A3_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_33
    end
  end
  L7_2 = nil
  do return L7_2 end
  ::lbl_33::
  return L6_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.data
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.data = L1_2
  L1_2 = type
  L2_2 = A0_2.data
  L2_2 = L2_2.battery
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2.battery
    if L1_2 then
      goto lbl_19
    end
  end
  L1_2 = {}
  ::lbl_19::
  L2_2 = L16_1
  L3_2 = tonumber
  L4_2 = L1_2.chargeWh
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = 0
  L5_2 = Config
  L5_2 = L5_2.Battery
  L5_2 = L5_2.capacityWh
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.chargeWh = L2_2
  L2_2 = L1_2.enabled
  L2_2 = false ~= L2_2
  L1_2.enabled = L2_2
  L2_2 = A0_2.data
  L2_2.battery = L1_2
  return L1_2
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = L0_1
  L2_2 = {}
  L1_2[A0_2] = L2_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
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
    L8_2 = ipairs
    L9_2 = L1_2 or L9_2
    if L1_2 then
      L9_2 = L1_2.furniture
      if L9_2 then
        L9_2 = L9_2[L7_2]
      end
    end
    if not L9_2 then
      L9_2 = {}
    end
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = Utils
      L14_2 = L14_2.GetEntryKindWithHandler
      L15_2 = L13_2
      L16_2 = "battery"
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        L14_2 = L0_1
        L14_2 = L14_2[A0_2]
        L15_2 = L17_1
        L16_2 = L7_2
        L17_2 = L13_2.id
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = {}
        L16_2.propertyId = A0_2
        L16_2.furnitureType = L7_2
        L17_2 = L13_2.id
        L16_2.id = L17_2
        L16_2.item = L13_2
        L17_2 = L19_1
        L18_2 = L13_2
        L17_2 = L17_2(L18_2)
        L16_2.state = L17_2
        L14_2[L15_2] = L16_2
      end
    end
  end
end
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = L20_1
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L17_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2[L4_2]
  end
  if L3_2 then
    return L3_2
  end
  L4_2 = L18_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = "battery"
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = {}
  L5_2.propertyId = A0_2
  L5_2.furnitureType = A1_2
  L5_2.id = A2_2
  L5_2.item = L4_2
  L6_2 = L19_1
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L5_2.state = L6_2
  L3_2 = L5_2
  L5_2 = L0_1
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L6_2 = {}
  end
  L5_2[A0_2] = L6_2
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L6_2 = L17_1
  L7_2 = A1_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2[L6_2] = L3_2
  return L3_2
end
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Ambience
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2.electricity
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = L1_2.electricity
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = {}
  ::lbl_15::
  L3_2 = L2_2.policy
  if "local_first" ~= L3_2 and "grid_first" ~= L3_2 and "off_grid" ~= L3_2 then
    L4_2 = Config
    L4_2 = L4_2.Electricity
    L3_2 = L4_2.defaultPolicy
  end
  L2_2.policy = L3_2
  L4_2 = L16_1
  L5_2 = tonumber
  L6_2 = L2_2.reservePercent
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Electricity
    L5_2 = L5_2.defaultReservePercent
  end
  L6_2 = 0
  L7_2 = 100
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2.reservePercent = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = L2_2.lastUpdate
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = os
    L5_2 = L5_2.time
    L5_2 = L5_2()
  end
  L4_2 = L4_2(L5_2)
  L2_2.lastUpdate = L4_2
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 0
  L6_2 = tonumber
  L7_2 = L2_2.costRemainder
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  L2_2.costRemainder = L4_2
  L1_2.electricity = L2_2
  return L2_2
end
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Utils
  L1_2 = L1_2.GetEntryKindWithHandler
  L2_2 = A0_2
  L3_2 = "battery"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = "battery"
    return L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.GetEntryKindWithHandler
  L2_2 = A0_2
  L3_2 = "generator"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = "generator"
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tostring
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.match
  L4_2 = "^([^:]+):(.+)$"
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = A0_2.furniture
    if L4_2 then
      L4_2 = L4_2[L2_2]
    end
  end
  L5_2 = Main
  L5_2 = L5_2.GetFurnitureIndexById
  L6_2 = L4_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L4_2[L5_2]
    if L6_2 then
      goto lbl_24
    end
  end
  L6_2 = nil
  ::lbl_24::
  L7_2 = L2_2
  return L6_2, L7_2
end
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2.data
  if L3_2 then
    L3_2 = L3_2.power
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = type
    L5_2 = L3_2.sourceId
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      goto lbl_17
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_17::
  L4_2 = L24_1
  L5_2 = A0_2
  L6_2 = L3_2.sourceId
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if L4_2 and L5_2 == A1_2 then
    L6_2 = L23_1
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_32
    end
  end
  L6_2 = nil
  do return L6_2 end
  ::lbl_32::
  L6_2 = L4_2
  L7_2 = L3_2
  return L6_2, L7_2
end
function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L23_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.id
  L4_2 = A1_2[L4_2]
  if not L4_2 then
    L4_2 = A2_2 or L4_2
    if A2_2 then
      L4_2 = A2_2.label
    end
    if not L4_2 then
      if "battery" == L3_2 then
        L4_2 = _U
        L5_2 = "battery_title"
        L4_2 = L4_2(L5_2)
        if L4_2 then
          goto lbl_30
        end
      end
      if "generator" == L3_2 then
        L4_2 = _U
        L5_2 = "generator_title"
        L4_2 = L4_2(L5_2)
        if L4_2 then
          goto lbl_30
        end
      end
      L4_2 = tostring
      L5_2 = A0_2.model
      L4_2 = L4_2(L5_2)
    end
  end
  ::lbl_30::
  return L4_2
end
function L27_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = Utils
  L4_2 = L4_2.GetEntryKindWithHandler
  L5_2 = A2_2
  L6_2 = "light"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A2_2.data
    if L4_2 then
      L4_2 = L4_2.light
      if L4_2 then
        L4_2 = L4_2.on
      end
    end
    L4_2 = false ~= L4_2
    return L4_2
  end
  L4_2 = A3_2 or L4_2
  if A3_2 then
    L4_2 = A3_2.temperature
  end
  if "heat" ~= L4_2 then
    L4_2 = A3_2 or L4_2
    if A3_2 then
      L4_2 = A3_2.temperature
    end
    if "cool" ~= L4_2 then
      goto lbl_43
    end
  end
  L4_2 = Temperature
  if L4_2 then
    L4_2 = L4_2.IsDeviceActive
    L5_2 = A0_2.id
    L6_2 = A1_2
    L7_2 = A2_2.id
    L4_2 = L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = true == L4_2
  do return L4_2 end
  ::lbl_43::
  L4_2 = Utils
  L4_2 = L4_2.GetEntryKindWithHandler
  L5_2 = A2_2
  L6_2 = "television"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = Television
    if L4_2 then
      L4_2 = L4_2.IsPlaying
      L5_2 = A0_2.id
      L6_2 = A1_2
      L7_2 = A2_2.id
      L4_2 = L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = true == L4_2
    return L4_2
  end
  L4_2 = Utils
  L4_2 = L4_2.GetEntryKindWithHandler
  L5_2 = A2_2
  L6_2 = "music"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = Music
    if L4_2 then
      L4_2 = L4_2.IsPlaying
      L5_2 = A0_2.id
      L6_2 = A2_2
      L4_2 = L4_2(L5_2, L6_2)
    end
    L4_2 = true == L4_2
    return L4_2
  end
  L4_2 = Utils
  L4_2 = L4_2.GetEntryKindWithHandler
  L5_2 = A2_2
  L6_2 = "cook"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = Cooking
    if L4_2 then
      L4_2 = L4_2.IsDeviceActive
      L5_2 = A0_2.id
      L6_2 = A1_2
      L7_2 = A2_2.id
      L4_2 = L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = true == L4_2
    return L4_2
  end
  L4_2 = true
  return L4_2
end
function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = tonumber
  L4_2 = Config
  L4_2 = L4_2.Electricity
  L4_2 = L4_2.baseWatts
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L3_2 = {}
  L4_2 = {}
  L3_2.furniture = L4_2
  L3_2.baseWatts = L1_2
  L3_2.climateWatts = 0
  L3_2.otherWatts = 0
  L4_2 = {}
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = {}
  L8_2 = "house"
  L9_2 = "garage"
  L10_2 = "yard"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = ipairs
    L13_2 = A0_2.furniture
    if L13_2 then
      L13_2 = L13_2[L11_2]
    end
    if not L13_2 then
      L13_2 = {}
    end
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
    for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
      L18_2 = Utils
      L18_2 = L18_2.GetElectricityWatts
      L19_2 = L17_2
      L18_2 = L18_2(L19_2)
      if L18_2 then
        L19_2 = Utils
        L19_2 = L19_2.GetCatalogEntryByModel
        L20_2 = L17_2.model
        L19_2 = L19_2(L20_2)
        L20_2 = L27_1
        L21_2 = A0_2
        L22_2 = L11_2
        L23_2 = L17_2
        L24_2 = L19_2
        L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
        L21_2 = L18_2 or L21_2
        if not L20_2 or not L18_2 then
          L21_2 = Utils
          L21_2 = L21_2.GetElectricityWatts
          L22_2 = L17_2
          L23_2 = true
          L21_2 = L21_2(L22_2, L23_2)
          if not L21_2 then
            L21_2 = 0
          end
        end
        L2_2 = L2_2 + L21_2
        L22_2 = L5_2[L11_2]
        if not L22_2 then
          L23_2 = {}
          L22_2 = L23_2
          L23_2 = ipairs
          L24_2 = AccessPoints
          L24_2 = L24_2.Get
          L25_2 = A0_2
          L26_2 = L11_2
          L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L24_2(L25_2, L26_2)
          L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
          for L27_2, L28_2 in L23_2, L24_2, L25_2, L26_2 do
            L29_2 = L28_2.id
            L30_2 = L28_2.label
            L22_2[L29_2] = L30_2
          end
          L5_2[L11_2] = L22_2
        end
        L23_2 = L25_1
        L24_2 = A0_2
        L25_2 = L11_2
        L26_2 = L17_2
        L23_2, L24_2 = L23_2(L24_2, L25_2, L26_2)
        L25_2 = {}
        L26_2 = L17_1
        L27_2 = L11_2
        L28_2 = L17_2.id
        L26_2 = L26_2(L27_2, L28_2)
        L25_2.id = L26_2
        L26_2 = L26_1
        L27_2 = L17_2
        L28_2 = L22_2
        L29_2 = L19_2
        L26_2 = L26_2(L27_2, L28_2, L29_2)
        L25_2.label = L26_2
        L25_2.area = L11_2
        L25_2.watts = L21_2
        L25_2.ratedWatts = L18_2
        L25_2.active = L20_2
        if L23_2 then
          L26_2 = L24_2.sourceId
          if L26_2 then
            goto lbl_125
          end
        end
        L26_2 = nil
        ::lbl_125::
        L25_2.sourceId = L26_2
        if L23_2 then
          L26_2 = L26_1
          L27_2 = L23_2
          L28_2 = L22_2
          L29_2 = Utils
          L29_2 = L29_2.GetCatalogEntryByModel
          L30_2 = L23_2.model
          L29_2, L30_2 = L29_2(L30_2)
          L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
          if L26_2 then
            goto lbl_139
          end
        end
        L26_2 = nil
        ::lbl_139::
        L25_2.sourceLabel = L26_2
        if L23_2 then
          L26_2 = L23_1
          L27_2 = L23_2
          L26_2 = L26_2(L27_2)
          if L26_2 then
            goto lbl_148
          end
        end
        L26_2 = "grid"
        ::lbl_148::
        L25_2.sourceKind = L26_2
        L25_2.powered = false
        L25_2.broken = false
        L26_2 = L19_2 or L26_2
        if L19_2 then
          L26_2 = L19_2.temperature
        end
        if "heat" ~= L26_2 then
          L26_2 = L19_2 or L26_2
          if L19_2 then
            L26_2 = L19_2.temperature
          end
          if "cool" ~= L26_2 then
            goto lbl_166
          end
        end
        L26_2 = L3_2.climateWatts
        L26_2 = L26_2 + L21_2
        L3_2.climateWatts = L26_2
        goto lbl_172
        ::lbl_166::
        L26_2 = L3_2.furniture
        L27_2 = L3_2.furniture
        L27_2 = #L27_2
        L27_2 = L27_2 + 1
        L26_2[L27_2] = L25_2
        ::lbl_172::
        L26_2 = #L4_2
        L26_2 = L26_2 + 1
        L27_2 = {}
        L28_2 = L25_2.id
        L27_2.key = L28_2
        L28_2 = L25_2.label
        L27_2.label = L28_2
        L27_2.area = L11_2
        L27_2.watts = L21_2
        L27_2.ratedWatts = L18_2
        L27_2.active = L20_2
        L28_2 = L25_2.sourceId
        L27_2.sourceId = L28_2
        if L23_2 then
          L28_2 = L24_2.path
          if L28_2 then
            goto lbl_193
          end
        end
        L28_2 = nil
        ::lbl_193::
        L27_2.path = L28_2
        L27_2.item = L17_2
        L27_2.source = L23_2
        L27_2.row = L25_2
        L4_2[L26_2] = L27_2
      end
    end
  end
  L6_2 = pairs
  L8_2 = A0_2.id
  L7_2 = L2_1
  L7_2 = L7_2[L8_2]
  if not L7_2 then
    L7_2 = {}
  end
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = math
    L12_2 = L12_2.max
    L13_2 = 0
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    L11_2 = L12_2
    L2_2 = L2_2 + L11_2
    L12_2 = L3_2.otherWatts
    L12_2 = L12_2 + L11_2
    L3_2.otherWatts = L12_2
  end
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  return L6_2, L7_2, L8_2
end
function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = Generator
  if not L5_2 then
    L5_2 = 0
    return L5_2
  end
  L5_2 = Generator
  L5_2 = L5_2.WorldCoords
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = Generator
  L6_2 = L6_2.WorldCoords
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L5_2 or not L6_2 then
    L7_2 = math
    L7_2 = L7_2.huge
    return L7_2
  end
  L7_2 = 0
  L8_2 = L5_2
  L9_2 = ipairs
  L10_2 = type
  L11_2 = A3_2
  L10_2 = L10_2(L11_2)
  L10_2 = A3_2 or L10_2
  if "table" ~= L10_2 or not A3_2 then
    L10_2 = {}
  end
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = tonumber
    L16_2 = L14_2.x
    L15_2 = L15_2(L16_2)
    L16_2 = tonumber
    L17_2 = L14_2.y
    L16_2 = L16_2(L17_2)
    L17_2 = tonumber
    L18_2 = L14_2.z
    L17_2 = L17_2(L18_2)
    if not (L15_2 and L16_2) or not L17_2 then
      L18_2 = math
      L18_2 = L18_2.huge
      return L18_2
    end
    L18_2 = vec3
    L19_2 = L15_2
    L20_2 = L16_2
    L21_2 = L17_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L19_2 = L18_2 - L8_2
    L19_2 = #L19_2
    L7_2 = L7_2 + L19_2
    L8_2 = L18_2
  end
  L9_2 = L6_2 - L8_2
  L9_2 = #L9_2
  L9_2 = L7_2 + L9_2
  return L9_2
end
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = Config
  L3_2 = L3_2.Battery
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    return L2_2
  end
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L18_1
    L10_2 = A0_2
    L11_2 = L8_2.furnitureType
    L12_2 = L8_2.id
    L13_2 = "battery"
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if L9_2 then
      L9_2 = L8_2.state
      L9_2 = L9_2.enabled
      if L9_2 then
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L10_2 = {}
        L11_2 = L17_1
        L12_2 = L8_2.furnitureType
        L13_2 = L8_2.id
        L11_2 = L11_2(L12_2, L13_2)
        L10_2.id = L11_2
        L11_2 = L8_2.state
        L11_2 = L11_2.chargeWh
        L10_2.chargeWh = L11_2
        L11_2 = Config
        L11_2 = L11_2.Battery
        L11_2 = L11_2.capacityWh
        L10_2.capacityWh = L11_2
        L11_2 = Config
        L11_2 = L11_2.Battery
        L11_2 = L11_2.maxChargeWatts
        L10_2.maxChargeWatts = L11_2
        L11_2 = Config
        L11_2 = L11_2.Battery
        L11_2 = L11_2.maxDischargeWatts
        L10_2.maxDischargeWatts = L11_2
        L11_2 = Config
        L11_2 = L11_2.Battery
        L11_2 = L11_2.efficiency
        L10_2.efficiency = L11_2
        L10_2.reservePercent = A1_2
        L2_2[L9_2] = L10_2
      end
    end
  end
  return L2_2
end
function L31_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L4_2 = Config
  L4_2 = L4_2.Electricity
  L4_2 = L4_2.wiring
  L4_2 = L4_2.maxLength
  L5_2 = {}
  L6_2 = {}
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L5_2
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L1_3 = L5_2
      L2_3 = {}
      L2_3.id = A0_3
      L2_3.demandWatts = 0
      L3_3 = {}
      L2_3.generators = L3_3
      L3_3 = {}
      L2_3.batteries = L3_3
      L1_3[A0_3] = L2_3
    end
    L1_3 = L5_2
    L1_3 = L1_3[A0_3]
    return L1_3
  end
  L8_2 = ipairs
  L9_2 = L30_1
  L10_2 = A0_2.id
  L11_2 = A1_2.reservePercent
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L9_2(L10_2, L11_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L7_2
    L15_2 = L13_2.id
    L14_2 = L14_2(L15_2)
    L14_2 = L14_2.batteries
    L14_2[1] = L13_2
  end
  L8_2 = ipairs
  L9_2 = Generator
  if L9_2 then
    L9_2 = Generator
    L9_2 = L9_2.GetPowerSources
    L10_2 = A0_2.id
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_37
    end
  end
  L9_2 = {}
  ::lbl_37::
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.batteryId
    if L14_2 then
      L15_2 = L24_1
      L16_2 = A0_2
      L17_2 = L13_2.id
      L15_2, L16_2 = L15_2(L16_2, L17_2)
      L17_2 = L24_1
      L18_2 = A0_2
      L19_2 = L14_2
      L17_2 = L17_2(L18_2, L19_2)
      if L15_2 and L17_2 then
        L18_2 = L29_1
        L19_2 = A0_2
        L20_2 = L16_2
        L21_2 = L15_2
        L22_2 = L13_2.path
        L23_2 = L17_2
        L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
        if L4_2 < L18_2 then
          L18_2 = L13_2.id
          L6_2[L18_2] = true
          L14_2 = nil
        end
      end
    end
    if L14_2 then
      L15_2 = L5_2[L14_2]
      if L15_2 then
        L15_2 = L5_2[L14_2]
        L16_2 = L15_2.generators
        L17_2 = L15_2.generators
        L17_2 = #L17_2
        L17_2 = L17_2 + 1
        L16_2[L17_2] = L13_2
    end
    else
      L13_2.batteryId = nil
      L15_2 = L7_2
      L16_2 = L13_2.id
      L15_2 = L15_2(L16_2)
      L15_2 = L15_2.generators
      L15_2[1] = L13_2
    end
  end
  L8_2 = A3_2
  L9_2 = ipairs
  L10_2 = A2_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.sourceId
    if L15_2 then
      L15_2 = L14_2.watts
      L8_2 = L8_2 - L15_2
      L15_2 = L29_1
      L16_2 = A0_2
      L17_2 = L14_2.area
      L18_2 = L14_2.source
      L19_2 = L14_2.path
      L20_2 = L14_2.item
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      if L4_2 < L15_2 then
        L15_2 = L14_2.key
        L6_2[L15_2] = true
        L14_2.broken = true
      else
        L15_2 = L7_2
        L16_2 = L14_2.sourceId
        L15_2 = L15_2(L16_2)
        L16_2 = L15_2.demandWatts
        L17_2 = L14_2.watts
        L16_2 = L16_2 + L17_2
        L15_2.demandWatts = L16_2
      end
    end
  end
  L9_2 = {}
  L10_2 = pairs
  L11_2 = L5_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = #L9_2
    L16_2 = L16_2 + 1
    L9_2[L16_2] = L15_2
  end
  L10_2 = {}
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = 0
  L13_2 = L8_2
  L11_2 = L11_2(L12_2, L13_2)
  L10_2.gridWatts = L11_2
  L10_2.islands = L9_2
  L10_2.broken = L6_2
  return L10_2
end
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2[L6_2]
    if L8_2 ~= L7_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    if nil == L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
function L33_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L2_2.propertyId = A0_2
  L3_2 = A1_2.poweredById
  L2_2.devices = L3_2
  L3_2 = A1_2.broken
  L2_2.broken = L3_2
  return L2_2
end
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
      L2_2[L7_2] = true
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L1_2[L8_2] = L7_2
    end
  end
  return L1_2
end
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Generator
  if L2_2 then
    L2_2 = Generator
    L2_2 = L2_2.ApplyPowerResult
    L3_2 = A0_2
    L4_2 = A1_2.generators
    L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2.batteries
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tostring
    L10_2 = L8_2.id
    L9_2 = L9_2(L10_2)
    L2_2[L9_2] = L8_2
  end
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2[L7_2]
    if L9_2 then
      L10_2 = math
      L10_2 = L10_2.abs
      L11_2 = L8_2.state
      L11_2 = L11_2.chargeWh
      L12_2 = L9_2.chargeWh
      L11_2 = L11_2 - L12_2
      L10_2 = L10_2(L11_2)
      L11_2 = 1.0E-4
      if L10_2 > L11_2 then
        L10_2 = L8_2.state
        L11_2 = L9_2.chargeWh
        L10_2.chargeWh = L11_2
        L10_2 = L8_2.item
        L10_2 = L10_2.data
        L11_2 = L8_2.state
        L10_2.battery = L11_2
        L10_2 = L5_1
        L10_2[A0_2] = true
      end
    end
  end
end
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = Config
  L6_2 = L6_2.Electricity
  L6_2 = L6_2.saveInterval
  if not L6_2 then
    L6_2 = 60000
  end
  L6_2 = L6_2 / 1000
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if not A1_2 then
    L4_2 = L3_1
    L4_2 = L4_2[A0_2]
    if not L4_2 then
      L4_2 = 0
    end
    L4_2 = L2_2 - L4_2
    if L3_2 > L4_2 then
      return
    end
  end
  L4_2 = L4_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L5_2 = L4_1
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.startedAt
    L4_2 = L4_2 - L5_2
    L5_2 = 35000
    if L4_2 <= L5_2 then
      L4_2 = L5_1
      L4_2[A0_2] = true
      return
    end
    L4_2 = L4_1
    L4_2[A0_2] = nil
    L4_2 = L5_1
    L4_2[A0_2] = true
  end
  L4_2 = L7_1
  L5_2 = L7_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = 0
  end
  L5_2 = L5_2 + 1
  L4_2[A0_2] = L5_2
  L4_2 = L7_1
  L4_2 = L4_2[A0_2]
  L5_2 = L4_1
  L6_2 = {}
  L6_2.generation = L4_2
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L6_2.startedAt = L7_2
  L5_2[A0_2] = L6_2
  L5_2 = L5_1
  L5_2[A0_2] = nil
  L5_2 = L3_1
  L5_2[A0_2] = L2_2
  L5_2 = 1
  L6_2 = true
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_2
    L1_3 = L7_1
    L1_3 = L1_3[L2_3]
    L2_3 = L4_2
    if L1_3 ~= L2_3 then
      return
    end
    if false == A0_3 then
      L1_3 = false
      L6_2 = L1_3
    end
    L1_3 = L5_2
    L1_3 = L1_3 - 1
    L5_2 = L1_3
    L1_3 = L5_2
    if L1_3 > 0 then
      return
    end
    L2_3 = A0_2
    L1_3 = L4_1
    L1_3[L2_3] = nil
    L1_3 = L6_2
    if not L1_3 then
      L2_3 = A0_2
      L1_3 = L5_1
      L1_3[L2_3] = true
    end
    L2_3 = A0_2
    L1_3 = L5_1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = L36_1
      L2_3 = A0_2
      L3_3 = false
      L1_3(L2_3, L3_3)
    end
  end
  L8_2 = pairs
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  if not L9_2 then
    L9_2 = {}
  end
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L18_1
    L15_2 = A0_2
    L16_2 = L13_2.furnitureType
    L17_2 = L13_2.id
    L18_2 = "battery"
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    if L14_2 then
      L5_2 = L5_2 + 1
      L14_2 = Furniture
      L14_2 = L14_2.SetData
      L15_2 = A0_2
      L16_2 = L13_2.furnitureType
      L17_2 = L13_2.id
      L18_2 = {}
      L19_2 = L13_2.state
      L18_2.battery = L19_2
      L19_2 = nil
      L20_2 = L7_2
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      if not L14_2 then
        L15_2 = L7_2
        L16_2 = false
        L15_2(L16_2)
      end
    else
      L14_2 = L0_1
      L14_2 = L14_2[A0_2]
      L14_2[L12_2] = nil
    end
  end
  L8_2 = Ambience
  L8_2 = L8_2.Save
  L9_2 = A0_2
  L10_2 = {}
  L11_2 = L22_1
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L10_2.electricity = L11_2
  L8_2(L9_2, L10_2)
  L8_2 = Generator
  if L8_2 then
    L8_2 = Generator
    L8_2 = L8_2.SavePower
    L9_2 = A0_2
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
  end
  L8_2 = L7_2
  L9_2 = true
  L8_2(L9_2)
  L8_2 = SetTimeout
  L9_2 = 35000
  function L10_2()
    local L0_3, L1_3, L2_3
    L1_3 = A0_2
    L0_3 = L4_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = L0_3.generation
    end
    L1_3 = L4_2
    if L0_3 ~= L1_3 then
      return
    end
    L1_3 = A0_2
    L0_3 = L4_1
    L0_3[L1_3] = nil
    L1_3 = A0_2
    L0_3 = L5_1
    L0_3[L1_3] = true
    L0_3 = L36_1
    L1_3 = A0_2
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2, L10_2)
end
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.owner
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_12::
  L3_2 = Main
  L3_2 = L3_2.IsPropertyLoading
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Main
    L3_2 = L3_2.IsPropertyLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = nil
      return L3_2
    end
  end
  L3_2 = Main
  L3_2 = L3_2.LoadPropertyData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = L20_1
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = L22_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L3_2.lastUpdate
  L7_2 = L11_1
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = Config
  L6_2 = L6_2.Generator
  L6_2 = L6_2.offlineConsumption
  if false ~= L6_2 then
    L5_2 = L3_2.lastUpdate
  end
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = 0
  L8_2 = tonumber
  L9_2 = Config
  L9_2 = L9_2.Electricity
  L9_2 = L9_2.maxOfflineHours
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = 0
  end
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 3600
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 0
  L9_2 = L4_2 - L5_2
  L7_2 = L7_2(L8_2, L9_2)
  if L6_2 > 0 then
    L8_2 = math
    L8_2 = L8_2.min
    L9_2 = L7_2
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  end
  L8_2 = L28_1
  L9_2 = L2_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L11_2 = L31_1
  L12_2 = L2_2
  L13_2 = L3_2
  L14_2 = L10_2
  L15_2 = L8_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = PowerModel
  L12_2 = L12_2.SolveIslands
  L13_2 = {}
  L13_2.seconds = L7_2
  L14_2 = L11_2.gridWatts
  L13_2.gridWatts = L14_2
  L14_2 = L11_2.islands
  L13_2.islands = L14_2
  L14_2 = L3_2.policy
  L13_2.policy = L14_2
  L14_2 = Utilities
  L14_2 = L14_2.IsGridAvailable
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  L13_2.gridAvailable = L14_2
  L12_2 = L12_2(L13_2)
  L13_2 = L35_1
  L14_2 = A0_2
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = Config
  L13_2 = L13_2.Bills
  L13_2 = L13_2.enable
  if L13_2 then
    L13_2 = Config
    L13_2 = L13_2.Bills
    L13_2 = L13_2.services
    if L13_2 then
      L13_2 = L13_2.electricity
      if L13_2 then
        L13_2 = L13_2.enable
      end
    end
    if L13_2 then
      L13_2 = Utilities
      L13_2 = L13_2.IsBilled
      L14_2 = A0_2
      L13_2 = L13_2(L14_2)
    end
  end
  if not L13_2 then
    L3_2.costRemainder = 0
  end
  L14_2 = PowerAccounting
  L14_2 = L14_2.PendingCost
  L15_2 = L3_2.costRemainder
  L16_2 = L12_2.gridWh
  if L13_2 then
    L17_2 = Config
    L17_2 = L17_2.Electricity
    L17_2 = L17_2.pricePerKwh
    if L17_2 then
      goto lbl_151
    end
  end
  L17_2 = 0
  ::lbl_151::
  L14_2, L15_2 = L14_2(L15_2, L16_2, L17_2)
  L3_2.costRemainder = L14_2
  if L15_2 > 0 then
    L16_2 = Utilities
    L16_2 = L16_2.AddElectricityUse
    L17_2 = A0_2
    L18_2 = L15_2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = PowerAccounting
    L17_2 = L17_2.AcceptCost
    L18_2 = L14_2
    L19_2 = L15_2
    L20_2 = L16_2
    L17_2 = L17_2(L18_2, L19_2, L20_2)
    L3_2.costRemainder = L17_2
  end
  L3_2.lastUpdate = L4_2
  L16_2 = L5_1
  L17_2 = L5_1
  L17_2 = L17_2[A0_2]
  L17_2 = L17_2 or L7_2 > 0
  L16_2[A0_2] = L17_2
  L16_2 = L31_1
  L17_2 = L2_2
  L18_2 = L3_2
  L19_2 = L10_2
  L20_2 = L8_2
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  L11_2 = L16_2
  L16_2 = PowerModel
  L16_2 = L16_2.SolveIslands
  L17_2 = {}
  L17_2.seconds = 1
  L18_2 = L11_2.gridWatts
  L17_2.gridWatts = L18_2
  L18_2 = L11_2.islands
  L17_2.islands = L18_2
  L18_2 = L3_2.policy
  L17_2.policy = L18_2
  L18_2 = Utilities
  L18_2 = L18_2.IsGridAvailable
  L19_2 = A0_2
  L18_2 = L18_2(L19_2)
  L17_2.gridAvailable = L18_2
  L16_2 = L16_2(L17_2)
  L17_2 = {}
  L18_2 = ipairs
  L19_2 = L16_2.batteries
  L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
  for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
    L24_2 = tostring
    L25_2 = L23_2.id
    L24_2 = L24_2(L25_2)
    L17_2[L24_2] = L23_2
  end
  L18_2 = {}
  L19_2 = ipairs
  L20_2 = L16_2.generators
  L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
  for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
    L25_2 = tostring
    L26_2 = L24_2.id
    L25_2 = L25_2(L26_2)
    L18_2[L25_2] = L24_2
  end
  L19_2 = {}
  L20_2 = ipairs
  L21_2 = L10_2
  L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
  for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
    L26_2 = L25_2.broken
    if L26_2 then
      L25_2.powered = false
    else
      L26_2 = L25_2.sourceId
      if L26_2 then
        L26_2 = L16_2.islands
        L27_2 = L25_2.sourceId
        L26_2 = L26_2[L27_2]
        if L26_2 then
          L26_2 = L26_2.powered
        end
        L26_2 = true == L26_2
        L25_2.powered = L26_2
      else
        L26_2 = L16_2.powered
        L25_2.powered = L26_2
      end
    end
    L26_2 = L25_2.key
    L27_2 = L25_2.powered
    L19_2[L26_2] = L27_2
    L26_2 = L25_2.row
    L27_2 = L25_2.powered
    L27_2 = true == L27_2
    L26_2.powered = L27_2
    L26_2 = L25_2.row
    L27_2 = L25_2.broken
    L27_2 = true == L27_2
    L26_2.broken = L27_2
  end
  L20_2 = L1_1
  L20_2 = L20_2[A0_2]
  L21_2 = L1_1
  L22_2 = {}
  L22_2.mode = "advanced"
  L22_2.demandWatts = L8_2
  L22_2.breakdown = L9_2
  L23_2 = L16_2.generatorWh
  L23_2 = L23_2 * 3600
  L22_2.generatorWatts = L23_2
  L23_2 = L16_2.batteryWh
  L23_2 = L23_2 * 3600
  L22_2.batteryWatts = L23_2
  L23_2 = L16_2.gridWh
  L23_2 = L23_2 * 3600
  L22_2.gridWatts = L23_2
  if L13_2 then
    L23_2 = L16_2.gridWh
    L23_2 = L23_2 * 3.6
    L24_2 = Config
    L24_2 = L24_2.Electricity
    L24_2 = L24_2.pricePerKwh
    L23_2 = L23_2 * L24_2
    if L23_2 then
      goto lbl_309
    end
  end
  L23_2 = 0
  ::lbl_309::
  L22_2.gridCostPerHour = L23_2
  L23_2 = L3_2.policy
  L22_2.policy = L23_2
  L23_2 = L3_2.reservePercent
  L22_2.reservePercent = L23_2
  L23_2 = L16_2.powered
  L23_2 = not L23_2
  L22_2.overloaded = L23_2
  L23_2 = L16_2.powered
  L22_2.powered = L23_2
  L22_2.batteryStates = L17_2
  L22_2.generatorStates = L18_2
  L23_2 = L16_2.islands
  L22_2.islands = L23_2
  L22_2.devices = L10_2
  L22_2.poweredById = L19_2
  L23_2 = L11_2.broken
  L22_2.broken = L23_2
  L21_2[A0_2] = L22_2
  L21_2 = L36_1
  L22_2 = A0_2
  L23_2 = true == A1_2
  L21_2(L22_2, L23_2)
  if L20_2 then
    L21_2 = L20_2.powered
    L22_2 = L1_1
    L22_2 = L22_2[A0_2]
    L22_2 = L22_2.powered
    if L21_2 ~= L22_2 then
      goto lbl_352
    end
  end
  L21_2 = L2_2.utilities
  if L21_2 then
    L21_2 = L21_2.electricity
  end
  L22_2 = L1_1
  L22_2 = L22_2[A0_2]
  L22_2 = L22_2.powered
  ::lbl_352::
  if L21_2 ~= L22_2 then
    L21_2 = L13_1
    L22_2 = A0_2
    L21_2(L22_2)
  end
  L21_2 = L10_1
  L21_2 = L21_2[A0_2]
  if L21_2 then
    L22_2 = L32_1
    L23_2 = L21_2.poweredById
    L24_2 = L19_2
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      L22_2 = L32_1
      L23_2 = L21_2.broken
      L24_2 = L11_2.broken
      L22_2 = L22_2(L23_2, L24_2)
      if L22_2 then
        goto lbl_397
      end
    end
  end
  L22_2 = L10_1
  L23_2 = {}
  L23_2.poweredById = L19_2
  L24_2 = L11_2.broken
  L23_2.broken = L24_2
  L22_2[A0_2] = L23_2
  L22_2 = L33_1
  L23_2 = A0_2
  L24_2 = L1_1
  L24_2 = L24_2[A0_2]
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = ipairs
  L24_2 = L34_1
  L25_2 = A0_2
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L24_2(L25_2)
  L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
  for L27_2, L28_2 in L23_2, L24_2, L25_2, L26_2 do
    L29_2 = TriggerClientEvent
    L30_2 = "tk_housing:updateDevicePower"
    L31_2 = L28_2
    L32_2 = L22_2
    L29_2(L30_2, L31_2, L32_2)
  end
  ::lbl_397::
  L22_2 = L1_1
  L22_2 = L22_2[A0_2]
  return L22_2
end
L38_1 = Electricity
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L15_1
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.owner
  end
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L6_1
  L2_2[A0_2] = true
  L2_2 = xpcall
  L3_2 = L37_1
  L4_2 = debug
  L4_2 = L4_2.traceback
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = L6_1
  L4_2[A0_2] = nil
  if not L2_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2 or L5_2
    if L4_2 then
      L5_2 = L4_2.owner
    end
    if L5_2 then
      L5_2 = L22_1
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      L6_2 = os
      L6_2 = L6_2.time
      L6_2 = L6_2()
      L5_2.lastUpdate = L6_2
      L6_2 = L5_1
      L6_2[A0_2] = true
      L6_2 = pcall
      L7_2 = L36_1
      L8_2 = A0_2
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
    end
    L5_2 = Utils
    L5_2 = L5_2.Warn
    L6_2 = "Updating property electricity failed"
    L7_2 = A0_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = L1_1
    L5_2 = L5_2[A0_2]
    return L5_2
  end
  return L3_2
end
L38_1.Reconcile = L39_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 > 0 then
    L1_2 = Main
    L1_2 = L1_2.IsPropertyLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2[A0_2]
      if not L1_2 then
        L1_2 = {}
        L2_2 = Utilities
        L2_2 = L2_2.IsGridAvailable
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        L1_2.powered = L2_2
        L2_2 = {}
        L1_2.poweredById = L2_2
      end
      return L1_2
    end
  end
  L1_2 = Electricity
  L1_2 = L1_2.Reconcile
  L2_2 = A0_2
  L3_2 = false
  return L1_2(L2_2, L3_2)
end
L39_1 = Electricity
function L40_1(A0_2)
  local L1_2, L2_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L38_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.powered
  end
  L2_2 = true == L2_2 or L2_2
  return L2_2
end
L39_1.IsPowered = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L15_1
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L38_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_2.poweredById
  L5_2 = L17_1
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2[L5_2]
  if nil == L4_2 then
    L5_2 = L3_2.powered
    L5_2 = true == L5_2
    return L5_2
  end
  L5_2 = true == L4_2
  return L5_2
end
L39_1.IsDevicePowered = L40_1
L39_1 = Electricity
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L38_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = {}
    L3_2 = false
    return L2_2, L3_2
  end
  L2_2 = L1_2.poweredById
  L3_2 = L1_2.powered
  L3_2 = true == L3_2
  return L2_2, L3_2
end
L39_1.GetDevicePower = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Electricity
  L2_2 = L2_2.Reconcile
  L3_2 = A0_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:updateDevicePower"
  L5_2 = A1_2
  L6_2 = L33_1
  L7_2 = A0_2
  L8_2 = L2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L39_1.SendDevicePower = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = Electricity
  L3_2 = L3_2.Reconcile
  L4_2 = A0_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = L3_2.devices
  end
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.area
    if L11_2 == A1_2 then
      L11_2 = L10_2.sourceId
      if L11_2 == A2_2 then
        L11_2 = #L4_2
        L11_2 = L11_2 + 1
        L12_2 = {}
        L13_2 = L10_2.key
        L12_2.id = L13_2
        L13_2 = L10_2.label
        L12_2.label = L13_2
        L13_2 = L10_2.area
        L12_2.area = L13_2
        L13_2 = L10_2.watts
        L12_2.watts = L13_2
        L13_2 = L10_2.ratedWatts
        L12_2.ratedWatts = L13_2
        L13_2 = L10_2.active
        L12_2.active = L13_2
        L13_2 = L10_2.powered
        L13_2 = true == L13_2
        L12_2.powered = L13_2
        L13_2 = L10_2.powered
        if true == L13_2 then
          L13_2 = L10_2.watts
          if L13_2 then
            goto lbl_54
          end
        end
        L13_2 = 0
        ::lbl_54::
        L12_2.deliveredWatts = L13_2
        L13_2 = L10_2.broken
        L13_2 = true == L13_2
        L12_2.broken = L13_2
        L13_2 = L10_2.path
        L12_2.path = L13_2
        L4_2[L11_2] = L12_2
      end
    end
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L4_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.label
    L3_3 = A1_3.label
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.label
      L3_3 = A1_3.label
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_3 = A0_3.id
    L3_3 = A1_3.id
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L5_2(L6_2, L7_2)
  return L4_2
end
L39_1.GetSourceDevices = L40_1
L39_1 = Electricity
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Electricity
  L1_2 = L1_2.Reconcile
  L2_2 = A0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = {}
    L3_2 = L1_2.powered
    L2_2.gridPowered = L3_2
    L2_2.deviceCount = 0
    L2_2.wiredCount = 0
    L2_2.unpoweredCount = 0
    L3_2 = {}
    L2_2.unpowered = L3_2
    L3_2 = ipairs
    L4_2 = L1_2.devices
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L2_2.deviceCount
      L9_2 = L9_2 + 1
      L2_2.deviceCount = L9_2
      L9_2 = L8_2.sourceId
      if L9_2 then
        L9_2 = L2_2.wiredCount
        L9_2 = L9_2 + 1
        L2_2.wiredCount = L9_2
      end
      L9_2 = L8_2.powered
      if not L9_2 then
        L9_2 = L2_2.unpoweredCount
        L9_2 = L9_2 + 1
        L2_2.unpoweredCount = L9_2
        L9_2 = L2_2.unpowered
        L9_2 = #L9_2
        if L9_2 < 8 then
          L9_2 = L2_2.unpowered
          L10_2 = L2_2.unpowered
          L10_2 = #L10_2
          L10_2 = L10_2 + 1
          L11_2 = {}
          L12_2 = L8_2.key
          L11_2.id = L12_2
          L12_2 = L8_2.label
          L11_2.label = L12_2
          L12_2 = L8_2.area
          L11_2.area = L12_2
          L9_2[L10_2] = L11_2
        end
      end
    end
    L3_2 = {}
    L4_2 = L1_2.mode
    L3_2.mode = L4_2
    L4_2 = L1_2.demandWatts
    L3_2.demandWatts = L4_2
    L4_2 = L1_2.breakdown
    L3_2.breakdown = L4_2
    L4_2 = L1_2.generatorWatts
    L3_2.generatorWatts = L4_2
    L4_2 = L1_2.batteryWatts
    L3_2.batteryWatts = L4_2
    L4_2 = L1_2.gridWatts
    L3_2.gridWatts = L4_2
    L4_2 = L1_2.gridCostPerHour
    L3_2.gridCostPerHour = L4_2
    L4_2 = L1_2.policy
    L3_2.policy = L4_2
    L4_2 = L1_2.reservePercent
    L3_2.reservePercent = L4_2
    L4_2 = L1_2.overloaded
    L3_2.overloaded = L4_2
    L4_2 = L1_2.powered
    L3_2.powered = L4_2
    L3_2.wired = L2_2
    return L3_2
  end
  L2_2 = {}
  L2_2.mode = "basic"
  L3_2 = Utilities
  L3_2 = L3_2.GetStatus
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.electricity
  L2_2.powered = L3_2
  L3_2 = Config
  L3_2 = L3_2.Electricity
  L3_2 = L3_2.defaultPolicy
  L2_2.policy = L3_2
  L3_2 = Config
  L3_2 = L3_2.Electricity
  L3_2 = L3_2.defaultReservePercent
  L2_2.reservePercent = L3_2
  return L2_2
end
L39_1.GetPropertyData = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = Electricity
  L3_2 = L3_2.GetPropertyData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L5_2 = L17_1
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = Generator
  if L6_2 then
    L6_2 = Generator
    L6_2 = L6_2.GetPowerSource
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = {}
  L8_2 = L5_2
  L9_2 = L6_2 or L9_2
  if L6_2 then
    L9_2 = L6_2.batteryId
  end
  if L9_2 then
    L9_2 = L4_2 or L9_2
    if L4_2 then
      L9_2 = L4_2.broken
      if L9_2 then
        L9_2 = L9_2[L5_2]
      end
    end
    L9_2 = true == L9_2
    L10_2 = L6_2.batteryId
    L11_2 = L10_2
    L10_2 = L10_2.match
    L12_2 = "^([^:]+):(.+)$"
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    L12_2 = L10_2 or L12_2
    if L10_2 then
      L12_2 = L21_1
      L13_2 = A0_2
      L14_2 = L10_2
      L15_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
    end
    L13_2 = {}
    L14_2 = L6_2.batteryId
    L13_2.targetId = L14_2
    L13_2.targetKind = "battery"
    if L12_2 then
      L14_2 = AccessPoints
      L14_2 = L14_2.Find
      L15_2 = Main
      L15_2 = L15_2.GetProperty
      L16_2 = A0_2
      L15_2 = L15_2(L16_2)
      L16_2 = L10_2
      L17_2 = L11_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        L14_2 = L14_2.label
      end
      if L14_2 then
        goto lbl_86
      end
      L14_2 = Utils
      L14_2 = L14_2.GetCatalogEntryByModel
      L15_2 = L12_2.item
      L15_2 = L15_2.model
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L14_2 = L14_2.label
      end
      if L14_2 then
        goto lbl_86
      end
      L14_2 = _U
      L15_2 = "battery_title"
      L14_2 = L14_2(L15_2)
      if L14_2 then
        goto lbl_86
      end
    end
    L14_2 = nil
    ::lbl_86::
    L13_2.targetLabel = L14_2
    L14_2 = L6_2.path
    L13_2.path = L14_2
    L13_2.broken = L9_2
    L7_2 = L13_2
    if not L9_2 then
      L8_2 = L6_2.batteryId
    end
  elseif L6_2 then
    L9_2 = Electricity
    L9_2 = L9_2.GetSourceDevices
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L9_2 = L9_2[1]
    if L9_2 then
      L10_2 = {}
      L11_2 = L9_2.id
      L10_2.targetId = L11_2
      L10_2.targetKind = "device"
      L11_2 = L9_2.label
      L10_2.targetLabel = L11_2
      L11_2 = L9_2.watts
      L10_2.targetWatts = L11_2
      L11_2 = L9_2.ratedWatts
      L10_2.targetRatedWatts = L11_2
      L11_2 = L9_2.path
      L10_2.path = L11_2
      L11_2 = L9_2.broken
      L10_2.broken = L11_2
      L7_2 = L10_2
    end
  end
  L9_2 = L4_2 or L9_2
  if L4_2 then
    L9_2 = L4_2.generatorStates
    if L9_2 then
      L9_2 = L9_2[L5_2]
    end
  end
  L3_2.output = L7_2
  if L9_2 then
    L10_2 = L9_2.outputWh
    L11_2 = L9_2.chargeWh
    L10_2 = L10_2 + L11_2
    L10_2 = L10_2 * 3600
    if L10_2 then
      goto lbl_140
    end
  end
  L10_2 = 0
  ::lbl_140::
  L3_2.loadWatts = L10_2
  L10_2 = Config
  L10_2 = L10_2.Generator
  L10_2 = L10_2.ratedWatts
  L3_2.ratedWatts = L10_2
  L10_2 = L4_2 or L10_2
  if L4_2 then
    L10_2 = L4_2.islands
    if L10_2 then
      L10_2 = L10_2[L8_2]
      if L10_2 then
        L10_2 = L10_2.powered
      end
    end
  end
  L10_2 = false == L10_2
  L3_2.overloaded = L10_2
  return L3_2
end
L39_1.GetGeneratorData = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = L21_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = Electricity
  L5_2 = L5_2.Reconcile
  L6_2 = A0_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = Electricity
  L6_2 = L6_2.GetPropertyData
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L17_1
  L8_2 = A1_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = Generator
  if L8_2 then
    L8_2 = Generator
    L8_2 = L8_2.GetBatteryConnections
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 then
      goto lbl_36
    end
  end
  L8_2 = {}
  ::lbl_36::
  L9_2 = ipairs
  L10_2 = L8_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L17_1
    L16_2 = A1_2
    L17_2 = L14_2.id
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = L5_2 or L16_2
    if L5_2 then
      L16_2 = L5_2.broken
      if L16_2 then
        L16_2 = L16_2[L15_2]
      end
    end
    L16_2 = true == L16_2
    L14_2.broken = L16_2
    L16_2 = L5_2 or L16_2
    if L5_2 then
      L16_2 = L5_2.generatorStates
      if L16_2 then
        L16_2 = L16_2[L15_2]
        if L16_2 then
          L16_2 = L16_2.chargeWh
        end
      end
    end
    if L16_2 then
      L17_2 = L16_2 * 3600
      if L17_2 then
        goto lbl_71
      end
    end
    L17_2 = 0
    ::lbl_71::
    L14_2.watts = L17_2
  end
  L9_2 = math
  L9_2 = L9_2.max
  L10_2 = 0
  L11_2 = L5_2 or L11_2
  if L5_2 then
    L11_2 = L5_2.islands
    if L11_2 then
      L11_2 = L11_2[L7_2]
      if L11_2 then
        L11_2 = L11_2.demandWatts
      end
    end
  end
  if not L11_2 then
    L11_2 = 0
  end
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L5_2 or L10_2
  if L5_2 then
    L10_2 = L5_2.batteryStates
    if L10_2 then
      L10_2 = L10_2[L7_2]
    end
  end
  if L10_2 then
    L11_2 = L10_2.dischargeOutputWh
    L11_2 = L11_2 * 3600
    if L11_2 then
      goto lbl_105
    end
  end
  L11_2 = 0
  ::lbl_105::
  L12_2 = math
  L12_2 = L12_2.max
  L13_2 = 0
  L14_2 = L4_2.state
  L14_2 = L14_2.chargeWh
  L15_2 = Config
  L15_2 = L15_2.Battery
  L15_2 = L15_2.capacityWh
  L16_2 = L6_2.reservePercent
  if not L16_2 then
    L16_2 = 0
  end
  L15_2 = L15_2 * L16_2
  L15_2 = L15_2 / 100
  L14_2 = L14_2 - L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = math
  L13_2 = L13_2.min
  L14_2 = L9_2
  L15_2 = Config
  L15_2 = L15_2.Battery
  L15_2 = L15_2.maxDischargeWatts
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = {}
  L15_2 = tostring
  L16_2 = A2_2
  L15_2 = L15_2(L16_2)
  L14_2.id = L15_2
  L15_2 = AccessPoints
  L15_2 = L15_2.Find
  L16_2 = Main
  L16_2 = L16_2.GetProperty
  L17_2 = A0_2
  L16_2 = L16_2(L17_2)
  L17_2 = A1_2
  L18_2 = A2_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  if L15_2 then
    L15_2 = L15_2.label
  end
  if not L15_2 then
    L15_2 = Utils
    L15_2 = L15_2.GetCatalogEntryByModel
    L16_2 = L4_2.item
    L16_2 = L16_2.model
    L15_2 = L15_2(L16_2)
    if L15_2 then
      L15_2 = L15_2.label
    end
    if not L15_2 then
      L15_2 = _U
      L16_2 = "battery_title"
      L15_2 = L15_2(L16_2)
    end
  end
  L14_2.label = L15_2
  L15_2 = L4_2.state
  L15_2 = L15_2.chargeWh
  L14_2.chargeWh = L15_2
  L15_2 = Config
  L15_2 = L15_2.Battery
  L15_2 = L15_2.capacityWh
  L14_2.capacityWh = L15_2
  if L10_2 then
    L15_2 = L10_2.chargeInputWh
    L15_2 = L15_2 * 3600
    if L15_2 then
      goto lbl_180
    end
  end
  L15_2 = 0
  ::lbl_180::
  L14_2.chargeWatts = L15_2
  L14_2.dischargeWatts = L11_2
  L14_2.loadWatts = L9_2
  L15_2 = Config
  L15_2 = L15_2.Battery
  L15_2 = L15_2.maxChargeWatts
  L14_2.maxChargeWatts = L15_2
  L15_2 = Config
  L15_2 = L15_2.Battery
  L15_2 = L15_2.maxDischargeWatts
  L14_2.maxDischargeWatts = L15_2
  L15_2 = L6_2.demandWatts
  if not L15_2 then
    L15_2 = 0
  end
  L14_2.demandWatts = L15_2
  L15_2 = L6_2.breakdown
  L14_2.breakdown = L15_2
  L15_2 = L6_2.generatorWatts
  if not L15_2 then
    L15_2 = 0
  end
  L14_2.generatorWatts = L15_2
  L15_2 = L6_2.batteryWatts
  if not L15_2 then
    L15_2 = 0
  end
  L14_2.batteryWatts = L15_2
  L15_2 = L6_2.gridWatts
  if not L15_2 then
    L15_2 = 0
  end
  L14_2.gridWatts = L15_2
  L15_2 = L6_2.gridCostPerHour
  if not L15_2 then
    L15_2 = 0
  end
  L14_2.gridCostPerHour = L15_2
  L15_2 = L6_2.policy
  L14_2.policy = L15_2
  L15_2 = L6_2.reservePercent
  L14_2.reservePercent = L15_2
  L14_2.sources = L8_2
  L15_2 = Electricity
  L15_2 = L15_2.GetSourceDevices
  L16_2 = A0_2
  L17_2 = A1_2
  L18_2 = L7_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L14_2.devices = L15_2
  L15_2 = L4_2.state
  L15_2 = L15_2.enabled
  L14_2.enabled = L15_2
  if L13_2 > 0 then
    L15_2 = Config
    L15_2 = L15_2.Battery
    L15_2 = L15_2.efficiency
    L15_2 = L12_2 * L15_2
    L15_2 = L15_2 / L13_2
    L15_2 = L15_2 * 3600
    if L15_2 then
      goto lbl_247
    end
  end
  L15_2 = 0
  ::lbl_247::
  L14_2.estimatedSeconds = L15_2
  L15_2 = 0.001
  L15_2 = L12_2 <= L15_2
  L14_2.reserveReached = L15_2
  L15_2 = L5_2 or L15_2
  if L5_2 then
    L15_2 = L5_2.islands
    if L15_2 then
      L15_2 = L15_2[L7_2]
      if L15_2 then
        L15_2 = L15_2.powered
      end
    end
  end
  L15_2 = false == L15_2
  L14_2.overloaded = L15_2
  L15_2 = L6_2.powered
  L14_2.powered = L15_2
  L15_2 = L6_2.wired
  L14_2.wired = L15_2
  L15_2 = L6_2.mode
  L14_2.mode = L15_2
  if A3_2 then
    L15_2 = L14_1
    L16_2 = A3_2
    L17_2 = A0_2
    L15_2 = L15_2(L16_2, L17_2)
    if L15_2 then
      goto lbl_283
    end
  end
  L15_2 = false
  ::lbl_283::
  L14_2.canManage = L15_2
  if A3_2 then
    L15_2 = Furniture
    L15_2 = L15_2.CanEditField
    L16_2 = A3_2
    L17_2 = A0_2
    L18_2 = "furnish"
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    if L15_2 then
      goto lbl_295
    end
  end
  L15_2 = false
  ::lbl_295::
  L14_2.canWire = L15_2
  return L14_2
end
L39_1.GetBatteryData = L40_1
L39_1 = Electricity
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = Electricity
    L1_2 = L1_2.Reconcile
    L2_2 = A0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = L1_1
  L1_2[A0_2] = nil
  L1_2 = SetTimeout
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L0_3.owner
    end
    if L0_3 then
      L0_3 = Electricity
      L0_3 = L0_3.Reconcile
      L1_3 = A0_2
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L39_1.Invalidate = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  L3_2 = L3_2(L4_2, L5_2)
  A2_2 = L3_2
  L3_2 = L2_1
  L4_2 = L2_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A0_2] = L4_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  if L3_2 == A2_2 then
    return
  end
  L3_2 = Electricity
  L3_2 = L3_2.Invalidate
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  L3_2[A1_2] = A2_2
end
L39_1.SetDynamicDemand = L40_1
L39_1 = Electricity
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Electricity
  L2_2 = L2_2.SetDynamicDemand
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
end
L39_1.ClearDynamicDemand = L40_1
L39_1 = Electricity
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = Electricity
      L1_2 = L1_2.Reconcile
      L2_2 = A0_2
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L39_1.BeforeFurnitureChange = L40_1
L39_1 = Electricity
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2[A0_2] = nil
  L1_2 = SetTimeout
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L0_3.owner
    end
    if L0_3 then
      L0_3 = Electricity
      L0_3 = L0_3.Reconcile
      L1_3 = A0_2
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L39_1.OnFurnitureChanged = L40_1
function L39_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A2_2.data
  if not L5_2 then
    L5_2 = {}
  end
  A2_2.data = L5_2
  L5_2 = A2_2.data
  L5_2.power = A3_2
  L5_2 = Furniture
  L5_2 = L5_2.SetData
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2.id
  if A3_2 then
    L9_2 = {}
    L9_2.power = A3_2
    if L9_2 then
      goto lbl_23
    end
  end
  L9_2 = {}
  ::lbl_23::
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = Electricity
  L5_2 = L5_2.OnFurnitureChanged
  L6_2 = A0_2
  L5_2(L6_2)
end
L40_1 = Electricity
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = ipairs
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L4_2.furniture
    if L4_2 then
      L4_2 = L4_2[A1_2]
    end
  end
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.data
    if L9_2 then
      L9_2 = L9_2.power
      if L9_2 then
        L9_2 = L9_2.sourceId
      end
    end
    if L9_2 == A2_2 then
      L9_2 = L39_1
      L10_2 = A0_2
      L11_2 = A1_2
      L12_2 = L8_2
      L13_2 = nil
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L40_1.ClearSource = L41_1
L40_1 = Electricity
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L15_1
  L4_2 = L4_2()
  if not L4_2 then
    return
  end
  L4_2 = L23_1
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  if "battery" == L4_2 then
    L5_2 = L17_1
    L6_2 = A1_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L0_1
    L6_2 = L6_2[A0_2]
    if L6_2 then
      L6_2 = L0_1
      L6_2 = L6_2[A0_2]
      L6_2[L5_2] = nil
    end
    L6_2 = Generator
    if L6_2 then
      L6_2 = Generator
      L6_2 = L6_2.DisconnectBattery
      L7_2 = A0_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
    L6_2 = Electricity
    L6_2 = L6_2.ClearSource
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  elseif "generator" == L4_2 then
    L5_2 = Electricity
    L5_2 = L5_2.ClearSource
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = L17_1
    L9_2 = A1_2
    L10_2 = A2_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L5_2 = L7_1
  L6_2 = L7_1
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L6_2 = 0
  end
  L6_2 = L6_2 + 1
  L5_2[A0_2] = L6_2
  L5_2 = L4_1
  L5_2[A0_2] = nil
  L5_2 = L5_1
  L5_2[A0_2] = true
  L5_2 = L1_1
  L5_2[A0_2] = nil
  L5_2 = SetTimeout
  L6_2 = 0
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = L0_3.owner
    end
    if L0_3 then
      L0_3 = Electricity
      L0_3 = L0_3.Reconcile
      L1_3 = A0_2
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L5_2(L6_2, L7_2)
end
L40_1.OnFurnitureRemoved = L41_1
L40_1 = Electricity
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L2_2 = L5_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L4_1
    L2_2 = L2_2[A0_2]
    L2_2 = nil ~= L2_2
  end
  L3_2 = L0_1
  L3_2[A0_2] = nil
  L3_2 = L1_1
  L3_2[A0_2] = nil
  L3_2 = L15_1
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = L20_1
    L4_2 = A0_2
    L3_2(L4_2)
    if L2_2 then
      L3_2 = pairs
      L4_2 = L0_1
      L4_2 = L4_2[A0_2]
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L1_2 or L9_2
        if L1_2 then
          L9_2 = L1_2[L7_2]
        end
        if L9_2 then
          L9_2 = L1_2[L7_2]
          L9_2 = L9_2.state
          L8_2.state = L9_2
          L9_2 = L8_2.item
          L9_2 = L9_2.data
          L10_2 = L8_2.state
          L9_2.battery = L10_2
        end
      end
      L3_2 = L5_1
      L3_2[A0_2] = true
    end
  end
end
L40_1.LoadProperty = L41_1
L40_1 = Electricity
function L41_1(A0_2)
  local L1_2, L2_2
  L1_2 = L7_1
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2[A0_2] = L2_2
  L1_2 = L4_1
  L1_2[A0_2] = nil
  L1_2 = L0_1
  L1_2[A0_2] = nil
  L1_2 = L1_1
  L1_2[A0_2] = nil
  L1_2 = L2_1
  L1_2[A0_2] = nil
  L1_2 = L5_1
  L1_2[A0_2] = nil
  L1_2 = L3_1
  L1_2[A0_2] = nil
  L1_2 = L10_1
  L1_2[A0_2] = nil
end
L40_1.ClearProperty = L41_1
L40_1 = Electricity
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if not L1_2 then
      L1_2 = L5_1
      L1_2 = L1_2[A0_2]
      if not L1_2 then
        goto lbl_22
      end
    end
    L1_2 = L9_1
    L1_2[A0_2] = true
    L1_2 = Electricity
    L1_2 = L1_2.Reconcile
    L2_2 = A0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L9_1
    L1_2[A0_2] = nil
  end
  ::lbl_22::
  L1_2 = Electricity
  L1_2 = L1_2.ClearProperty
  L2_2 = A0_2
  L1_2(L2_2)
end
L40_1.ReleaseProperty = L41_1
L40_1 = Electricity
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L15_1
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = Main
    L1_2 = L1_2.GetProperty
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L1_2.owner
    end
    if L1_2 then
      L1_2 = Electricity
      L1_2 = L1_2.Reconcile
      L2_2 = A0_2
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = L7_1
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2[A0_2] = L2_2
  L1_2 = L4_1
  L1_2[A0_2] = nil
  L1_2 = PowerAccounting
  L1_2 = L1_2.ResetSettings
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = Config
  L3_2 = L3_2.Electricity
  L3_2 = L3_2.defaultPolicy
  L4_2 = Config
  L4_2 = L4_2.Electricity
  L4_2 = L4_2.defaultReservePercent
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = Ambience
  L2_2 = L2_2.Save
  L3_2 = A0_2
  L4_2 = {}
  L4_2.electricity = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L2_2[A0_2] = nil
  L2_2 = L2_1
  L2_2[A0_2] = nil
  L2_2 = L5_1
  L2_2[A0_2] = nil
  L2_2 = L3_1
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L2_2[A0_2] = L3_2
end
L40_1.ResetOwnership = L41_1
function L40_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_14
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_14::
  L4_2 = FurnitureDb
  L4_2 = L4_2.IsValidType
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = type
    L5_2 = A3_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      L4_2 = #A3_2
      if not (L4_2 > 80) then
        goto lbl_30
      end
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_30::
  L4_2 = Config
  L4_2 = L4_2.Battery
  L4_2 = L4_2.enable
  if L4_2 then
    L4_2 = Main
    L4_2 = L4_2.LoadPropertyData
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_43
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_43::
  L4_2 = L21_1
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  if "house" == A2_2 then
    L5_2 = Main
    L5_2 = L5_2.GetHousePlayers
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L5_2[A0_2]
    end
    if L5_2 then
      goto lbl_86
    end
  end
  if "garage" == A2_2 then
    L5_2 = Main
    L5_2 = L5_2.GetGaragePlayers
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L5_2[A0_2]
    end
  end
  L5_2 = Main
  L5_2 = L5_2.GetYardPlayers
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 or "yard" == A2_2 and L5_2 and L5_2
  ::lbl_86::
  if not L5_2 then
    L6_2 = nil
    return L6_2
  end
  if "yard" ~= A2_2 then
    L6_2 = Main
    L6_2 = L6_2.GetPropertyAccess
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 ~= A1_2 then
      L6_2 = nil
      return L6_2
    end
  end
  L6_2 = Generator
  L6_2 = L6_2.WorldCoords
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = A2_2
  L9_2 = L4_2.item
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = GetPlayerPed
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if 0 ~= L7_2 and L6_2 then
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 - L6_2
    L8_2 = #L8_2
    L9_2 = Config
    L9_2 = L9_2.FurnitureUses
    L9_2 = L9_2.battery
    L9_2 = L9_2.dist
    L9_2 = L9_2 + 1.5
    if not (L8_2 > L9_2) then
      goto lbl_132
    end
  end
  L8_2 = nil
  do return L8_2 end
  ::lbl_132::
  return L4_2
end
L41_1 = RegisterCallback
L42_1 = "tk_housing:getElectricity"
function L43_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L14_1
      L4_2 = A0_2
      L5_2 = A2_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        goto lbl_22
      end
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_22::
  L3_2 = Electricity
  L3_2 = L3_2.GetPropertyData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L3_2.canManage = true
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterCallback
L42_1 = "tk_housing:setElectricityPolicy"
function L43_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L15_1
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L6_2 = _U
    L7_2 = "electricity_invalid"
    L6_2 = L6_2(L7_2)
    L5_2.error = L6_2
    L4_2(L5_2)
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = L14_1
      L5_2 = A0_2
      L6_2 = A2_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        goto lbl_42
      end
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = false
  L6_2 = _U
  L7_2 = "electricity_no_permission"
  L6_2 = L6_2(L7_2)
  L5_2.error = L6_2
  L4_2(L5_2)
  do return end
  ::lbl_42::
  if "local_first" ~= A3_2 and "grid_first" ~= A3_2 and "off_grid" ~= A3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L6_2 = _U
    L7_2 = "electricity_invalid"
    L6_2 = L6_2(L7_2)
    L5_2.error = L6_2
    L4_2(L5_2)
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = A0_2
  L6_2 = 500
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L6_2 = _U
    L7_2 = "electricity_busy"
    L6_2 = L6_2(L7_2)
    L5_2.error = L6_2
    L4_2(L5_2)
    return
  end
  L4_2 = Electricity
  L4_2 = L4_2.Reconcile
  L5_2 = A2_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L14_1
    L5_2 = A0_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_102
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = false
  L6_2 = _U
  L7_2 = "electricity_no_permission"
  L6_2 = L6_2(L7_2)
  L5_2.error = L6_2
  L4_2(L5_2)
  do return end
  ::lbl_102::
  L4_2 = L22_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L4_2.policy = A3_2
  L5_2 = L5_1
  L5_2[A2_2] = true
  L5_2 = L36_1
  L6_2 = A2_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L7_2 = Electricity
  L7_2 = L7_2.GetPropertyData
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L6_2.data = L7_2
  L5_2(L6_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterCallback
L42_1 = "tk_housing:getBattery"
function L43_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = L40_1
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = A1_2
    L7_2 = {}
    L7_2.ok = false
    L8_2 = _U
    L9_2 = "battery_invalid"
    L8_2 = L8_2(L9_2)
    L7_2.error = L8_2
    L6_2(L7_2)
    return
  end
  L6_2 = A1_2
  L7_2 = {}
  L7_2.ok = true
  L8_2 = Electricity
  L8_2 = L8_2.GetBatteryData
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A0_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L7_2.data = L8_2
  L6_2(L7_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterCallback
L42_1 = "tk_housing:setBatteryReserve"
function L43_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = L15_1
  L6_2 = L6_2()
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = {}
    L7_2.ok = false
    L8_2 = _U
    L9_2 = "battery_invalid"
    L8_2 = L8_2(L9_2)
    L7_2.error = L8_2
    L6_2(L7_2)
    return
  end
  L6_2 = L40_1
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = tonumber
  L8_2 = A5_2
  L7_2 = L7_2(L8_2)
  A5_2 = L7_2
  if L6_2 and A5_2 and A5_2 == A5_2 and not (A5_2 < 0) and not (A5_2 > 100) then
    L7_2 = L14_1
    L8_2 = A0_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_51
    end
  end
  L7_2 = A1_2
  L8_2 = {}
  L8_2.ok = false
  L9_2 = _U
  L10_2 = "battery_invalid"
  L9_2 = L9_2(L10_2)
  L8_2.error = L9_2
  L7_2(L8_2)
  do return end
  ::lbl_51::
  L7_2 = Main
  L7_2 = L7_2.AllowChange
  L8_2 = A0_2
  L9_2 = 500
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "electricity_busy"
    L9_2 = L9_2(L10_2)
    L8_2.error = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = Electricity
  L7_2 = L7_2.Reconcile
  L8_2 = A2_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = L40_1
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if L7_2 == L6_2 then
    L7_2 = L14_1
    L8_2 = A0_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_97
    end
  end
  L7_2 = A1_2
  L8_2 = {}
  L8_2.ok = false
  L9_2 = _U
  L10_2 = "battery_invalid"
  L9_2 = L9_2(L10_2)
  L8_2.error = L9_2
  L7_2(L8_2)
  do return end
  ::lbl_97::
  L7_2 = L22_1
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = A5_2
  L8_2 = L8_2(L9_2)
  L7_2.reservePercent = L8_2
  L7_2 = L5_1
  L7_2[A2_2] = true
  L7_2 = L36_1
  L8_2 = A2_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = A1_2
  L8_2 = {}
  L8_2.ok = true
  L9_2 = Electricity
  L9_2 = L9_2.GetBatteryData
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2.data = L9_2
  L7_2(L8_2)
end
L41_1(L42_1, L43_1)
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.Electricity
  L1_2 = L1_2.wiring
  L1_2 = L1_2.requireItem
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = GetPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil ~= L1_2
  return L2_2
end
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Generator
  if L4_2 then
    L4_2 = Generator
    L4_2 = L4_2.CanUseNear
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  if L4_2 then
    L5_2 = L4_2
    L6_2 = "generator"
    L7_2 = L4_2.row
    return L5_2, L6_2, L7_2
  end
  L5_2 = L40_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L6_2 = L5_2
    L7_2 = "battery"
    L8_2 = L5_2.item
    return L6_2, L7_2, L8_2
  end
  L6_2 = nil
  return L6_2
end
function L43_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if "generator" == A3_2 then
    L4_2 = Generator
    if L4_2 then
      L4_2 = Generator
      L4_2 = L4_2.GetWiringSource
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
    end
    L5_2 = L4_2
    L6_2 = L4_2 or L6_2
    if L4_2 then
      L6_2 = L4_2.row
    end
    return L5_2, L6_2
  end
  L4_2 = Config
  L4_2 = L4_2.Battery
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if L4_2 then
    L4_2 = FurnitureDb
    L4_2 = L4_2.IsValidType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = type
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if "string" == L4_2 then
        L4_2 = #A2_2
        if not (L4_2 > 80) then
          L4_2 = Main
          L4_2 = L4_2.LoadPropertyData
          L5_2 = A0_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            goto lbl_46
          end
        end
      end
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_46::
  L4_2 = L21_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2
  L6_2 = L4_2 or L6_2
  if L4_2 then
    L6_2 = L4_2.item
  end
  return L5_2, L6_2
end
function L44_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = L5_2.furniture
    if L5_2 then
      L5_2 = L5_2[A2_2]
    end
  end
  L6_2 = Main
  L6_2 = L6_2.GetFurnitureIndexById
  L7_2 = L5_2
  L8_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = L5_2[L6_2]
    if L7_2 then
      goto lbl_22
    end
  end
  L7_2 = nil
  ::lbl_22::
  if not L7_2 then
    L8_2 = nil
    L9_2 = "wiring_bad_target"
    return L8_2, L9_2
  end
  L8_2 = L23_1
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if "battery" == L8_2 then
    if "generator" ~= A4_2 then
      L9_2 = nil
      L10_2 = "wiring_bad_target"
      return L9_2, L10_2
    end
    L9_2 = L40_1
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = A3_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if not L9_2 then
      L10_2 = nil
      L11_2 = "wiring_invalid"
      return L10_2, L11_2
    end
    L10_2 = L9_2.item
    L11_2 = "battery"
    return L10_2, L11_2
  end
  if "generator" == L8_2 then
    L9_2 = nil
    L10_2 = "wiring_bad_target"
    return L9_2, L10_2
  end
  L9_2 = Utils
  L9_2 = L9_2.GetElectricityWatts
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = nil
    L10_2 = "wiring_not_electrical"
    return L9_2, L10_2
  end
  L9_2 = L7_2
  L10_2 = "device"
  return L9_2, L10_2
end
function L45_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if "device" == A3_2 then
    L5_2 = A2_2.state
    L5_2 = L5_2.connection
    if L5_2 then
      L5_2 = L5_2.batteryId
    end
    if L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L5_2 = L17_1
  L6_2 = A1_2
  L7_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = ipairs
  L7_2 = Electricity
  L7_2 = L7_2.GetSourceDevices
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = L17_1
  L11_2 = A1_2
  L12_2 = A2_2.id
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.id
    if L12_2 ~= L5_2 then
      L12_2 = false
      return L12_2
    end
  end
  L6_2 = true
  return L6_2
end
function L46_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L4_2.furniture
    if L4_2 then
      L4_2 = L4_2[A1_2]
    end
  end
  L5_2 = Main
  L5_2 = L5_2.GetFurnitureIndexById
  L6_2 = L4_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L4_2[L5_2]
    if L6_2 then
      goto lbl_22
    end
  end
  L6_2 = nil
  ::lbl_22::
  L7_2 = L6_2 or L7_2
  if L6_2 then
    L7_2 = L6_2.data
    if L7_2 then
      L7_2 = L7_2.power
      if L7_2 then
        L7_2 = L7_2.sourceId
      end
    end
  end
  if L7_2 ~= A3_2 then
    L7_2 = nil
    return L7_2
  end
  return L6_2
end
function L47_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if "generator" == A4_2 then
    L5_2 = Generator
    L5_2 = L5_2.GetData
    L6_2 = A3_2
    L7_2 = GetPlayerFromId
    L8_2 = A0_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    return L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = Electricity
  L5_2 = L5_2.GetBatteryData
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2.id
  L9_2 = A0_2
  return L5_2(L6_2, L7_2, L8_2, L9_2)
end
L48_1 = RegisterCallback
L49_1 = "tk_housing:canStartWiring"
function L50_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = L15_1
  L5_2 = L5_2()
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L7_2 = _U
    L8_2 = "wiring_invalid"
    L7_2 = L7_2(L8_2)
    L6_2.error = L7_2
    L5_2(L6_2)
    return
  end
  L5_2 = L42_1
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "wiring_invalid"
    L9_2 = L9_2(L10_2)
    L8_2.error = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = Furniture
  L7_2 = L7_2.CanEditField
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = "furnish"
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "wiring_no_permission"
    L9_2 = L9_2(L10_2)
    L8_2.error = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = L41_1
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "wiring_tool_required"
    L9_2 = L9_2(L10_2)
    L8_2.error = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = L12_1
  L8_2 = {}
  L8_2.propertyId = A2_2
  L8_2.furnitureType = A3_2
  L8_2.sourceId = A4_2
  L8_2.sourceKind = L6_2
  L9_2 = os
  L9_2 = L9_2.time
  L9_2 = L9_2()
  L9_2 = L9_2 + 120
  L8_2.expiresAt = L9_2
  L7_2[A0_2] = L8_2
  L7_2 = A1_2
  L8_2 = {}
  L8_2.ok = true
  L7_2(L8_2)
end
L48_1(L49_1, L50_1)
L48_1 = RegisterCallback
L49_1 = "tk_housing:connectCable"
function L50_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L7_2 = L15_1
  L7_2 = L7_2()
  if not L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "wiring_invalid"
    L9_2 = L9_2(L10_2)
    L8_2.error = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = L12_1
  L7_2 = L7_2[A0_2]
  L8_2 = L12_1
  L8_2[A0_2] = nil
  if L7_2 then
    L8_2 = L7_2.expiresAt
    L9_2 = os
    L9_2 = L9_2.time
    L9_2 = L9_2()
    if not (L8_2 < L9_2) then
      L8_2 = L7_2.propertyId
      if L8_2 == A2_2 then
        L8_2 = L7_2.furnitureType
        if L8_2 == A3_2 then
          L8_2 = L7_2.sourceId
          if L8_2 == A4_2 then
            L8_2 = type
            L9_2 = A5_2
            L8_2 = L8_2(L9_2)
            if "string" == L8_2 then
              L8_2 = #A5_2
              if not (L8_2 > 80) and A5_2 ~= A4_2 then
                L8_2 = Furniture
                L8_2 = L8_2.CanEditField
                L9_2 = A0_2
                L10_2 = A2_2
                L11_2 = "furnish"
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                if L8_2 then
                  L8_2 = type
                  L9_2 = A6_2
                  L8_2 = L8_2(L9_2)
                  if "table" == L8_2 then
                    L8_2 = #A6_2
                    L9_2 = Config
                    L9_2 = L9_2.Electricity
                    L9_2 = L9_2.wiring
                    L9_2 = L9_2.maxPoints
                    if not (L8_2 > L9_2) then
                      goto lbl_76
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L8_2 = A1_2
  L9_2 = {}
  L9_2.ok = false
  L10_2 = _U
  L11_2 = "wiring_invalid"
  L10_2 = L10_2(L11_2)
  L9_2.error = L10_2
  L8_2(L9_2)
  do return end
  ::lbl_76::
  L8_2 = L7_2.sourceKind
  L9_2 = L43_1
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = L8_2
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  if not L9_2 then
    L11_2 = A1_2
    L12_2 = {}
    L12_2.ok = false
    L13_2 = _U
    L14_2 = "wiring_invalid"
    L13_2 = L13_2(L14_2)
    L12_2.error = L13_2
    L11_2(L12_2)
    return
  end
  L11_2 = L44_1
  L12_2 = A0_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A5_2
  L16_2 = L8_2
  L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  if not L11_2 then
    L13_2 = A1_2
    L14_2 = {}
    L14_2.ok = false
    L15_2 = _U
    L16_2 = L12_2
    L15_2 = L15_2(L16_2)
    L14_2.error = L15_2
    L13_2(L14_2)
    return
  end
  L13_2 = Main
  L13_2 = L13_2.AllowChange
  L14_2 = A0_2
  L15_2 = 500
  L13_2 = L13_2(L14_2, L15_2)
  if not L13_2 then
    L13_2 = A1_2
    L14_2 = {}
    L14_2.ok = false
    L15_2 = _U
    L16_2 = "electricity_busy"
    L15_2 = L15_2(L16_2)
    L14_2.error = L15_2
    L13_2(L14_2)
    return
  end
  L13_2 = L41_1
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  if not L13_2 then
    L13_2 = A1_2
    L14_2 = {}
    L14_2.ok = false
    L15_2 = _U
    L16_2 = "wiring_tool_required"
    L15_2 = L15_2(L16_2)
    L14_2.error = L15_2
    L13_2(L14_2)
    return
  end
  L13_2 = Utils
  L13_2 = L13_2.Debug
  L14_2 = "connect cable"
  L15_2 = A0_2
  L16_2 = A2_2
  L17_2 = L8_2
  L18_2 = A4_2
  L19_2 = L12_2
  L20_2 = A5_2
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = {}
  L14_2 = Generator
  L14_2 = L14_2.WorldCoords
  L15_2 = Main
  L15_2 = L15_2.GetProperty
  L16_2 = A2_2
  L15_2 = L15_2(L16_2)
  L16_2 = A3_2
  L17_2 = L10_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = 0
  L16_2 = ipairs
  L17_2 = A6_2
  L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
  for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
    L22_2 = type
    L23_2 = L21_2
    L22_2 = L22_2(L23_2)
    if "table" ~= L22_2 then
      L22_2 = A1_2
      L23_2 = {}
      L23_2.ok = false
      L24_2 = _U
      L25_2 = "wiring_invalid"
      L24_2 = L24_2(L25_2)
      L23_2.error = L24_2
      L22_2(L23_2)
      return
    end
    L22_2 = tonumber
    L23_2 = L21_2.x
    L22_2 = L22_2(L23_2)
    L23_2 = tonumber
    L24_2 = L21_2.y
    L23_2 = L23_2(L24_2)
    L24_2 = tonumber
    L25_2 = L21_2.z
    L24_2 = L24_2(L25_2)
    if L22_2 and L23_2 and L24_2 and L22_2 == L22_2 and L23_2 == L23_2 and L24_2 == L24_2 then
      L25_2 = math
      L25_2 = L25_2.abs
      L26_2 = L22_2
      L25_2 = L25_2(L26_2)
      L26_2 = 10000
      if not (L25_2 > L26_2) then
        L25_2 = math
        L25_2 = L25_2.abs
        L26_2 = L23_2
        L25_2 = L25_2(L26_2)
        L26_2 = 10000
        if not (L25_2 > L26_2) then
          L25_2 = math
          L25_2 = L25_2.abs
          L26_2 = L24_2
          L25_2 = L25_2(L26_2)
          L26_2 = 2000
          if not (L25_2 > L26_2) then
            goto lbl_239
          end
        end
      end
    end
    L25_2 = A1_2
    L26_2 = {}
    L26_2.ok = false
    L27_2 = _U
    L28_2 = "wiring_invalid"
    L27_2 = L27_2(L28_2)
    L26_2.error = L27_2
    L25_2(L26_2)
    do return end
    ::lbl_239::
    L25_2 = vec3
    L26_2 = L22_2
    L27_2 = L23_2
    L28_2 = L24_2
    L25_2 = L25_2(L26_2, L27_2, L28_2)
    L26_2 = L25_2 - L14_2
    L26_2 = #L26_2
    L15_2 = L15_2 + L26_2
    L14_2 = L25_2
    L26_2 = #L13_2
    L26_2 = L26_2 + 1
    L27_2 = {}
    L27_2.x = L22_2
    L27_2.y = L23_2
    L27_2.z = L24_2
    L13_2[L26_2] = L27_2
  end
  L16_2 = Generator
  L16_2 = L16_2.WorldCoords
  L17_2 = Main
  L17_2 = L17_2.GetProperty
  L18_2 = A2_2
  L17_2 = L17_2(L18_2)
  L18_2 = A3_2
  L19_2 = L11_2
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L17_2 = L16_2 - L14_2
  L17_2 = #L17_2
  L15_2 = L15_2 + L17_2
  L17_2 = Config
  L17_2 = L17_2.Electricity
  L17_2 = L17_2.wiring
  L17_2 = L17_2.maxLength
  if L15_2 > L17_2 then
    L17_2 = A1_2
    L18_2 = {}
    L18_2.ok = false
    L19_2 = _U
    L20_2 = "wiring_too_long"
    L19_2 = L19_2(L20_2)
    L18_2.error = L19_2
    L17_2(L18_2)
    return
  end
  if "generator" == L8_2 then
    L17_2 = L45_1
    L18_2 = A2_2
    L19_2 = A3_2
    L20_2 = L9_2
    L21_2 = L12_2
    L22_2 = A5_2
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
    if not L17_2 then
      L17_2 = A1_2
      L18_2 = {}
      L18_2.ok = false
      L19_2 = _U
      L20_2 = "wiring_generator_one_output"
      L19_2 = L19_2(L20_2)
      L18_2.error = L19_2
      L17_2(L18_2)
      return
    end
  end
  L17_2 = Electricity
  L17_2 = L17_2.Reconcile
  L18_2 = A2_2
  L19_2 = true
  L17_2(L18_2, L19_2)
  L17_2 = L43_1
  L18_2 = A2_2
  L19_2 = A3_2
  L20_2 = A4_2
  L21_2 = L8_2
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  if L17_2 == L9_2 then
    L17_2 = L44_1
    L18_2 = A0_2
    L19_2 = A2_2
    L20_2 = A3_2
    L21_2 = A5_2
    L22_2 = L8_2
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
    if L17_2 == L11_2 then
      L17_2 = Furniture
      L17_2 = L17_2.CanEditField
      L18_2 = A0_2
      L19_2 = A2_2
      L20_2 = "furnish"
      L17_2 = L17_2(L18_2, L19_2, L20_2)
      if L17_2 then
        if "generator" ~= L8_2 then
          goto lbl_364
        end
        L17_2 = L45_1
        L18_2 = A2_2
        L19_2 = A3_2
        L20_2 = L9_2
        L21_2 = L12_2
        L22_2 = A5_2
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
        if L17_2 then
          goto lbl_364
        end
      end
    end
  end
  L17_2 = A1_2
  L18_2 = {}
  L18_2.ok = false
  L19_2 = _U
  L20_2 = "wiring_invalid"
  L19_2 = L19_2(L20_2)
  L18_2.error = L19_2
  L17_2(L18_2)
  do return end
  ::lbl_364::
  if "battery" == L12_2 then
    L17_2 = Generator
    L17_2 = L17_2.SetConnection
    L18_2 = L9_2
    L19_2 = L17_1
    L20_2 = A3_2
    L21_2 = A5_2
    L19_2 = L19_2(L20_2, L21_2)
    L20_2 = L13_2
    L21_2 = A0_2
    L17_2(L18_2, L19_2, L20_2, L21_2)
  else
    L17_2 = L39_1
    L18_2 = A2_2
    L19_2 = A3_2
    L20_2 = L11_2
    L21_2 = {}
    L22_2 = L17_1
    L23_2 = A3_2
    L24_2 = A4_2
    L22_2 = L22_2(L23_2, L24_2)
    L21_2.sourceId = L22_2
    L21_2.path = L13_2
    L22_2 = A0_2
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  end
  if "battery" == L8_2 then
    L17_2 = L12_1
    L18_2 = {}
    L18_2.propertyId = A2_2
    L18_2.furnitureType = A3_2
    L18_2.sourceId = A4_2
    L18_2.sourceKind = L8_2
    L19_2 = os
    L19_2 = L19_2.time
    L19_2 = L19_2()
    L19_2 = L19_2 + 120
    L18_2.expiresAt = L19_2
    L17_2[A0_2] = L18_2
  end
  L17_2 = A1_2
  L18_2 = {}
  L18_2.ok = true
  L19_2 = L47_1
  L20_2 = A0_2
  L21_2 = A2_2
  L22_2 = A3_2
  L23_2 = L9_2
  L24_2 = L8_2
  L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
  L18_2.data = L19_2
  L17_2(L18_2)
end
L48_1(L49_1, L50_1)
L48_1 = RegisterCallback
L49_1 = "tk_housing:disconnectCable"
function L50_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L6_2 = L15_1
  L6_2 = L6_2()
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = {}
    L7_2.ok = false
    L8_2 = _U
    L9_2 = "wiring_invalid"
    L8_2 = L8_2(L9_2)
    L7_2.error = L8_2
    L6_2(L7_2)
    return
  end
  if nil ~= A5_2 then
    L6_2 = type
    L7_2 = A5_2
    L6_2 = L6_2(L7_2)
    if "string" == L6_2 then
      L6_2 = #A5_2
      if not (L6_2 > 80) then
        goto lbl_35
      end
    end
    L6_2 = A1_2
    L7_2 = {}
    L7_2.ok = false
    L8_2 = _U
    L9_2 = "wiring_invalid"
    L8_2 = L8_2(L9_2)
    L7_2.error = L8_2
    L6_2(L7_2)
    return
  end
  ::lbl_35::
  L6_2 = L42_1
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L8_2 = Furniture
    L8_2 = L8_2.CanEditField
    L9_2 = A0_2
    L10_2 = A2_2
    L11_2 = "furnish"
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 and ("battery" ~= L7_2 or A5_2) then
      goto lbl_65
    end
  end
  L8_2 = A1_2
  L9_2 = {}
  L9_2.ok = false
  L10_2 = _U
  L11_2 = "wiring_invalid"
  L10_2 = L10_2(L11_2)
  L9_2.error = L10_2
  L8_2(L9_2)
  do return end
  ::lbl_65::
  L8_2 = L17_1
  L9_2 = A3_2
  L10_2 = A4_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A5_2 or L9_2
  if A5_2 then
    L9_2 = L46_1
    L10_2 = A2_2
    L11_2 = A3_2
    L12_2 = A5_2
    L13_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if A5_2 and not L9_2 then
    L10_2 = A1_2
    L11_2 = {}
    L11_2.ok = false
    L12_2 = _U
    L13_2 = "wiring_invalid"
    L12_2 = L12_2(L13_2)
    L11_2.error = L12_2
    L10_2(L11_2)
    return
  end
  L10_2 = Main
  L10_2 = L10_2.AllowChange
  L11_2 = A0_2
  L12_2 = 500
  L10_2 = L10_2(L11_2, L12_2)
  if not L10_2 then
    L10_2 = A1_2
    L11_2 = {}
    L11_2.ok = false
    L12_2 = _U
    L13_2 = "electricity_busy"
    L12_2 = L12_2(L13_2)
    L11_2.error = L12_2
    L10_2(L11_2)
    return
  end
  L10_2 = Electricity
  L10_2 = L10_2.Reconcile
  L11_2 = A2_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = L42_1
  L11_2 = A0_2
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  if L10_2 == L6_2 and L11_2 == L7_2 then
    L12_2 = Furniture
    L12_2 = L12_2.CanEditField
    L13_2 = A0_2
    L14_2 = A2_2
    L15_2 = "furnish"
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    if L12_2 then
      if not A5_2 then
        goto lbl_151
      end
      L12_2 = L46_1
      L13_2 = A2_2
      L14_2 = A3_2
      L15_2 = A5_2
      L16_2 = L8_2
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      if L12_2 == L9_2 then
        goto lbl_151
      end
    end
  end
  L12_2 = A1_2
  L13_2 = {}
  L13_2.ok = false
  L14_2 = _U
  L15_2 = "wiring_invalid"
  L14_2 = L14_2(L15_2)
  L13_2.error = L14_2
  L12_2(L13_2)
  do return end
  ::lbl_151::
  if L9_2 then
    L12_2 = L39_1
    L13_2 = A2_2
    L14_2 = A3_2
    L15_2 = L9_2
    L16_2 = nil
    L17_2 = A0_2
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  else
    L12_2 = L6_2.state
    L12_2 = L12_2.connection
    if L12_2 then
      L12_2 = Generator
      L12_2 = L12_2.SetConnection
      L13_2 = L6_2
      L14_2 = nil
      L15_2 = nil
      L16_2 = A0_2
      L12_2(L13_2, L14_2, L15_2, L16_2)
    else
      L12_2 = Electricity
      L12_2 = L12_2.ClearSource
      L13_2 = A2_2
      L14_2 = A3_2
      L15_2 = L8_2
      L12_2(L13_2, L14_2, L15_2)
    end
  end
  L12_2 = A1_2
  L13_2 = {}
  L13_2.ok = true
  L14_2 = L47_1
  L15_2 = A0_2
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = L6_2
  L19_2 = L7_2
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L13_2.data = L14_2
  L12_2(L13_2)
end
L48_1(L49_1, L50_1)
L48_1 = AddEventHandler
L49_1 = "playerDropped"
function L50_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L12_1
  L0_2[L1_2] = nil
end
L48_1(L49_1, L50_1)
function L48_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = next
  L2_2 = Main
  L2_2 = L2_2.GetPropertyPlayers
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L49_1 = CreateThread
function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  repeat
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = Main
    L0_2 = L0_2.ready
  until L0_2
  L0_2 = L15_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  while true do
    L0_2 = Wait
    L1_2 = math
    L1_2 = L1_2.max
    L2_2 = 1000
    L3_2 = Config
    L3_2 = L3_2.Electricity
    L3_2 = L3_2.updateInterval
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2, L3_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2 = {}
    L1_2 = pairs
    L2_2 = L1_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2 in L1_2, L2_2, L3_2, L4_2 do
      L6_2 = #L0_2
      L6_2 = L6_2 + 1
      L0_2[L6_2] = L5_2
    end
    L1_2 = ipairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L48_1
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = Electricity
        L7_2 = L7_2.Reconcile
        L8_2 = L6_2
        L9_2 = false
        L7_2(L8_2, L9_2)
      else
        L7_2 = L1_1
        L7_2[L6_2] = nil
      end
    end
  end
end
L49_1(L50_1)
L49_1 = AddEventHandler
L50_1 = "onResourceStop"
function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L15_1
    L1_2 = L1_2()
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = Electricity
    L6_2 = L6_2.Reconcile
    L7_2 = L5_2
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
end
L49_1(L50_1, L51_1)
