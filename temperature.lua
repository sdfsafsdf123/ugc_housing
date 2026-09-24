local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1
L0_1 = {}
Temperature = L0_1
L0_1 = {}
L1_1 = "house"
L2_1 = "garage"
L0_1[1] = L1_1
L0_1[2] = L2_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
function L6_1(A0_2, A1_2, A2_2)
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
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 * 10
  L2_2 = L2_2 + 0.5
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 / 10
  return L1_2
end
function L8_1(A0_2)
  local L1_2
  L1_2 = "house" == A0_2 or "garage" == A0_2
  return L1_2
end
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L2_2[A1_2]
  end
  return L2_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Config
  L2_2 = L2_2.Temperature
  L2_2 = L2_2.enable
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = A1_2 or L2_2
  if A1_2 then
    L2_2 = A1_2.owner
  end
  L2_2 = A1_2.owner
  L2_2 = Utils
  L2_2 = L2_2.IsMotelType
  L3_2 = A1_2.propertyType
  L2_2 = L2_2(L3_2)
  L2_2 = true == L2_2 and L2_2
  return L2_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.Temperature
  L2_2 = L2_2.outdoor
  L3_2 = L2_2.weather
  if L3_2 then
    L3_2 = L3_2[A0_2]
  end
  if not L3_2 then
    L3_2 = L2_2.fallbackTemperature
  end
  L4_2 = nil
  L5_2 = L2_2.nightStart
  L6_2 = L2_2.nightEnd
  if L5_2 <= L6_2 then
    L5_2 = L2_2.nightStart
    L4_2 = A1_2 >= L5_2
  else
    L5_2 = L2_2.nightStart
    L4_2 = A1_2 >= L5_2
  end
  if L4_2 then
    L5_2 = L2_2.nightOffset
    L3_2 = L3_2 + L5_2
  end
  return L3_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.Temperature
  L2_2 = L2_2.outdoor
  L3_2 = L2_2.source
  if "custom" == L3_2 then
    L3_2 = pcall
    L4_2 = GetOutdoorTemperature
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if "number" == L5_2 and L4_2 == L4_2 then
        return L4_2
      end
    end
  else
    L3_2 = L2_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L3_2 = L2_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.temperature
      return L3_2
    end
  end
  L3_2 = L11_1
  L4_2 = L2_2.fallbackWeather
  L5_2 = L2_2.fallbackHour
  return L3_2(L4_2, L5_2)
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.Temperature
  L2_2 = L2_2.outdoor
  L2_2 = L2_2.source
  if "native" == L2_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = type
  L3_2 = A1_2.weather
  L2_2 = L2_2(L3_2)
  L2_2 = A1_2.weather
  L3_2 = L2_2
  L2_2 = L2_2.upper
  L2_2 = "string" == L2_2 and L2_2
  L3_2 = tonumber
  L4_2 = A1_2.hour
  L3_2 = L3_2(L4_2)
  if L2_2 then
    L4_2 = #L2_2
    if not (L4_2 > 24) then
      L4_2 = Config
      L4_2 = L4_2.Temperature
      L4_2 = L4_2.outdoor
      L4_2 = L4_2.weather
      if L4_2 then
        L4_2 = L4_2[L2_2]
      end
      if nil ~= L4_2 then
        goto lbl_42
      end
    end
  end
  do return end
  ::lbl_42::
  if not L3_2 or L3_2 ~= L3_2 or L3_2 < 0 or L3_2 >= 24 then
    return
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = L2_1
  L5_2 = {}
  L5_2.weather = L2_2
  L5_2.hour = L3_2
  L6_2 = L11_1
  L7_2 = L2_2
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.temperature = L6_2
  L4_2[A0_2] = L5_2
end
function L14_1(A0_2)
  local L1_2
  if "garage" == A0_2 then
    L1_2 = "garageTemperature"
    if L1_2 then
      goto lbl_7
    end
  end
  L1_2 = "temperature"
  ::lbl_7::
  return L1_2
end
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Ambience
  L2_2 = L2_2.Get
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L14_1
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2[L3_2]
  end
  L3_2 = tonumber
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = L2_2.target
  end
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Temperature
    L3_2 = L3_2.defaultTarget
  end
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = L2_2.mode
  end
  if "heat" == L4_2 or "cool" == L4_2 then
    L4_2 = "auto"
  end
  if "auto" ~= L4_2 then
    L4_2 = "off"
  end
  L5_2 = {}
  L5_2.mode = L4_2
  L6_2 = L6_1
  L7_2 = L3_2
  L8_2 = Config
  L8_2 = L8_2.Temperature
  L8_2 = L8_2.minTarget
  L9_2 = Config
  L9_2 = L9_2.Temperature
  L9_2 = L9_2.maxTarget
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.target = L6_2
  return L5_2
end
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = {}
  L3_2 = A1_2.heat
  L4_2 = A1_2.cool
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = L2_2[1]
  L3_2 = #L3_2
  if 0 == L3_2 then
    L3_2 = L2_2[2]
    L3_2 = #L3_2
    if 0 == L3_2 then
      return
    end
  end
  L3_2 = nil
  L4_2 = nil
  L5_2 = Electricity
  if L5_2 then
    L5_2 = Electricity
    L5_2 = L5_2.GetDevicePower
    L6_2 = A0_2
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L6_2
    L3_2 = L5_2
  end
  if not L3_2 then
    L5_2 = Utilities
    L5_2 = L5_2.GetStatus
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.electricity
    L4_2 = true == L5_2
  end
  L5_2 = ipairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = ipairs
    L12_2 = L10_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
    for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
      L17_2 = L3_2 or L17_2
      if L3_2 then
        L17_2 = L16_2.key
        L17_2 = L3_2[L17_2]
      end
      if nil == L17_2 then
        L16_2.powered = L4_2
      else
        L18_2 = true == L17_2
        L16_2.powered = L18_2
      end
    end
  end
end
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = {}
  L4_2 = {}
  L3_2.heat = L4_2
  L4_2 = {}
  L3_2.cool = L4_2
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = AccessPoints
  L6_2 = L6_2.Get
  L7_2 = A1_2
  L8_2 = A2_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2(L7_2, L8_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.id
    L12_2 = L10_2.label
    L4_2[L11_2] = L12_2
  end
  L5_2 = ipairs
  L6_2 = A1_2.furniture
  if L6_2 then
    L6_2 = L6_2[A2_2]
  end
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = Utils
    L11_2 = L11_2.GetCatalogEntryByModel
    L12_2 = L10_2.model
    L11_2 = L11_2(L12_2)
    L12_2 = L11_2 or L12_2
    if L11_2 then
      L12_2 = L11_2.temperature
    end
    if "heat" == L12_2 or "cool" == L12_2 then
      L13_2 = L3_2[L12_2]
      L14_2 = L3_2[L12_2]
      L14_2 = #L14_2
      L14_2 = L14_2 + 1
      L15_2 = {}
      L16_2 = L10_2.id
      L15_2.id = L16_2
      L16_2 = A2_2
      L17_2 = ":"
      L18_2 = tostring
      L19_2 = L10_2.id
      L18_2 = L18_2(L19_2)
      L16_2 = L16_2 .. L17_2 .. L18_2
      L15_2.key = L16_2
      L16_2 = L10_2.id
      L16_2 = L4_2[L16_2]
      if not L16_2 then
        L16_2 = L11_2.label
        if not L16_2 then
          L16_2 = tostring
          L17_2 = L10_2.model
          L16_2 = L16_2(L17_2)
        end
      end
      L15_2.label = L16_2
      L15_2.powered = false
      L13_2[L14_2] = L15_2
    end
  end
  L5_2 = L16_1
  L6_2 = A0_2
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  return L3_2
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.powered
    if L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = A0_2 or L7_2
    if A0_2 then
      L7_2 = A0_2[L6_2]
    end
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Temperature
  L3_2 = L3_2.controlPermission
  if "use" == L3_2 then
    L3_2 = L9_1
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = L3_2[A0_2]
    end
    L3_2 = true == L3_2
    return L3_2
  end
  L3_2 = Furniture
  L3_2 = L3_2.CanEditField
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = Config
  L6_2 = L6_2.Temperature
  L6_2 = L6_2.controlPermission
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = true == L3_2
  return L3_2
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.owner
    L4_2 = A1_2.owner
    if L3_2 == L4_2 then
      return L2_2
    end
  end
  L3_2 = {}
  L4_2 = A1_2.owner
  L3_2.owner = L4_2
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L3_2.lastFlush = L4_2
  L2_2 = L3_2
  L3_2 = L1_1
  L3_2[A0_2] = L2_2
  return L2_2
end
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L21_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[A2_2]
  if L4_2 then
    L5_2 = L4_2
    L6_2 = L3_2
    return L5_2, L6_2
  end
  L5_2 = L12_1
  L6_2 = A0_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L6_2.current = L5_2
  L6_2.outdoor = L5_2
  L6_2.running = "off"
  L6_2.usage = 0.0
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L6_2.lastUpdate = L7_2
  L6_2.lastPush = 0
  L7_2 = {}
  L8_2 = {}
  L7_2.heat = L8_2
  L8_2 = {}
  L7_2.cool = L8_2
  L6_2.devices = L7_2
  L7_2 = {}
  L6_2.active = L7_2
  L4_2 = L6_2
  L3_2[A2_2] = L4_2
  L6_2 = L4_2
  L7_2 = L3_2
  return L6_2, L7_2
end
function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 < A1_2 then
    L3_2 = math
    L3_2 = L3_2.min
    L4_2 = A1_2
    L5_2 = A0_2 + A2_2
    return L3_2(L4_2, L5_2)
  end
  if A1_2 < A0_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = A1_2
    L5_2 = A0_2 - A2_2
    return L3_2(L4_2, L5_2)
  end
  return A0_2
end
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = Config
  L3_2 = L3_2.Electricity
  if L3_2 then
    L3_2 = L3_2.mode
  end
  L3_2 = "advanced" == L3_2
  return L3_2
end
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = Config
  L3_2 = L3_2.Temperature
  L3_2 = L3_2.devices
  if L3_2 then
    L3_2 = L3_2[A2_2]
  end
  if L3_2 then
    L4_2 = tonumber
    L5_2 = L3_2.maxDevices
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = 0
    end
    if not (L4_2 <= 0) then
      L4_2 = tonumber
      L5_2 = L3_2.ratePerDevice
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = 0
      end
      if not (L4_2 <= 0) then
        goto lbl_27
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_27::
  L4_2 = ipairs
  L5_2 = A1_2[A2_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.powered
    if not L10_2 then
      L10_2 = L24_1
      L11_2 = A0_2
      L12_2 = A2_2
      L13_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if not L10_2 then
        goto lbl_47
      end
    end
    L10_2 = true
    do return L10_2 end
    ::lbl_47::
  end
  L4_2 = false
  return L4_2
end
function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.mode
  if "auto" ~= L3_2 then
    L3_2 = "off"
    return L3_2
  end
  L3_2 = A0_2.current
  L4_2 = A1_2.target
  if L3_2 < L4_2 then
    L3_2 = L25_1
    L4_2 = A0_2
    L5_2 = A2_2
    L6_2 = "heat"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L3_2 = "heat"
      return L3_2
    end
  end
  L3_2 = A0_2.current
  L4_2 = A1_2.target
  if L3_2 > L4_2 then
    L3_2 = L25_1
    L4_2 = A0_2
    L5_2 = A2_2
    L6_2 = "cool"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L3_2 = "cool"
      return L3_2
    end
  end
  L3_2 = "off"
  return L3_2
end
function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = Config
  L3_2 = L3_2.Temperature
  L3_2 = L3_2.devices
  if L3_2 then
    L3_2 = L3_2[A2_2]
  end
  L4_2 = tonumber
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.maxDevices
  end
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = A1_2.devices
  L5_2 = L5_2[A2_2]
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = ipairs
  L10_2 = L5_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    if L4_2 > L7_2 then
      L15_2 = L24_1
      L16_2 = A1_2
      L17_2 = A2_2
      L18_2 = L14_2
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      if L15_2 then
        L15_2 = L14_2.id
        L6_2[L15_2] = true
        L7_2 = L7_2 + 1
        L15_2 = L14_2.powered
        if L15_2 then
          L8_2 = L8_2 + 1
        end
      end
    end
  end
  L9_2 = ipairs
  L10_2 = L5_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    if L4_2 > L7_2 then
      L15_2 = L14_2.powered
      if L15_2 then
        L15_2 = L14_2.id
        L15_2 = L6_2[L15_2]
        if not L15_2 then
          L15_2 = L14_2.id
          L6_2[L15_2] = true
          L7_2 = L7_2 + 1
          L8_2 = L8_2 + 1
        end
      end
    end
  end
  L9_2 = Electricity
  if L9_2 then
    L9_2 = L19_1
    L10_2 = A1_2.active
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = Electricity
      L9_2 = L9_2.Invalidate
      L10_2 = A0_2
      L9_2(L10_2)
    end
  end
  A1_2.running = A2_2
  A1_2.active = L6_2
  L9_2 = L3_2
  L10_2 = L8_2
  return L9_2, L10_2
end
function L28_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    return
  end
  L2_2 = Electricity
  if L2_2 then
    L2_2 = next
    L3_2 = A1_2.active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = Electricity
      L2_2 = L2_2.Invalidate
      L3_2 = A0_2
      L2_2(L3_2)
    end
  end
  A1_2.running = "off"
  L2_2 = {}
  A1_2.active = L2_2
end
function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L10_1
  L7_2 = A0_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    return
  end
  L6_2 = L6_1
  L7_2 = A2_2.lastUpdate
  L7_2 = A3_2 - L7_2
  L7_2 = L7_2 / 60000
  L8_2 = 0.0
  L9_2 = Config
  L9_2 = L9_2.Temperature
  L9_2 = L9_2.maxElapsedMinutes
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A2_2.lastUpdate = A3_2
  L7_2 = L12_1
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  A2_2.outdoor = L7_2
  if A4_2 then
    L7_2 = L17_1
    L8_2 = A0_2
    L9_2 = L5_2
    L10_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    A2_2.devices = L7_2
  else
    L7_2 = L16_1
    L8_2 = A0_2
    L9_2 = A2_2.devices
    L7_2(L8_2, L9_2)
  end
  if L6_2 <= 0 then
    return
  end
  L7_2 = L23_1
  L8_2 = A2_2.current
  L9_2 = A2_2.outdoor
  L10_2 = Config
  L10_2 = L10_2.Temperature
  L10_2 = L10_2.ambientRate
  L10_2 = L10_2 * L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  A2_2.current = L7_2
  L7_2 = L15_1
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L26_1
  L9_2 = A2_2
  L10_2 = L7_2
  L11_2 = A2_2.devices
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = L27_1
  L10_2 = A0_2
  L11_2 = A2_2
  L12_2 = L8_2
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
  if "off" ~= L8_2 and L10_2 > 0 then
    L11_2 = L9_2.ratePerDevice
    L11_2 = L11_2 * L10_2
    L11_2 = L11_2 * L6_2
    L12_2 = math
    L12_2 = L12_2.min
    L13_2 = math
    L13_2 = L13_2.abs
    L14_2 = L7_2.target
    L15_2 = A2_2.current
    L14_2 = L14_2 - L15_2
    L13_2 = L13_2(L14_2)
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    if "heat" == L8_2 then
      L13_2 = A2_2.current
      L13_2 = L13_2 + L12_2
      A2_2.current = L13_2
    else
      L13_2 = A2_2.current
      L13_2 = L13_2 - L12_2
      A2_2.current = L13_2
    end
    if L11_2 > 0 then
      L13_2 = Config
      L13_2 = L13_2.Electricity
      if L13_2 then
        L13_2 = L13_2.mode
      end
      if "advanced" ~= L13_2 then
        L13_2 = Generator
        if L13_2 then
          L13_2 = Generator
          L13_2 = L13_2.IsPowered
          L14_2 = A0_2
          L13_2 = L13_2(L14_2)
          if L13_2 then
            goto lbl_131
          end
        end
        L13_2 = A2_2.usage
        L14_2 = L9_2.costPerMinutePerDevice
        L14_2 = L14_2 * L10_2
        L14_2 = L14_2 * L6_2
        L15_2 = L12_2 / L11_2
        L14_2 = L14_2 * L15_2
        L13_2 = L13_2 + L14_2
        A2_2.usage = L13_2
      end
    end
  end
  ::lbl_131::
  L11_2 = L6_1
  L12_2 = A2_2.current
  L13_2 = -50.0
  L14_2 = 60.0
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  A2_2.current = L11_2
end
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A1_2.flushing
  if L3_2 then
    return
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  if not A2_2 then
    L4_2 = A1_2.lastFlush
    L4_2 = L3_2 - L4_2
    L5_2 = Config
    L5_2 = L5_2.Temperature
    L5_2 = L5_2.usageFlushInterval
    if L4_2 < L5_2 then
      return
    end
  end
  L4_2 = Config
  L4_2 = L4_2.Electricity
  if L4_2 then
    L4_2 = L4_2.mode
  end
  if "advanced" == L4_2 then
    L4_2 = ipairs
    L5_2 = L0_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = A1_2[L9_2]
      if L10_2 then
        L10_2 = A1_2[L9_2]
        L10_2.usage = 0.0
      end
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    A1_2.lastFlush = L4_2
    return
  end
  L4_2 = 0
  L5_2 = ipairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = A1_2[L10_2]
    if L11_2 then
      L11_2 = L11_2.usage
    end
    if not L11_2 then
      L11_2 = 0.0
    end
    L4_2 = L4_2 + L11_2
  end
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2
  if L4_2 > 0 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.owner
      L7_2 = A1_2.owner
      if L6_2 == L7_2 then
        goto lbl_88
      end
    end
    L6_2 = ipairs
    L7_2 = L0_1
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = A1_2[L11_2]
      if L12_2 then
        L12_2 = A1_2[L11_2]
        L12_2.usage = 0.0
      end
    end
    goto lbl_140
    ::lbl_88::
    L6_2 = L4_2
    L7_2 = {}
    L8_2 = ipairs
    L9_2 = L0_1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = A1_2[L13_2]
      if L14_2 and L6_2 > 0 then
        L15_2 = math
        L15_2 = L15_2.min
        L16_2 = L14_2.usage
        L17_2 = L6_2
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = L14_2.usage
        L16_2 = L16_2 - L15_2
        L14_2.usage = L16_2
        L7_2[L13_2] = L15_2
        L6_2 = L6_2 - L15_2
      end
    end
    A1_2.flushing = true
    L8_2 = pcall
    L9_2 = Utilities
    L9_2 = L9_2.AddElectricityUse
    L10_2 = A0_2
    L11_2 = L4_2
    L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2)
    if not L8_2 or not L9_2 then
      L10_2 = pairs
      L11_2 = L7_2
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        L16_2 = A1_2[L14_2]
        L17_2 = A1_2[L14_2]
        L17_2 = L17_2.usage
        L17_2 = L17_2 + L15_2
        L16_2.usage = L17_2
      end
    end
    A1_2.flushing = nil
  end
  ::lbl_140::
  A1_2.lastFlush = L3_2
end
function L31_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Temperature
  L1_2 = L1_2.coldThreshold
  if A0_2 < L1_2 then
    L1_2 = "cold"
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Temperature
  L1_2 = L1_2.hotThreshold
  if A0_2 > L1_2 then
    L1_2 = "hot"
    return L1_2
  end
  L1_2 = "comfortable"
  return L1_2
end
L32_1 = Temperature
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L4_2 = L8_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 or not A2_2 then
    A2_2 = "house"
  end
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L10_1
  L6_2 = A1_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = {}
    L5_2.enabled = false
    L5_2.propertyId = A1_2
    L5_2.area = A2_2
    return L5_2
  end
  L5_2 = L22_1
  L6_2 = A1_2
  L7_2 = L4_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if A3_2 then
    L6_2 = L29_1
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = L5_2
    L10_2 = GetGameTimer
    L10_2 = L10_2()
    L11_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L6_2 = L15_1
  L7_2 = A1_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  if not A3_2 then
    L7_2 = L17_1
    L8_2 = A1_2
    L9_2 = L4_2
    L10_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2.devices = L7_2
  end
  L7_2 = L5_2.devices
  L8_2 = L26_1
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = L27_1
  L10_2 = A1_2
  L11_2 = L5_2
  L12_2 = L8_2
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
  L11_2 = Config
  L11_2 = L11_2.Bills
  L11_2 = L11_2.enable
  if L11_2 then
    L11_2 = Config
    L11_2 = L11_2.Bills
    L11_2 = L11_2.services
    if L11_2 then
      L11_2 = L11_2.electricity
      if L11_2 then
        L11_2 = L11_2.enable
      end
    end
    if L11_2 then
      L11_2 = Utilities
      L11_2 = L11_2.IsBilled
      L12_2 = A1_2
      L11_2 = L11_2(L12_2)
    end
  end
  L12_2 = {}
  L13_2 = ipairs
  L14_2 = {}
  L15_2 = "heat"
  L16_2 = "cool"
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
  for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
    L19_2 = ipairs
    L20_2 = L7_2[L18_2]
    L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
    for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
      L25_2 = #L12_2
      L25_2 = L25_2 + 1
      L26_2 = {}
      L27_2 = L24_2.key
      L26_2.id = L27_2
      L27_2 = L24_2.label
      L26_2.label = L27_2
      L26_2.mode = L18_2
      L27_2 = L24_2.powered
      L26_2.powered = L27_2
      L27_2 = L5_2.active
      L28_2 = L24_2.id
      L27_2 = L27_2[L28_2]
      L27_2 = true == L27_2
      L26_2.active = L27_2
      L12_2[L25_2] = L26_2
    end
  end
  L13_2 = table
  L13_2 = L13_2.sort
  L14_2 = L12_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.mode
    L3_3 = A1_3.mode
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.mode
      L2_3 = "heat" == L2_3
      return L2_3
    end
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
  L13_2(L14_2, L15_2)
  L13_2 = {}
  L13_2.enabled = true
  L13_2.propertyId = A1_2
  L13_2.area = A2_2
  L14_2 = L7_1
  L15_2 = L5_2.current
  L14_2 = L14_2(L15_2)
  L13_2.current = L14_2
  L14_2 = L7_1
  L15_2 = L5_2.outdoor
  L14_2 = L14_2(L15_2)
  L13_2.outdoor = L14_2
  L14_2 = L6_2.target
  L13_2.target = L14_2
  L14_2 = L6_2.mode
  L13_2.mode = L14_2
  L13_2.running = L8_2
  L14_2 = L18_1
  L15_2 = L7_2.heat
  L14_2 = L14_2(L15_2)
  L15_2 = L18_1
  L16_2 = L7_2.cool
  L15_2 = L15_2(L16_2)
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 > 0
  L13_2.powered = L14_2
  L14_2 = L20_1
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = A2_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2.canControl = L14_2
  L14_2 = L7_2.heat
  L14_2 = #L14_2
  L14_2 = L14_2 > 0
  L13_2.canHeat = L14_2
  L14_2 = L7_2.cool
  L14_2 = #L14_2
  L14_2 = L14_2 > 0
  L13_2.canCool = L14_2
  L14_2 = L7_2.heat
  L14_2 = #L14_2
  L13_2.heaterCount = L14_2
  L14_2 = L7_2.cool
  L14_2 = #L14_2
  L13_2.acCount = L14_2
  L13_2.devices = L12_2
  L14_2 = Config
  L14_2 = L14_2.Temperature
  L14_2 = L14_2.minTarget
  L13_2.minTarget = L14_2
  L14_2 = Config
  L14_2 = L14_2.Temperature
  L14_2 = L14_2.maxTarget
  L13_2.maxTarget = L14_2
  L14_2 = Config
  L14_2 = L14_2.Temperature
  L14_2 = L14_2.coldThreshold
  L13_2.coldThreshold = L14_2
  L14_2 = Config
  L14_2 = L14_2.Temperature
  L14_2 = L14_2.hotThreshold
  L13_2.hotThreshold = L14_2
  L14_2 = L31_1
  L15_2 = L5_2.current
  L14_2 = L14_2(L15_2)
  L13_2.state = L14_2
  L14_2 = Config
  L14_2 = L14_2.Electricity
  if L14_2 then
    L14_2 = L14_2.mode
  end
  if "advanced" == L14_2 then
    L14_2 = tonumber
    L15_2 = L9_2 or L15_2
    if L9_2 then
      L15_2 = L9_2.wattsPerDevice
    end
    L14_2 = L14_2(L15_2)
    if not L14_2 then
      L14_2 = tonumber
      L15_2 = Config
      L15_2 = L15_2.Electricity
      if L15_2 then
        L15_2 = L15_2.furnitureWatts
        if L15_2 then
          L15_2 = L15_2[L8_2]
        end
      end
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = 0
      end
    end
    L14_2 = L14_2 * L10_2
    L14_2 = L14_2 / 1000
    L15_2 = Config
    L15_2 = L15_2.Electricity
    L15_2 = L15_2.pricePerKwh
    L14_2 = L14_2 * L15_2
    L14_2 = L14_2 / 60
    if L14_2 then
      goto lbl_257
    end
  end
  if L11_2 and L9_2 then
    L14_2 = L9_2.costPerMinutePerDevice
    L14_2 = L14_2 * L10_2
    if L14_2 then
      goto lbl_257
    end
  end
  L14_2 = 0
  ::lbl_257::
  L13_2.costPerMinute = L14_2
  if L9_2 then
    L14_2 = L9_2.ratePerDevice
    L14_2 = L14_2 * L10_2
    if L14_2 then
      goto lbl_266
    end
  end
  L14_2 = 0
  ::lbl_266::
  L13_2.ratePerMinute = L14_2
  return L13_2
end
L32_1.GetPanel = L33_1
L32_1 = Temperature
function L33_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = L3_2.active
      if L3_2 then
        L3_2 = L3_2[A2_2]
      end
    end
  end
  L3_2 = true == L3_2
  return L3_2
end
L32_1.IsDeviceActive = L33_1
function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:temperatureUpdated"
  L5_2 = A0_2
  L6_2 = Temperature
  L6_2 = L6_2.GetPanel
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = false
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = L9_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = L32_1
    L8_2 = L6_2
    L9_2 = A0_2
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L34_1 = Temperature
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = L3_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2[A0_2]
      if L13_2 then
        L13_2 = true
        return L13_2
      end
    end
  end
  L1_2 = ipairs
  L2_2 = {}
  L3_2 = Main
  L3_2 = L3_2.GetAllHousePlayers
  L3_2 = L3_2()
  L4_2 = Main
  L4_2 = L4_2.GetAllGaragePlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2()
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2 or L13_2
      if L12_2 then
        L13_2 = L12_2[A0_2]
      end
      if L13_2 then
        L13_2 = true
        return L13_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L34_1.IsPlayerInside = L35_1
L34_1 = Temperature
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = next
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
L34_1.HasPropertyOccupants = L35_1
L34_1 = Temperature
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L5_1
  L4_2 = L5_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A0_2] = L4_2
  L3_2 = L5_1
  L3_2 = L3_2[A0_2]
  L4_2 = L5_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A1_2] = L4_2
  L3_2 = L5_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2[A2_2]
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + 1
  L4_2 = L5_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L4_2[A2_2] = L3_2
  return L3_2
end
L34_1.BeginAreaEntry = L35_1
L34_1 = Temperature
function L35_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = L5_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = L4_2[A1_2]
    if L4_2 then
      L4_2 = L4_2[A2_2]
    end
  end
  L4_2 = L4_2 == A3_2
  return L4_2
end
L34_1.IsAreaEntryPending = L35_1
L34_1 = Temperature
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L5_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L3_2[A1_2]
  end
  if not L3_2 then
    return
  end
  L3_2 = L5_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L4_2 = L5_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2[A2_2]
  if not L4_2 then
    L4_2 = 0
  end
  L4_2 = L4_2 + 1
  L3_2[A2_2] = L4_2
end
L34_1.CancelAreaEntry = L35_1
L34_1 = Temperature
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetTimeout
  L3_2 = 0
  function L4_2()
    local L0_3, L1_3
    L0_3 = GetPlayerName
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = Main
      L0_3 = L0_3.GetPropertyAccess
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      L1_3 = A1_2
      if L0_3 == L1_3 then
        L0_3 = Temperature
        L0_3 = L0_3.IsPlayerInside
        L1_3 = A0_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = Main
          L0_3 = L0_3.ClearPropertyAccess
          L1_3 = A0_2
          L0_3(L1_3)
        end
      end
    end
  end
  L2_2(L3_2, L4_2)
end
L34_1.ClearPropertyAccessWhenOutside = L35_1
L34_1 = RegisterNetEvent
L35_1 = "tk_housing:enterTemperatureArea"
function L36_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Temperature
  L4_2 = L4_2.enable
  if L4_2 then
    L4_2 = type
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = L8_1
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = L4_2.interior
    if L5_2 then
      L5_2 = L5_2[A1_2]
    end
  end
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = L5_2.points
  end
  if not L6_2 then
    return
  end
  L6_2 = GetPlayerPed
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if 0 ~= L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.IsPointInside3D
    L8_2 = GetEntityCoords
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2.points
    L10_2 = L5_2.height
    L11_2 = 5.0
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if L7_2 then
      goto lbl_51
    end
  end
  do return end
  ::lbl_51::
  L7_2 = Properties
  L7_2 = L7_2.CanAccessProperty
  L8_2 = GetPlayerFromId
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = L3_2
  L10_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    return
  end
  L7_2 = Temperature
  L7_2 = L7_2.IsPlayerInside
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = Temperature
  L8_2 = L8_2.BeginAreaEntry
  L9_2 = L3_2
  L10_2 = A0_2
  L11_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = Main
  L9_2 = L9_2.LoadPropertyData
  L10_2 = A0_2
  L9_2(L10_2)
  L9_2 = Temperature
  L9_2 = L9_2.IsAreaEntryPending
  L10_2 = L3_2
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  if not L9_2 then
    return
  end
  L9_2 = GetPlayerPed
  L10_2 = L3_2
  L9_2 = L9_2(L10_2)
  L6_2 = L9_2
  if 0 ~= L6_2 then
    L9_2 = Utils
    L9_2 = L9_2.IsPointInside3D
    L10_2 = GetEntityCoords
    L11_2 = L6_2
    L10_2 = L10_2(L11_2)
    L11_2 = L5_2.points
    L12_2 = L5_2.height
    L13_2 = 5.0
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if L9_2 then
      goto lbl_104
    end
  end
  do return end
  ::lbl_104::
  L9_2 = Temperature
  L9_2 = L9_2.OnEnter
  L10_2 = L3_2
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = false
  L14_2 = A2_2
  L15_2 = L7_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "tk_housing:leaveTemperatureArea"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = source
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = L8_1
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L3_2 = Temperature
  L3_2 = L3_2.CancelAreaEntry
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Temperature
  L3_2 = L3_2.OnLeave
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Main
  L3_2 = L3_2.ScheduleEviction
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Temperature
  L3_2 = L3_2.ClearPropertyAccessWhenOutside
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterCallback
L35_1 = "tk_housing:getTemperature"
function L36_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L8_1
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 or not A3_2 then
    A3_2 = "house"
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A2_2
  L4_2 = "number" == L4_2 and L4_2
  if L4_2 then
    L5_2 = L9_1
    L6_2 = A2_2
    L7_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = L5_2[A0_2]
    end
    if L5_2 then
      goto lbl_40
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.enabled = false
  L6_2.propertyId = A2_2
  L6_2.area = A3_2
  L5_2(L6_2)
  do return end
  ::lbl_40::
  L5_2 = A1_2
  L6_2 = Temperature
  L6_2 = L6_2.GetPanel
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = true
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterCallback
L35_1 = "tk_housing:setTemperature"
function L36_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L8_1
  L6_2 = A4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 or not A4_2 then
    A4_2 = "house"
  end
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A2_2
  L5_2 = "number" == L5_2 and L5_2
  L6_2 = L10_1
  L7_2 = A2_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = L9_1
    L7_2 = A2_2
    L8_2 = A4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L6_2[A0_2]
    end
    if L6_2 then
      goto lbl_46
    end
  end
  L6_2 = A1_2
  L7_2 = {}
  L7_2.ok = false
  L8_2 = _U
  L9_2 = "temperature_unavailable"
  L8_2 = L8_2(L9_2)
  L7_2.message = L8_2
  L6_2(L7_2)
  do return end
  ::lbl_46::
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L7_2 = L4_1
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = L4_1
    L7_2 = L7_2[A0_2]
    L7_2 = L6_2 - L7_2
    L8_2 = 500
    if L7_2 < L8_2 then
      L7_2 = A1_2
      L8_2 = {}
      L8_2.ok = false
      L9_2 = _U
      L10_2 = "temperature_invalid"
      L9_2 = L9_2(L10_2)
      L8_2.message = L9_2
      L7_2(L8_2)
      return
    end
  end
  L7_2 = L4_1
  L7_2[A0_2] = L6_2
  L7_2 = L20_1
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "temperature_read_only"
    L9_2 = L9_2(L10_2)
    L8_2.message = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = type
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if "table" ~= L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L9_2 = _U
    L10_2 = "temperature_invalid"
    L9_2 = L9_2(L10_2)
    L8_2.message = L9_2
    L7_2(L8_2)
    return
  end
  L7_2 = A3_2.mode
  L8_2 = tonumber
  L9_2 = A3_2.target
  L8_2 = L8_2(L9_2)
  if "heat" == L7_2 or "cool" == L7_2 then
    L7_2 = "auto"
  end
  if ("off" == L7_2 or "auto" == L7_2) and L8_2 and L8_2 == L8_2 then
    L9_2 = Config
    L9_2 = L9_2.Temperature
    L9_2 = L9_2.minTarget
    if not (L8_2 < L9_2) then
      L9_2 = Config
      L9_2 = L9_2.Temperature
      L9_2 = L9_2.maxTarget
      if not (L8_2 > L9_2) then
        goto lbl_140
      end
    end
  end
  L9_2 = A1_2
  L10_2 = {}
  L10_2.ok = false
  L11_2 = _U
  L12_2 = "temperature_invalid"
  L11_2 = L11_2(L12_2)
  L10_2.message = L11_2
  L9_2(L10_2)
  do return end
  ::lbl_140::
  L9_2 = L22_1
  L10_2 = A2_2
  L11_2 = L5_2
  L12_2 = A4_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = L29_1
  L11_2 = A2_2
  L12_2 = A4_2
  L13_2 = L9_2
  L14_2 = L6_2
  L15_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = Ambience
  L10_2 = L10_2.Save
  L11_2 = A2_2
  L12_2 = {}
  L13_2 = L14_1
  L14_2 = A4_2
  L13_2 = L13_2(L14_2)
  L14_2 = {}
  L14_2.mode = L7_2
  L14_2.target = L8_2
  L12_2[L13_2] = L14_2
  L10_2(L11_2, L12_2)
  L10_2 = Temperature
  L10_2 = L10_2.GetPanel
  L11_2 = A0_2
  L12_2 = A2_2
  L13_2 = A4_2
  L14_2 = false
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = A1_2
  L12_2 = {}
  L12_2.ok = true
  L12_2.data = L10_2
  L11_2(L12_2)
  L11_2 = L33_1
  L12_2 = A2_2
  L13_2 = A4_2
  L11_2(L12_2, L13_2)
end
L34_1(L35_1, L36_1)
L34_1 = Temperature
function L35_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A3_2 then
    return
  end
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = L10_1
  L8_2 = A1_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L7_2 = L8_1
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  if not A5_2 then
    L7_2 = L13_1
    L8_2 = A1_2
    L9_2 = A4_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = L3_1
  L8_2 = L3_1
  L8_2 = L8_2[A1_2]
  if not L8_2 then
    L8_2 = {}
  end
  L7_2[A1_2] = L8_2
  L7_2 = L3_1
  L7_2 = L7_2[A1_2]
  L8_2 = L3_1
  L8_2 = L8_2[A1_2]
  L8_2 = L8_2[A2_2]
  if not L8_2 then
    L8_2 = {}
  end
  L7_2[A2_2] = L8_2
  L7_2 = L3_1
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2[A2_2]
  L7_2[A0_2] = true
  L7_2 = L22_1
  L8_2 = A1_2
  L9_2 = L6_2
  L10_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  L9_2 = 0
  L10_2 = pairs
  L11_2 = L9_1
  L12_2 = A1_2
  L13_2 = A2_2
  L11_2 = L11_2(L12_2, L13_2)
  if not L11_2 then
    L11_2 = {}
  end
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2 in L10_2, L11_2, L12_2, L13_2 do
    L9_2 = L9_2 + 1
  end
  L10_2 = Config
  L10_2 = L10_2.Temperature
  L10_2 = L10_2.occupiedOnly
  if L10_2 and 1 == L9_2 then
    L7_2.lastUpdate = L8_2
  end
  L10_2 = L29_1
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = L7_2
  L14_2 = L8_2
  L15_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L32_1
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L10_2(L11_2, L12_2, L13_2)
end
L34_1.OnEnter = L35_1
L34_1 = Temperature
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L3_1
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = L3_2[A2_2]
    if L3_2 then
      L3_2 = L3_2[A0_2]
    end
  end
  if not L3_2 then
    return
  end
  L3_2 = L3_1
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2[A2_2]
  L3_2[A0_2] = nil
  L3_2 = L1_1
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2[A2_2]
  end
  if L4_2 then
    L5_2 = next
    L6_2 = L9_1
    L7_2 = A1_2
    L8_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = {}
    end
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      goto lbl_36
    end
  end
  do return end
  ::lbl_36::
  L5_2 = L30_1
  L6_2 = A1_2
  L7_2 = L3_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Config
  L5_2 = L5_2.Temperature
  L5_2 = L5_2.occupiedOnly
  if L5_2 then
    L5_2 = L28_1
    L6_2 = A1_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L4_2.lastUpdate = L5_2
  end
end
L34_1.OnLeave = L35_1
L34_1 = Temperature
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L28_1
    L8_2 = A0_2
    L9_2 = L1_1
    L9_2 = L9_2[A0_2]
    if L9_2 then
      L9_2 = L9_2[L6_2]
    end
    L7_2(L8_2, L9_2)
  end
  L1_2 = L1_1
  L1_2[A0_2] = nil
  L1_2 = L3_1
  L1_2[A0_2] = nil
end
L34_1.ResetProperty = L35_1
L34_1 = Temperature
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L30_1
    L3_2 = A0_2
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L1_1
  L2_2[A0_2] = nil
  L2_2 = L3_1
  L2_2[A0_2] = nil
end
L34_1.ReleaseProperty = L35_1
L34_1 = AddEventHandler
L35_1 = "playerDropped"
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = source
  L1_2 = L4_1
  L1_2[L0_2] = nil
  L1_2 = L5_1
  L1_2[L0_2] = nil
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L3_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2[L0_2]
      if L14_2 then
        L13_2[L0_2] = nil
        L1_2[L6_2] = true
      end
    end
  end
  L2_2 = SetTimeout
  L3_2 = 0
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L0_3 = pairs
    L1_3 = L1_1
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = true
      L7_3 = ipairs
      L8_3 = L0_1
      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
      for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
        L13_3 = L5_3[L12_3]
        if L13_3 then
          L14_3 = next
          L15_3 = L9_1
          L16_3 = L4_3
          L17_3 = L12_3
          L15_3 = L15_3(L16_3, L17_3)
          if not L15_3 then
            L15_3 = {}
          end
          L14_3 = L14_3(L15_3)
          if L14_3 then
            L6_3 = false
        end
        elseif L13_3 then
          L14_3 = Config
          L14_3 = L14_3.Temperature
          L14_3 = L14_3.occupiedOnly
          if L14_3 then
            L14_3 = L28_1
            L15_3 = L4_3
            L16_3 = L13_3
            L14_3(L15_3, L16_3)
            L14_3 = GetGameTimer
            L14_3 = L14_3()
            L13_3.lastUpdate = L14_3
          end
        end
      end
      if L6_3 then
        L7_3 = L30_1
        L8_3 = L4_3
        L9_3 = L5_3
        L10_3 = true
        L7_3(L8_3, L9_3, L10_3)
      end
    end
    L0_3 = pairs
    L1_3 = L1_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3 in L0_3, L1_3, L2_3, L3_3 do
      L5_3 = Main
      L5_3 = L5_3.ScheduleEviction
      L6_3 = L4_3
      L5_3(L6_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L34_1(L35_1, L36_1)
L34_1 = AddEventHandler
L35_1 = "onResourceStop"
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L30_1
    L8_2 = L5_2
    L9_2 = L6_2
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = ipairs
    L8_2 = L0_1
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L28_1
      L14_2 = L5_2
      L15_2 = L6_2[L12_2]
      L13_2(L14_2, L15_2)
    end
  end
end
L34_1(L35_1, L36_1)
L34_1 = CreateThread
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  repeat
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = Main
    L0_2 = L0_2.ready
  until L0_2
  L0_2 = Config
  L0_2 = L0_2.Temperature
  L0_2 = L0_2.enable
  if not L0_2 then
    return
  end
  while true do
    L0_2 = GetGameTimer
    L0_2 = L0_2()
    L1_2 = pairs
    L2_2 = L1_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = Main
      L7_2 = L7_2.GetProperty
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = L10_1
      L9_2 = L5_2
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if not L8_2 then
        L8_2 = ipairs
        L9_2 = L0_1
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L28_1
          L15_2 = L5_2
          L16_2 = L6_2[L13_2]
          L14_2(L15_2, L16_2)
          L14_2 = L33_1
          L15_2 = L5_2
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
        end
        L8_2 = L1_1
        L8_2[L5_2] = nil
      else
        L8_2 = L7_2.owner
        L9_2 = L6_2.owner
        if L8_2 ~= L9_2 then
          L8_2 = ipairs
          L9_2 = L0_1
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
            L14_2 = L28_1
            L15_2 = L5_2
            L16_2 = L6_2[L13_2]
            L14_2(L15_2, L16_2)
          end
          L8_2 = L21_1
          L9_2 = L5_2
          L10_2 = L7_2
          L8_2 = L8_2(L9_2, L10_2)
          L6_2 = L8_2
          L8_2 = ipairs
          L9_2 = L0_1
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
            L14_2 = L33_1
            L15_2 = L5_2
            L16_2 = L13_2
            L14_2(L15_2, L16_2)
          end
        end
        L8_2 = ipairs
        L9_2 = L0_1
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L6_2[L13_2]
          if L14_2 then
            L15_2 = next
            L16_2 = L9_1
            L17_2 = L5_2
            L18_2 = L13_2
            L16_2 = L16_2(L17_2, L18_2)
            if not L16_2 then
              L16_2 = {}
            end
            L15_2 = L15_2(L16_2)
            L15_2 = nil ~= L15_2
            if not L15_2 then
              L16_2 = Config
              L16_2 = L16_2.Temperature
              L16_2 = L16_2.occupiedOnly
              if L16_2 then
                goto lbl_129
              end
            end
            L16_2 = L29_1
            L17_2 = L5_2
            L18_2 = L13_2
            L19_2 = L14_2
            L20_2 = L0_2
            L21_2 = L15_2
            L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
            if L15_2 then
              L16_2 = L14_2.lastPush
              L16_2 = L0_2 - L16_2
              L17_2 = Config
              L17_2 = L17_2.Temperature
              L17_2 = L17_2.pushInterval
              if L16_2 >= L17_2 then
                L14_2.lastPush = L0_2
                L16_2 = L33_1
                L17_2 = L5_2
                L18_2 = L13_2
                L16_2(L17_2, L18_2)
              end
            end
          end
          ::lbl_129::
        end
        L8_2 = L30_1
        L9_2 = L5_2
        L10_2 = L6_2
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
      end
    end
    L1_2 = Wait
    L2_2 = Config
    L2_2 = L2_2.Temperature
    L2_2 = L2_2.updateInterval
    L1_2(L2_2)
  end
end
L34_1(L35_1)
