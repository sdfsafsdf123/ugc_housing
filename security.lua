local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
Security = L0_1
L0_1 = Config
L0_1 = L0_1.Security
if L0_1 then
  L0_1 = L0_1.alarms
  if L0_1 then
    L0_1 = L0_1.dispatch
    if L0_1 then
      L0_1 = L0_1.enable
    end
  end
end
if L0_1 then
  L0_1 = Config
  L0_1 = L0_1.Dispatch
  if "default" == L0_1 then
    L0_1 = Utils
    L0_1 = L0_1.Warn
    L1_1 = "Config.Security.alarms.dispatch.enable is on but Config.Dispatch is 'default'. Set Config.Dispatch in config/config.lua or fill in ReportBreakIn in server/main_editable.lua, or players will pay for a dispatch link that reports nowhere"
    L0_1(L1_1)
  end
end
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = {}
  L1_2.installed = false
  L1_2.tier = 0
  L1_2.armed = false
  L1_2.siren = true
  L1_2.keyholders = true
  L1_2.dispatchInstalled = false
  L1_2.dispatch = true
  L0_2.alarm = L1_2
  L1_2 = {}
  L1_2.installed = false
  L0_2.camera = L1_2
  L1_2 = {}
  L1_2.installed = false
  L1_2.tier = 0
  L0_2.lock = L1_2
  L1_2 = {}
  L1_2.triggered = false
  L1_2.lastTriggered = nil
  L1_2.lastType = nil
  L1_2.lastBy = nil
  L2_2 = {}
  L1_2.recentAlarms = L2_2
  L0_2.state = L1_2
  return L0_2
end
L1_1 = Security
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = type
  L3_2 = L1_2.security
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2()
    L1_2.security = L2_2
  end
  L2_2 = type
  L3_2 = L1_2.security
  L3_2 = L3_2.alarms
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = type
    L3_2 = L1_2.security
    L3_2 = L3_2.alarm
    L2_2 = L2_2(L3_2)
    if "table" ~= L2_2 then
      L2_2 = L1_2.security
      L2_2 = L2_2.alarms
      L3_2 = false
      L4_2 = false
      L5_2 = 0
      L6_2 = pairs
      L7_2 = L2_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = type
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if "table" == L12_2 then
          L12_2 = L11_2.armed
          if L12_2 then
            L4_2 = true
          end
          L12_2 = L11_2.installed
          if L12_2 then
            L3_2 = true
            L12_2 = L11_2.tier
            if not L12_2 then
              L12_2 = 0
            end
            if L5_2 < L12_2 then
              L5_2 = L11_2.tier
            end
          end
        end
      end
      L6_2 = L1_2.security
      L7_2 = {}
      L7_2.installed = L3_2
      L7_2.tier = L5_2
      L7_2.armed = L4_2
      L8_2 = 3 ~= L5_2
      L7_2.siren = L8_2
      L6_2.alarm = L7_2
      L6_2 = L1_2.security
      L6_2.alarms = nil
    end
  end
  L2_2 = L1_2.security
  L2_2 = L2_2.alarm
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = type
    L4_2 = L2_2.keyholders
    L3_2 = L3_2(L4_2)
    if "boolean" ~= L3_2 then
      L3_2 = L2_2.tier
      if not L3_2 then
        L3_2 = 0
      end
      L3_2 = L3_2 >= 2
      L2_2.keyholders = L3_2
      L3_2 = L2_2.tier
      if not L3_2 then
        L3_2 = 0
      end
      L3_2 = L3_2 >= 3
      L2_2.dispatch = L3_2
    end
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = type
    L4_2 = L2_2.dispatchInstalled
    L3_2 = L3_2(L4_2)
    if "boolean" ~= L3_2 then
      L3_2 = L2_2.dispatch
      L3_2 = true == L3_2
      L2_2.dispatchInstalled = L3_2
      L2_2.dispatch = true
    end
  end
  L3_2 = type
  L4_2 = L1_2.security
  L4_2 = L4_2.state
  L4_2 = L4_2.recentAlarms
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = L1_2.security
    L3_2 = L3_2.state
    L4_2 = {}
    L3_2.recentAlarms = L4_2
  end
  L3_2 = type
  L4_2 = L1_2.security
  L4_2 = L4_2.lock
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = L1_2.security
    L4_2 = {}
    L4_2.installed = false
    L4_2.tier = 0
    L3_2.lock = L4_2
  end
  L3_2 = L1_2.security
  return L3_2
end
L1_1.Get = L2_1
L1_1 = Security
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = type
    L3_2 = L1_2.security
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = PropertyDb
  L2_2 = L2_2.UpdateSecurity
  L3_2 = A0_2
  L4_2 = L1_2.security
  L2_2(L3_2, L4_2)
end
L1_1.Save = L2_1
L1_1 = Security
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utilities
  if L1_2 then
    L1_2 = L1_2.GetStatus
  end
  if L1_2 then
    L1_2 = Utilities
    L1_2 = L1_2.GetStatus
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  L1_2 = {}
  L1_2.electricity = true
  L1_2.water = true
  L1_2.internet = true
  return L1_2
end
L1_1.GetUtilityStatus = L2_1
L1_1 = Security
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Security
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Security
  L1_2 = L1_2.requireUtilities
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = Security
  L1_2 = L1_2.GetUtilityStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.electricity
  L2_2 = true == L2_2
  return L2_2
end
L1_1.IsActive = L2_1
L1_1 = Security
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Security
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Security
  L1_2 = L1_2.requireUtilities
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = Security
  L1_2 = L1_2.GetUtilityStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.electricity
  L1_2 = true == L1_2
  return L1_2
end
L1_1.HasPower = L2_1
function L1_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Security
  if L1_2 then
    L1_2 = L1_2.alarms
    if L1_2 then
      L1_2 = L1_2.tiers
      if L1_2 then
        L1_2 = L1_2[A0_2]
      end
    end
  end
  return L1_2
end
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = Utils
  L5_2 = L5_2.IsEntityOwner
  L6_2 = L3_2.owner
  L5_2 = L5_2(L6_2)
  if not A2_2 then
    L6_2 = Properties
    L6_2 = L6_2.GetOnlinePlayersWithAccessToProperty
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
  end
  L6_2 = ipairs
  L7_2 = A2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetPlayerFromIdentifier
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L13_2 = L3_2.permissions
      if L13_2 then
        L13_2 = L13_2[L11_2]
      end
      L14_2 = L3_2.owner
      L14_2 = L14_2 == L11_2
      L15_2 = A1_2 or L15_2
      if A1_2 then
        L15_2 = L13_2 or L15_2
        if L13_2 then
          L15_2 = L13_2.manageSecurity
        end
        L15_2 = L13_2 or L15_2
        if not L15_2 and L13_2 then
          L15_2 = L13_2.viewCamera
        end
      end
      if L14_2 or L15_2 then
        L16_2 = #L4_2
        L16_2 = L16_2 + 1
        L17_2 = GetSource
        L18_2 = L12_2
        L17_2 = L17_2(L18_2)
        L4_2[L16_2] = L17_2
      end
    end
  end
  return L4_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = L2_1
  L4_2 = A0_2
  L5_2 = true
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "tk_housing:securityUpdate"
    L10_2 = L7_2
    L11_2 = {}
    L11_2.propertyId = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L4_1 = Security
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L3_2 = Config
  L3_2 = L3_2.Security
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.Debug
    L4_2 = "alarm trigger stopped: security disabled"
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Security
  L3_2 = L3_2.alarms
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.Debug
    L4_2 = "alarm trigger stopped: alarms disabled"
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = Security
  L3_2 = L3_2.Get
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.Debug
    L5_2 = "alarm trigger stopped: no security table"
    L6_2 = A0_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L3_2.alarm
  if L4_2 then
    L5_2 = L4_2.installed
    if L5_2 then
      goto lbl_56
    end
  end
  L5_2 = Utils
  L5_2 = L5_2.Debug
  L6_2 = "alarm trigger stopped: not installed"
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  do return end
  ::lbl_56::
  L5_2 = L4_2.armed
  if not L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.Debug
    L6_2 = "alarm trigger stopped: not armed"
    L7_2 = A0_2
    L8_2 = A1_2
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = L1_1
  L6_2 = L4_2.tier
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = Utils
    L6_2 = L6_2.Debug
    L7_2 = "alarm trigger stopped: no tier config"
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = L4_2.tier
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = false
  L7_2 = ipairs
  L8_2 = L5_2.covers
  if not L8_2 then
    L8_2 = {}
  end
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 == A1_2 then
      L6_2 = true
      break
    end
  end
  if not L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.Debug
    L8_2 = "alarm trigger stopped: type not covered by tier"
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L4_2.tier
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L7_2 = Security
  L7_2 = L7_2.HasPower
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = Security
  L8_2 = L8_2.IsActive
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = L4_2.siren
  if L9_2 then
    L9_2 = L7_2
  end
  L10_2 = L4_2.siren
  if L10_2 and not L7_2 then
    L10_2 = Utils
    L10_2 = L10_2.Debug
    L11_2 = "alarm siren skipped: property has no power"
    L12_2 = A0_2
    L13_2 = A1_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L10_2 = A2_2 or L10_2
  if A2_2 then
    L10_2 = GetPlayerFromId
    L11_2 = A2_2
    L10_2 = L10_2(L11_2)
  end
  if L10_2 then
    L11_2 = GetCharName
    L12_2 = GetIdentifier
    L13_2 = L10_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L12_2(L13_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    if L11_2 then
      goto lbl_145
    end
  end
  L11_2 = _U
  L12_2 = "security_alarm_unknown"
  L11_2 = L11_2(L12_2)
  ::lbl_145::
  L12_2 = L3_2.state
  L12_2.triggered = true
  L12_2 = L3_2.state
  L13_2 = os
  L13_2 = L13_2.time
  L13_2 = L13_2()
  L12_2.lastTriggered = L13_2
  L12_2 = L3_2.state
  L12_2.lastType = A1_2
  L12_2 = L3_2.state
  L12_2.lastBy = L11_2
  L12_2 = table
  L12_2 = L12_2.insert
  L13_2 = L3_2.state
  L13_2 = L13_2.recentAlarms
  L14_2 = 1
  L15_2 = {}
  L15_2.type = A1_2
  L15_2.by = L11_2
  L16_2 = L3_2.state
  L16_2 = L16_2.lastTriggered
  L15_2.time = L16_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = L3_2.state
  L12_2 = L12_2.recentAlarms
  L12_2[6] = nil
  L12_2 = Security
  L12_2 = L12_2.Save
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = Main
  L12_2 = L12_2.GetProperty
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L13_2 = L12_2.name
  if not L13_2 then
    L13_2 = L12_2.address
  end
  L14_2 = Utils
  L14_2 = L14_2.GetPropertyBlipCoords
  L15_2 = Main
  L15_2 = L15_2.GetProperties
  L15_2 = L15_2()
  L16_2 = A0_2
  L14_2 = L14_2(L15_2, L16_2)
  if L8_2 then
    L15_2 = {}
    L15_2.propertyId = A0_2
    L15_2.name = L13_2
    L15_2.alarmType = A1_2
    L16_2 = L3_2.state
    L16_2 = L16_2.lastTriggered
    L15_2.time = L16_2
    L15_2.sound = L9_2
    L15_2.alert = true
    L16_2 = Properties
    L16_2 = L16_2.GetOnlinePlayersWithAccessToProperty
    L17_2 = A0_2
    L16_2 = L16_2(L17_2)
    L17_2 = ipairs
    L18_2 = L2_1
    L19_2 = A0_2
    L20_2 = L4_2.keyholders
    L20_2 = true == L20_2
    L21_2 = L16_2
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    for L21_2, L22_2 in L17_2, L18_2, L19_2, L20_2 do
      L23_2 = TriggerClientEvent
      L24_2 = "tk_housing:alarmTriggered"
      L25_2 = L22_2
      L26_2 = L15_2
      L23_2(L24_2, L25_2, L26_2)
    end
    L17_2 = L3_1
    L18_2 = A0_2
    L19_2 = L16_2
    L17_2(L18_2, L19_2)
  end
  if L9_2 then
    L15_2 = {}
    L16_2 = {}
    L16_2.propertyId = A0_2
    L16_2.inside = true
    L17_2 = 0
    L18_2 = ipairs
    L19_2 = Main
    L19_2 = L19_2.GetPropertyPlayers
    L20_2 = A0_2
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L19_2(L20_2)
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
      L15_2[L23_2] = true
      L17_2 = L17_2 + 1
      L24_2 = TriggerClientEvent
      L25_2 = "tk_housing:alarmSound"
      L26_2 = L23_2
      L27_2 = L16_2
      L24_2(L25_2, L26_2, L27_2)
    end
    L18_2 = Utils
    L18_2 = L18_2.Debug
    L19_2 = "alarm siren sent to players inside"
    L20_2 = A0_2
    L21_2 = L17_2
    L18_2(L19_2, L20_2, L21_2)
    if L14_2 then
      L18_2 = {}
      L18_2.propertyId = A0_2
      L19_2 = {}
      L20_2 = L14_2.x
      L19_2.x = L20_2
      L20_2 = L14_2.y
      L19_2.y = L20_2
      L20_2 = L14_2.z
      L19_2.z = L20_2
      L18_2.coords = L19_2
      L19_2 = Config
      L19_2 = L19_2.Security
      L19_2 = L19_2.alarms
      L19_2 = L19_2.audibleRange
      if not L19_2 then
        L19_2 = 25.0
      end
      L20_2 = 0
      L21_2 = ipairs
      L22_2 = GetPlayers
      L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L22_2()
      L21_2, L22_2, L23_2, L24_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      for L25_2, L26_2 in L21_2, L22_2, L23_2, L24_2 do
        L27_2 = tonumber
        L28_2 = L26_2
        L27_2 = L27_2(L28_2)
        L28_2 = L15_2[L27_2]
        if not L28_2 then
          L28_2 = GetPlayerPed
          L29_2 = L27_2
          L28_2 = L28_2(L29_2)
          if 0 ~= L28_2 then
            L29_2 = GetEntityCoords
            L30_2 = L28_2
            L29_2 = L29_2(L30_2)
            L29_2 = L29_2 - L14_2
            L29_2 = #L29_2
            if L19_2 >= L29_2 then
              L20_2 = L20_2 + 1
              L29_2 = TriggerClientEvent
              L30_2 = "tk_housing:alarmSound"
              L31_2 = L27_2
              L32_2 = L18_2
              L29_2(L30_2, L31_2, L32_2)
            end
          end
        end
      end
      L21_2 = Utils
      L21_2 = L21_2.Debug
      L22_2 = "alarm siren sent to nearby players"
      L23_2 = A0_2
      L24_2 = L20_2
      L21_2(L22_2, L23_2, L24_2)
    else
      L18_2 = Utils
      L18_2 = L18_2.Debug
      L19_2 = "alarm siren has no coords, nobody outside the property can be reached"
      L20_2 = A0_2
      L18_2(L19_2, L20_2)
    end
  end
  L15_2 = L4_2.dispatchInstalled
  if L15_2 then
    L15_2 = L4_2.dispatch
    if L15_2 and "raid" ~= A1_2 then
      L15_2 = ReportBreakIn
      L16_2 = A0_2
      L17_2 = A1_2
      if L14_2 then
        L18_2 = {}
        L19_2 = L14_2.x
        L18_2.x = L19_2
        L19_2 = L14_2.y
        L18_2.y = L19_2
        L19_2 = L14_2.z
        L18_2.z = L19_2
        if L18_2 then
          goto lbl_356
        end
      end
      L18_2 = nil
      ::lbl_356::
      L19_2 = L13_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
  end
  L15_2 = Webhook
  L16_2 = _U
  L17_2 = "webhook_action"
  if A2_2 then
    L18_2 = Utils
    L18_2 = L18_2.GetIdentifiers
    L19_2 = A2_2
    L18_2 = L18_2(L19_2)
    if L18_2 then
      goto lbl_370
    end
  end
  L18_2 = "Server"
  ::lbl_370::
  L19_2 = "Security Alarm Triggered"
  L20_2 = json
  L20_2 = L20_2.encode
  L21_2 = {}
  L21_2.propertyId = A0_2
  L21_2.name = L13_2
  L21_2.alarmType = A1_2
  L21_2.triggeredBy = L11_2
  L22_2 = {}
  L22_2.indent = true
  L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2, L22_2)
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
  L15_2 = true
  return L15_2
end
L4_1.Trigger = L5_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L5_2
  L8_2 = A1_2
  L9_2 = "manageSecurity"
  L10_2 = L4_2.permissions
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = Security
  L6_2 = L6_2.Get
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = nil
  L8_2 = nil
  if "camera" == A2_2 then
    L9_2 = Config
    L9_2 = L9_2.Security
    L9_2 = L9_2.camera
    if L9_2 then
      L9_2 = L9_2.enable
    end
    if not L9_2 then
      L9_2 = false
      return L9_2
    end
    L9_2 = L6_2.camera
    L9_2 = L9_2.installed
    if L9_2 then
      L9_2 = Notify
      L10_2 = A0_2
      L11_2 = _U
      L12_2 = "security_already_owned"
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = false
      return L9_2
    end
    L9_2 = Config
    L9_2 = L9_2.Security
    L9_2 = L9_2.camera
    L9_2 = L9_2.price
    L7_2 = L9_2 or L7_2
    if not L9_2 then
      L7_2 = 0
    end
    function L9_2()
      local L0_3, L1_3
      L0_3 = L6_2.camera
      L0_3.installed = true
    end
    L8_2 = L9_2
  elseif "lock" == A2_2 then
    L9_2 = Config
    L9_2 = L9_2.Security
    L9_2 = L9_2.lock
    if L9_2 then
      L9_2 = L9_2.enable
    end
    if not L9_2 then
      L9_2 = false
      return L9_2
    end
    L9_2 = type
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    if "number" ~= L9_2 then
      L9_2 = false
      return L9_2
    end
    L9_2 = Config
    L9_2 = L9_2.Security
    if L9_2 then
      L9_2 = L9_2.lock
      if L9_2 then
        L9_2 = L9_2.tiers
        if L9_2 then
          L9_2 = L9_2[A3_2]
        end
      end
    end
    if not L9_2 then
      L10_2 = false
      return L10_2
    end
    L10_2 = L6_2.lock
    L11_2 = L10_2.installed
    if L11_2 then
      L11_2 = L10_2.tier
      if A3_2 <= L11_2 then
        L11_2 = Notify
        L12_2 = A0_2
        L13_2 = _U
        L14_2 = "security_already_owned"
        L13_2 = L13_2(L14_2)
        L14_2 = "error"
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = false
        return L11_2
      end
    end
    L11_2 = L9_2.price
    L7_2 = L11_2 or L7_2
    if not L11_2 then
      L7_2 = 0
    end
    function L11_2()
      local L0_3, L1_3
      L10_2.installed = true
      L0_3 = A3_2
      L10_2.tier = L0_3
    end
    L8_2 = L11_2
  elseif "dispatch" == A2_2 then
    L9_2 = Config
    L9_2 = L9_2.Security
    L9_2 = L9_2.alarms
    if L9_2 then
      L9_2 = L9_2.enable
    end
    if L9_2 then
      L9_2 = Config
      L9_2 = L9_2.Security
      L9_2 = L9_2.alarms
      if L9_2 then
        L9_2 = L9_2.dispatch
        if L9_2 then
          L9_2 = L9_2.enable
        end
      end
      if L9_2 then
        goto lbl_148
      end
    end
    L9_2 = false
    do return L9_2 end
    ::lbl_148::
    L9_2 = L6_2.alarm
    L9_2 = L9_2.installed
    if not L9_2 then
      L9_2 = Notify
      L10_2 = A0_2
      L11_2 = _U
      L12_2 = "security_needs_alarm"
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = false
      return L9_2
    end
    L9_2 = L6_2.alarm
    L9_2 = L9_2.dispatchInstalled
    if L9_2 then
      L9_2 = Notify
      L10_2 = A0_2
      L11_2 = _U
      L12_2 = "security_already_owned"
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = false
      return L9_2
    end
    L9_2 = Config
    L9_2 = L9_2.Security
    L9_2 = L9_2.alarms
    L9_2 = L9_2.dispatch
    L9_2 = L9_2.price
    L7_2 = L9_2 or L7_2
    if not L9_2 then
      L7_2 = 0
    end
    function L9_2()
      local L0_3, L1_3
      L0_3 = L6_2.alarm
      L0_3.dispatchInstalled = true
    end
    L8_2 = L9_2
  else
    L9_2 = Config
    L9_2 = L9_2.Security
    L9_2 = L9_2.alarms
    if L9_2 then
      L9_2 = L9_2.enable
    end
    if not L9_2 then
      L9_2 = false
      return L9_2
    end
    L9_2 = type
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    if "number" ~= L9_2 then
      L9_2 = false
      return L9_2
    end
    L9_2 = L1_1
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L10_2 = false
      return L10_2
    end
    L10_2 = L6_2.alarm
    L11_2 = L10_2.installed
    if L11_2 then
      L11_2 = L10_2.tier
      if A3_2 <= L11_2 then
        L11_2 = Notify
        L12_2 = A0_2
        L13_2 = _U
        L14_2 = "security_already_owned"
        L13_2 = L13_2(L14_2)
        L14_2 = "error"
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = false
        return L11_2
      end
    end
    L11_2 = L9_2.price
    L7_2 = L11_2 or L7_2
    if not L11_2 then
      L7_2 = 0
    end
    function L11_2()
      local L0_3, L1_3
      L10_2.installed = true
      L0_3 = A3_2
      L10_2.tier = L0_3
    end
    L8_2 = L11_2
  end
  L9_2 = GetAccountMoney
  L10_2 = L5_2
  L11_2 = "bank"
  L9_2 = L9_2(L10_2, L11_2)
  if L7_2 > L9_2 then
    L9_2 = Notify
    L10_2 = A0_2
    L11_2 = _U
    L12_2 = "security_cannot_afford"
    L11_2 = L11_2(L12_2)
    L12_2 = "error"
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = false
    return L9_2
  end
  L9_2 = RemoveAccountMoney
  L10_2 = L5_2
  L11_2 = "bank"
  L12_2 = L7_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = L8_2
  L9_2()
  L9_2 = Security
  L9_2 = L9_2.Save
  L10_2 = A1_2
  L9_2(L10_2)
  L9_2 = L3_1
  L10_2 = A1_2
  L9_2(L10_2)
  L9_2 = Notify
  L10_2 = A0_2
  L11_2 = _U
  L12_2 = "security_purchased"
  L11_2 = L11_2(L12_2)
  L12_2 = "success"
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = true
  return L9_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_2.doors
    if L1_2 then
      L1_2 = L1_2.house
      if L1_2 then
        L1_2 = L1_2[1]
      end
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.coords
  end
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L4_2 = {}
  L5_2 = L2_2.x
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L4_2.z = L5_2
  L3_2.coords = L4_2
  L4_2 = L2_2.w
  if not L4_2 then
    L4_2 = 0.0
  end
  L3_2.heading = L4_2
  return L3_2
end
L6_1 = Security
function L7_1(A0_2)
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
    L9_2 = L8_2.security
    if L9_2 then
      L9_2 = L9_2.camera
      if L9_2 then
        L9_2 = L9_2.installed
      end
    end
    if true == L9_2 then
      L9_2 = Permissions
      L9_2 = L9_2.HasPermission
      L10_2 = L1_2
      L11_2 = L7_2
      L12_2 = "viewCamera"
      L13_2 = L8_2.permissions
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      if L9_2 then
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L2_2[L9_2] = L7_2
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end
L6_1.ViewableProperties = L7_1
L6_1 = Security
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Security
  if L1_2 then
    L1_2 = L1_2.lock
    if L1_2 then
      L1_2 = L1_2.enable
    end
  end
  if not L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_2.security
    if L1_2 then
      L1_2 = L1_2.lock
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.installed
  end
  if not L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.tier
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end
L6_1.GetLockGrade = L7_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = type
  L4_2 = A0_2.recentAlarms
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = A0_2.recentAlarms
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = {}
  ::lbl_14::
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L10_2 = L7_2.type
    L9_2.type = L10_2
    L10_2 = L7_2.time
    L9_2.time = L10_2
    L1_2[L8_2] = L9_2
  end
  L2_2 = {}
  L3_2 = A0_2.triggered
  L2_2.triggered = L3_2
  L3_2 = A0_2.lastTriggered
  L2_2.lastTriggered = L3_2
  L3_2 = A0_2.lastType
  L2_2.lastType = L3_2
  L2_2.recentAlarms = L1_2
  return L2_2
end
L7_1 = RegisterCallback
L8_1 = "tk_housing:getSecurityData"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_16::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L3_2
  L7_2 = A2_2
  L8_2 = "manageSecurity"
  L9_2 = L4_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L3_2
  L8_2 = A2_2
  L9_2 = "viewCamera"
  L10_2 = L4_2.permissions
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L5_2 and not L6_2 then
    L7_2 = A1_2
    L8_2 = nil
    L7_2(L8_2)
    return
  end
  L7_2 = Security
  L7_2 = L7_2.Get
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = A1_2
  L9_2 = {}
  L10_2 = L7_2.alarm
  L9_2.alarm = L10_2
  L10_2 = L7_2.camera
  L9_2.camera = L10_2
  L10_2 = L7_2.lock
  L9_2.lock = L10_2
  L10_2 = L6_1
  L11_2 = L7_2.state
  L10_2 = L10_2(L11_2)
  L9_2.state = L10_2
  L10_2 = Security
  L10_2 = L10_2.GetUtilityStatus
  L11_2 = A2_2
  L10_2 = L10_2(L11_2)
  L9_2.utilities = L10_2
  L9_2.canManageSecurity = L5_2
  L9_2.canViewCamera = L6_2
  L8_2(L9_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterCallback
L8_1 = "tk_housing:getLockDifficulty"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = A1_2
  L5_2 = nil
  L4_2(L5_2)
  do return end
  ::lbl_16::
  if "door" ~= A3_2 and "storage" ~= A3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = Config
  L4_2 = L4_2.Lockpicking
  L4_2 = L4_2[A3_2]
  L4_2 = L4_2.enable
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = Config
  L4_2 = L4_2.Lockpicking
  L4_2 = L4_2[A3_2]
  L4_2 = L4_2.pins
  if "door" == A3_2 then
    L5_2 = Security
    L5_2 = L5_2.GetLockGrade
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 + L5_2
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.pins = L4_2
  L7_2 = Config
  L7_2 = L7_2.Lockpicking
  L7_2 = L7_2[A3_2]
  L7_2 = L7_2.timeLimit
  L6_2.timeLimit = L7_2
  L5_2(L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = Security
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Breaching
  L1_2 = L1_2.duration
  L2_2 = Security
  L2_2 = L2_2.GetLockGrade
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.Breaching
  L3_2 = L3_2.lockGradeDuration
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  return L1_2
end
L7_1.GetBreachTime = L8_1
L7_1 = RegisterCallback
L8_1 = "tk_housing:getBreachTime"
function L9_1(A0_2, A1_2, A2_2)
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
      goto lbl_16
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_16::
  L3_2 = Config
  L3_2 = L3_2.Breaching
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = Security
  L4_2 = L4_2.GetBreachTime
  L5_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "tk_housing:buySecurity"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = "table" == L4_2 and L4_2
  L5_2 = type
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_41
    end
  end
  do return end
  ::lbl_41::
  if "camera" ~= L3_2 and "alarm" ~= L3_2 and "lock" ~= L3_2 and "dispatch" ~= L3_2 then
    return
  end
  L5_2 = GetPlayerFromId
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L5_2
  L8_2 = L2_2
  L9_2 = "manageSecurity"
  L10_2 = Main
  L10_2 = L10_2.GetProperty
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2.permissions
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L6_2 = Permissions
    L6_2 = L6_2.DenyCheater
    L7_2 = L1_2
    L8_2 = L5_2
    L9_2 = "buySecurity"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = L4_1
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "tk_housing:setAlarmArmed"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "boolean" ~= L4_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L4_2
  L7_2 = L2_2
  L8_2 = "manageSecurity"
  L9_2 = Main
  L9_2 = L9_2.GetProperty
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = Permissions
    L5_2 = L5_2.DenyCheater
    L6_2 = L1_2
    L7_2 = L4_2
    L8_2 = "setAlarmArmed"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Security
  L5_2 = L5_2.Get
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.alarm
  L7_2 = L6_2.installed
  if not L7_2 then
    return
  end
  L6_2.armed = L3_2
  L7_2 = Security
  L7_2 = L7_2.Save
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = L3_1
  L8_2 = L2_2
  L7_2(L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "tk_housing:setAlarmSiren"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "boolean" ~= L4_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L4_2
  L7_2 = L2_2
  L8_2 = "manageSecurity"
  L9_2 = Main
  L9_2 = L9_2.GetProperty
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = Permissions
    L5_2 = L5_2.DenyCheater
    L6_2 = L1_2
    L7_2 = L4_2
    L8_2 = "setAlarmSiren"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Security
  L5_2 = L5_2.Get
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.alarm
  L7_2 = L6_2.installed
  if not L7_2 then
    return
  end
  L6_2.siren = L3_2
  L7_2 = Security
  L7_2 = L7_2.Save
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = L3_1
  L8_2 = L2_2
  L7_2(L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "tk_housing:setAlarmKeyholders"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "boolean" ~= L4_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L4_2
  L7_2 = L2_2
  L8_2 = "manageSecurity"
  L9_2 = Main
  L9_2 = L9_2.GetProperty
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = Permissions
    L5_2 = L5_2.DenyCheater
    L6_2 = L1_2
    L7_2 = L4_2
    L8_2 = "setAlarmKeyholders"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Security
  L5_2 = L5_2.Get
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.alarm
  L7_2 = L6_2.installed
  if not L7_2 then
    return
  end
  L6_2.keyholders = L3_2
  L7_2 = Security
  L7_2 = L7_2.Save
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = L3_1
  L8_2 = L2_2
  L7_2(L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "tk_housing:setAlarmDispatch"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "boolean" ~= L4_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L4_2
  L7_2 = L2_2
  L8_2 = "manageSecurity"
  L9_2 = Main
  L9_2 = L9_2.GetProperty
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = Permissions
    L5_2 = L5_2.DenyCheater
    L6_2 = L1_2
    L7_2 = L4_2
    L8_2 = "setAlarmDispatch"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Security
  L5_2 = L5_2.Get
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.alarm
  L7_2 = L6_2.installed
  if L7_2 then
    L7_2 = L6_2.dispatchInstalled
    if L7_2 then
      goto lbl_73
    end
  end
  do return end
  ::lbl_73::
  L6_2.dispatch = L3_2
  L7_2 = Security
  L7_2 = L7_2.Save
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = L3_1
  L8_2 = L2_2
  L7_2(L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "tk_housing:acknowledgeAlarm"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A0_2.propertyId
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  ::lbl_11::
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_23
    end
  end
  do return end
  ::lbl_23::
  L3_2 = GetPlayerFromId
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = Permissions
  L4_2 = L4_2.HasPermission
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = "manageSecurity"
  L8_2 = Main
  L8_2 = L8_2.GetProperty
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.permissions
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = Permissions
    L4_2 = L4_2.DenyCheater
    L5_2 = L1_2
    L6_2 = L3_2
    L7_2 = "acknowledgeAlarm"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Security
  L4_2 = L4_2.Get
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.state
  L5_2 = L5_2.triggered
  if L5_2 then
    L5_2 = Assistant
    L5_2 = L5_2.Moment
    L6_2 = L2_2
    L7_2 = "alarm"
    L5_2(L6_2, L7_2)
  end
  L5_2 = L4_2.state
  L5_2.triggered = false
  L5_2 = Security
  L5_2 = L5_2.Save
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = L3_1
  L6_2 = L2_2
  L5_2(L6_2)
end
L7_1(L8_1, L9_1)
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
end
L8_1 = RegisterCallback
L9_1 = "tk_housing:viewCamera"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_16::
  L3_2 = Config
  L3_2 = L3_2.Security
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Security
    L3_2 = L3_2.camera
    if L3_2 then
      L3_2 = L3_2.enable
    end
    if L3_2 then
      goto lbl_35
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_35::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L3_2
  L7_2 = A2_2
  L8_2 = "viewCamera"
  L9_2 = L4_2.permissions
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = nil
    L5_2(L6_2)
    return
  end
  L5_2 = Security
  L5_2 = L5_2.Get
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.camera
  L6_2 = L6_2.installed
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    return
  end
  L6_2 = Security
  L6_2 = L6_2.IsActive
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    return
  end
  L6_2 = L5_1
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = L7_1
    L8_2 = A0_2
    L7_2, L8_2 = L7_2(L8_2)
    if L7_2 then
      L9_2 = GetPlayerRoutingBucket
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L10_2 = OpeningCamera
      L11_2 = A0_2
      L12_2 = L7_2
      L13_2 = L8_2
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = Properties
      L10_2 = L10_2.SendRoutingBucket
      L11_2 = A0_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:leaveCameraBucket"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = L7_1
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L3_2 = GetPlayerRoutingBucket
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ClosingCamera
  L5_2 = L0_2
  L6_2 = L1_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Properties
  L4_2 = L4_2.SendRoutingBucket
  L5_2 = L0_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L8_1(L9_1, L10_1)
L8_1 = Security
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Config
  L0_2 = L0_2.Security
  if L0_2 then
    L0_2 = L0_2.enable
  end
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Security
    L0_2 = L0_2.camera
    if L0_2 then
      L0_2 = L0_2.enable
    end
    if L0_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L0_2 = Config
  L0_2 = L0_2.Security
  L0_2 = L0_2.camera
  L0_2 = L0_2.viewAccess
  if "item" ~= L0_2 and "all" ~= L0_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.Security
  L1_2 = L1_2.camera
  L1_2 = L1_2.item
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 or "" == L1_2 then
    return
  end
  L2_2 = CreateUsableItem
  L3_2 = L1_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = Config
    L1_3 = L1_3.Security
    L1_3 = L1_3.camera
    L1_3 = L1_3.remote
    if L1_3 then
      L1_3 = TriggerClientEvent
      L2_3 = "tk_housing:cameraProperties"
      L3_3 = A0_3
      L4_3 = Security
      L4_3 = L4_3.ViewableProperties
      L5_3 = A0_3
      L4_3, L5_3 = L4_3(L5_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
      return
    end
    L1_3 = Main
    L1_3 = L1_3.GetPropertyAccess
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L2_3 = Notify
      L3_3 = A0_3
      L4_3 = _U
      L5_3 = "security_camera_no_property"
      L4_3 = L4_3(L5_3)
      L5_3 = "error"
      L2_3(L3_3, L4_3, L5_3)
      return
    end
    L2_3 = TriggerClientEvent
    L3_3 = "tk_housing:openCamera"
    L4_3 = A0_3
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L2_2(L3_2, L4_2)
end
L8_1.RegisterItems = L9_1
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:requestCameraFeed"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = Config
  L1_2 = L1_2.Security
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Security
    L1_2 = L1_2.camera
    if L1_2 then
      L1_2 = L1_2.enable
    end
    if L1_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L1_2 = Config
  L1_2 = L1_2.Security
  L1_2 = L1_2.camera
  L1_2 = L1_2.viewAccess
  if "command" ~= L1_2 and "all" ~= L1_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Security
  L2_2 = L2_2.camera
  L2_2 = L2_2.remote
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "tk_housing:cameraProperties"
    L4_2 = L0_2
    L5_2 = Security
    L5_2 = L5_2.ViewableProperties
    L6_2 = L0_2
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = Main
  L2_2 = L2_2.GetPropertyAccess
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = Notify
    L4_2 = L0_2
    L5_2 = _U
    L6_2 = "security_camera_no_property"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:openCamera"
  L5_2 = L0_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L8_1(L9_1, L10_1)
