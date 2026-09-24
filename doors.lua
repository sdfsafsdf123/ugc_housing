local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
Doors = L0_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  if "link" == A1_2 then
    L3_2 = A0_2.doorLinks
    return L3_2
  end
  if "interior" == A1_2 then
    L3_2 = A0_2.interior
    if L3_2 then
      L3_2 = L3_2.doors
    end
    return L3_2
  end
  L3_2 = A0_2.doors
  if L3_2 then
    L3_2 = L3_2[A2_2]
  end
  return L3_2
end
L3_1 = {}
PoliceLockdown = L3_1
L3_1 = PoliceLockdown
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.PoliceLockdown
  L1_2 = L1_2.enable
  if true ~= L1_2 or not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.PoliceLockdown
  L1_2 = L1_2.jobs
  L2_2 = GetJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2[L2_2]
  L1_2 = nil ~= L1_2
  return L1_2
end
L3_1.IsMember = L4_1
L3_1 = PoliceLockdown
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PoliceLockdown
  L1_2 = L1_2.IsMember
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.PoliceLockdown
  L1_2 = L1_2.jobs
  L2_2 = GetJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2[L2_2]
  L2_2 = GetGradeId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = type
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_2 = "number" == L3_2
  return L3_2
end
L3_1.CanManage = L4_1
L3_1 = PoliceLockdown
function L4_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.PoliceLockdown
  L1_2 = L1_2.enable
  L1_2 = true == L1_2
  return L1_2
end
L3_1.IsLocked = L4_1
L3_1 = PoliceLockdown
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PoliceLockdown
  L2_2 = L2_2.IsLocked
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = PoliceLockdown
  L2_2 = L2_2.IsMember
  L3_2 = A0_2
  L2_2 = not L2_2 or L2_2
  return L2_2
end
L3_1.CanEnter = L4_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A1_2.propertyType
  if "house" ~= L2_2 then
    L2_2 = A1_2.propertyType
    if "garage" ~= L2_2 then
      L2_2 = nil
      return L2_2
    end
  end
  L2_2 = A1_2.doorType
  if "door" ~= L2_2 then
    L2_2 = A1_2.doorType
    if "interior" ~= L2_2 then
      L2_2 = nil
      return L2_2
    end
  end
  L2_2 = type
  L3_2 = A1_2.doorIndex
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = A1_2.doorIndex
    if not (L2_2 < 1) then
      L2_2 = A1_2.doorIndex
      L2_2 = L2_2 % 1
      if 0 == L2_2 then
        goto lbl_39
      end
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_39::
  L2_2 = L2_1
  L3_2 = A0_2
  L4_2 = A1_2.doorType
  L5_2 = A1_2.propertyType
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = A1_2.doorIndex
    L2_2 = L2_2[L3_2]
  end
  L3_2 = type
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = L2_2.coords
  end
  L3_2 = L3_2(L4_2)
  if "vector4" ~= L3_2 and "vector3" ~= L3_2 and "table" ~= L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = A1_2.doorType
  if "interior" == L4_2 then
    L4_2 = L2_2.propertyType
    if L4_2 then
      L4_2 = L2_2.propertyType
      L5_2 = A1_2.propertyType
      if L4_2 ~= L5_2 then
        L4_2 = nil
        return L4_2
      end
    end
  end
  return L2_2
end
L4_1 = PoliceLockdown
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = PoliceLockdown
  L3_2 = L3_2.IsLocked
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.policeLocked = L3_2
  L3_2 = PoliceLockdown
  L3_2 = L3_2.CanManage
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.canManagePoliceLockdown = L3_2
  L3_2 = PoliceLockdown
  L3_2 = L3_2.CanEnter
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.canEnterPoliceLockdown = L3_2
  L3_2 = Config
  L3_2 = L3_2.PoliceLockdown
  L3_2 = L3_2.enable
  L3_2 = true == L3_2
  L2_2.policeLockdownAvailable = L3_2
  return L2_2
end
L4_1.GetMenuData = L5_1
L4_1 = RegisterCallback
L5_1 = "tk_housing:setPoliceLockdown"
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
    return
  end
  L6_2 = type
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if "number" ~= L6_2 then
    L6_2 = Notify
    L7_2 = A0_2
    L8_2 = _U
    L9_2 = "police_lockdown_failed"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
    return
  end
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = type
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    if "boolean" == L7_2 then
      goto lbl_48
    end
  end
  L7_2 = Notify
  L8_2 = A0_2
  L9_2 = _U
  L10_2 = "police_lockdown_failed"
  L9_2 = L9_2(L10_2)
  L10_2 = "error"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A1_2
  L8_2 = false
  L7_2(L8_2)
  do return end
  ::lbl_48::
  L7_2 = PoliceLockdown
  L7_2 = L7_2.CanManage
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = Webhook
    L8_2 = _U
    L9_2 = "webhook_cheater"
    L10_2 = Utils
    L10_2 = L10_2.GetIdentifiers
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L11_2 = "Police lockdown without permission"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = Notify
    L8_2 = A0_2
    L9_2 = _U
    L10_2 = "police_lockdown_denied"
    L9_2 = L9_2(L10_2)
    L10_2 = "error"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
    return
  end
  if A3_2 then
    L7_2 = type
    L8_2 = L6_2.owner
    L7_2 = L7_2(L8_2)
    if "string" == L7_2 then
      L7_2 = L6_2.owner
      if "" ~= L7_2 then
        goto lbl_96
      end
    end
    L7_2 = Notify
    L8_2 = A0_2
    L9_2 = _U
    L10_2 = "police_lockdown_failed"
    L9_2 = L9_2(L10_2)
    L10_2 = "error"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
    return
  end
  ::lbl_96::
  L7_2 = L3_1
  L8_2 = L6_2
  L9_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = GetPlayerPed
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if L7_2 and 0 ~= L8_2 then
    L9_2 = GetEntityCoords
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = vec3
    L11_2 = L7_2.coords
    L11_2 = L11_2.x
    L12_2 = L7_2.coords
    L12_2 = L12_2.y
    L13_2 = L7_2.coords
    L13_2 = L13_2.z
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2 = L9_2 - L10_2
    L9_2 = #L9_2
    L10_2 = Config
    L10_2 = L10_2.PoliceLockdown
    L10_2 = L10_2.maxDistance
    if not (L9_2 > L10_2) then
      goto lbl_147
    end
  end
  L9_2 = Webhook
  L10_2 = _U
  L11_2 = "webhook_cheater"
  L12_2 = Utils
  L12_2 = L12_2.GetIdentifiers
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L13_2 = "Police lockdown from too far"
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L9_2 = Notify
  L10_2 = A0_2
  L11_2 = _U
  L12_2 = "police_lockdown_too_far"
  L11_2 = L11_2(L12_2)
  L12_2 = "error"
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A1_2
  L10_2 = false
  L9_2(L10_2)
  do return end
  ::lbl_147::
  L9_2 = L6_2.policeLocked
  if L9_2 == A3_2 then
    L9_2 = A1_2
    L10_2 = true
    L9_2(L10_2)
    return
  end
  if A2_2 < 0 then
    L9_2 = Main
    L9_2 = L9_2.GetPropertyPlayers
    L10_2 = A2_2
    L9_2 = L9_2(L10_2)
    L9_2 = #L9_2
    if L9_2 > 0 then
      L9_2 = Notify
      L10_2 = A0_2
      L11_2 = _U
      L12_2 = "police_lockdown_property_busy"
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A1_2
      L10_2 = false
      L9_2(L10_2)
      return
    end
    L9_2 = pcall
    L10_2 = Properties
    L10_2 = L10_2.SaveConfigProperty
    L11_2 = A2_2
    L9_2, L10_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L11_2 = type
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if not ("number" ~= L11_2 or L10_2 < 1) then
        goto lbl_205
      end
    end
    L11_2 = Utils
    L11_2 = L11_2.Warn
    L12_2 = "Saving config property for police lockdown failed"
    L13_2 = A2_2
    L14_2 = L10_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = Notify
    L12_2 = A0_2
    L13_2 = _U
    L14_2 = "police_lockdown_failed"
    L13_2 = L13_2(L14_2)
    L14_2 = "error"
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = A1_2
    L12_2 = false
    L11_2(L12_2)
    do return end
    ::lbl_205::
    A2_2 = L10_2
    L11_2 = Main
    L11_2 = L11_2.GetProperty
    L12_2 = A2_2
    L11_2 = L11_2(L12_2)
    L6_2 = L11_2
    L11_2 = GetPlayerFromId
    L12_2 = A0_2
    L11_2 = L11_2(L12_2)
    L5_2 = L11_2
    L7_2 = L6_2 or L7_2
    if L6_2 then
      L11_2 = L3_1
      L12_2 = L6_2
      L13_2 = A4_2
      L11_2 = L11_2(L12_2, L13_2)
      L7_2 = L11_2
    end
    L11_2 = GetPlayerPed
    L12_2 = A0_2
    L11_2 = L11_2(L12_2)
    L8_2 = L11_2
    if L6_2 then
      L11_2 = PoliceLockdown
      L11_2 = L11_2.CanManage
      L12_2 = L5_2
      L11_2 = L11_2(L12_2)
      if L11_2 and L7_2 and 0 ~= L8_2 then
        L11_2 = GetEntityCoords
        L12_2 = L8_2
        L11_2 = L11_2(L12_2)
        L12_2 = vec3
        L13_2 = L7_2.coords
        L13_2 = L13_2.x
        L14_2 = L7_2.coords
        L14_2 = L14_2.y
        L15_2 = L7_2.coords
        L15_2 = L15_2.z
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2 = L11_2 - L12_2
        L11_2 = #L11_2
        L12_2 = Config
        L12_2 = L12_2.PoliceLockdown
        L12_2 = L12_2.maxDistance
        if not (L11_2 > L12_2) then
          goto lbl_268
        end
      end
    end
    L11_2 = Notify
    L12_2 = A0_2
    L13_2 = _U
    L14_2 = "police_lockdown_failed"
    L13_2 = L13_2(L14_2)
    L14_2 = "error"
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = A1_2
    L12_2 = false
    L11_2(L12_2)
    return
  end
  ::lbl_268::
  L9_2 = L7_2.coords
  L9_2 = L9_2.w
  L10_2 = type
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  if "number" ~= L10_2 then
    L9_2 = A4_2.heading
  end
  L10_2 = type
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  if "number" == L10_2 and L9_2 == L9_2 then
    L10_2 = math
    L10_2 = L10_2.huge
    if L9_2 ~= L10_2 then
      L10_2 = math
      L10_2 = L10_2.huge
      L10_2 = -L10_2
      if L9_2 ~= L10_2 then
        goto lbl_303
      end
    end
  end
  L10_2 = Notify
  L11_2 = A0_2
  L12_2 = _U
  L13_2 = "police_lockdown_failed"
  L12_2 = L12_2(L13_2)
  L13_2 = "error"
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = A1_2
  L11_2 = false
  L10_2(L11_2)
  do return end
  ::lbl_303::
  if A3_2 then
    L10_2 = {}
    L10_2.locked = true
    L11_2 = A4_2.propertyType
    L10_2.propertyType = L11_2
    L11_2 = A4_2.doorType
    L10_2.doorType = L11_2
    L11_2 = A4_2.doorIndex
    L10_2.doorIndex = L11_2
    L11_2 = L9_2 % 360.0
    L10_2.heading = L11_2
    if L10_2 then
      goto lbl_320
    end
  end
  L10_2 = nil
  ::lbl_320::
  L11_2 = pcall
  L12_2 = PropertyDb
  L12_2 = L12_2.UpdatePoliceLockdown
  L13_2 = A2_2
  L14_2 = L10_2
  L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2)
  if not L11_2 or 1 ~= L12_2 then
    L13_2 = Utils
    L13_2 = L13_2.Warn
    L14_2 = "Saving police lockdown failed"
    L15_2 = A2_2
    L16_2 = L12_2
    L13_2(L14_2, L15_2, L16_2)
    L13_2 = Notify
    L14_2 = A0_2
    L15_2 = _U
    L16_2 = "police_lockdown_failed"
    L15_2 = L15_2(L16_2)
    L16_2 = "error"
    L13_2(L14_2, L15_2, L16_2)
    L13_2 = A1_2
    L14_2 = false
    L13_2(L14_2)
    return
  end
  L13_2 = Main
  L13_2 = L13_2.GetProperty
  L14_2 = A2_2
  L13_2 = L13_2(L14_2)
  if L13_2 ~= L6_2 then
    L13_2 = Utils
    L13_2 = L13_2.Warn
    L14_2 = "Property changed while saving police lockdown"
    L15_2 = A2_2
    L13_2(L14_2, L15_2)
    L13_2 = Notify
    L14_2 = A0_2
    L15_2 = _U
    L16_2 = "police_lockdown_failed"
    L15_2 = L15_2(L16_2)
    L16_2 = "error"
    L13_2(L14_2, L15_2, L16_2)
    L13_2 = A1_2
    L14_2 = false
    L13_2(L14_2)
    return
  end
  L6_2.policeLockdown = L10_2
  L6_2.policeLocked = A3_2
  L13_2 = Main
  L13_2 = L13_2.ClearExportCache
  L14_2 = A2_2
  L13_2(L14_2)
  L13_2 = TriggerClientEvent
  L14_2 = "tk_housing:policeLockdownChanged"
  L15_2 = -1
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = L10_2
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = Notify
  L14_2 = A0_2
  L15_2 = _U
  if A3_2 then
    L16_2 = "police_lockdown_locked"
    if L16_2 then
      goto lbl_391
    end
  end
  L16_2 = "police_lockdown_unlocked"
  ::lbl_391::
  L15_2 = L15_2(L16_2)
  L16_2 = "success"
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = A1_2
  L14_2 = true
  L15_2 = A2_2
  L13_2(L14_2, L15_2)
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.doorLinks
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.doorLinks
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2.code = A1_2
    end
  end
  L2_2 = A0_2.interior
  if L2_2 then
    L2_2 = L2_2.doors
  end
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.interior
    L3_2 = L3_2.doors
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2.code = A1_2
    end
  end
  L2_2 = A0_2.doors
  if L2_2 then
    L2_2 = L2_2.house
  end
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.doors
    L3_2 = L3_2.house
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2.code = A1_2
    end
  end
  L2_2 = A0_2.doors
  if L2_2 then
    L2_2 = L2_2.garage
  end
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.doors
    L3_2 = L3_2.garage
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2.code = A1_2
    end
  end
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = Database
  L3_2 = L3_2.Value
  L4_2 = L2_2
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2.doorLinks
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = Database
  L4_2 = L4_2.Value
  L5_2 = L2_2
  L6_2 = Database
  L6_2 = L6_2.Json
  L7_2 = A1_2.interior
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = Database
  L5_2 = L5_2.Value
  L6_2 = L2_2
  L7_2 = Database
  L7_2 = L7_2.Json
  L8_2 = A1_2.doors
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = #L2_2
  L6_2 = L6_2 + 1
  L2_2[L6_2] = A0_2
  L6_2 = MySQL
  L6_2 = L6_2.Sync
  L6_2 = L6_2.execute
  L7_2 = "UPDATE tk_housing_properties SET door_links = "
  L8_2 = L3_2
  L9_2 = ", interior = "
  L10_2 = L4_2
  L11_2 = ", doors = "
  L12_2 = L5_2
  L13_2 = " WHERE id = ?"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L4_2 = Database
  L4_2 = L4_2.Value
  L5_2 = L3_2
  L6_2 = Database
  L6_2 = L6_2.Json
  L7_2 = A2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = #L3_2
  L5_2 = L5_2 + 1
  L3_2[L5_2] = A0_2
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.execute
  L6_2 = "UPDATE tk_housing_properties SET `"
  L7_2 = A1_2
  L8_2 = "` = "
  L9_2 = L4_2
  L10_2 = " WHERE id = ?"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetHousePlayers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = TriggerClientEvent
    L7_2 = "tk_housing:doorsChanged"
    L8_2 = L5_2
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L8_1 = Doors
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L4_1
  L3_2 = L1_2
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = L5_1
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L2_2[A0_2] = nil
  L2_2 = "^"
  L3_2 = A0_2
  L4_2 = "%-"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = tostring
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.match
    L10_2 = L2_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = L0_1
      L8_2[L7_2] = nil
    end
  end
  L3_2 = Doors
  L3_2 = L3_2.SyncDoorSystemLock
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = L7_1
  L4_2 = A0_2
  L3_2(L4_2)
end
L8_1.ResetPropertyDoors = L9_1
L8_1 = Doors
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = L1_2.interior
  if L3_2 then
    L3_2 = L3_2.doors
  end
  if L3_2 then
    L3_2 = pairs
    L4_2 = L1_2.interior
    L4_2 = L4_2.doors
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.label
      if not L9_2 then
        L9_2 = L7_2
      end
      L10_2 = A0_2
      L11_2 = "-"
      L12_2 = L9_2
      L10_2 = L10_2 .. L11_2 .. L12_2
      L11_2 = L0_1
      L10_2 = L11_2[L10_2]
      if nil == L10_2 then
        L11_2 = L1_2.owner
        L11_2 = Config
        L11_2 = L11_2.NonOwnedMLODoorsUnlocked
        L10_2 = nil ~= L11_2 or L10_2
      end
      L11_2 = #L2_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L12_2.index = L7_2
      L13_2 = tostring
      L14_2 = L9_2
      L13_2 = L13_2(L14_2)
      L12_2.label = L13_2
      L12_2.locked = L10_2
      L2_2[L11_2] = L12_2
    end
    return L2_2
  end
  L3_2 = pairs
  L4_2 = L1_2.doors
  if L4_2 then
    L4_2 = L4_2.house
  end
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.index = L7_2
    L11_2 = L8_2.label
    if not L11_2 then
      L11_2 = "%s %s"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = _U
      L14_2 = "door"
      L13_2 = L13_2(L14_2)
      L14_2 = L7_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
    end
    L10_2.label = L11_2
    L11_2 = L1_1
    L11_2 = L11_2[A0_2]
    if L11_2 then
      L11_2 = L11_2.door
      if L11_2 then
        L11_2 = L11_2.house
        if L11_2 then
          L11_2 = L11_2[L7_2]
        end
      end
    end
    L11_2 = not L11_2
    L10_2.locked = L11_2
    L2_2[L9_2] = L10_2
  end
  return L2_2
end
L8_1.GetHouseDoors = L9_1
L8_1 = Doors
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L1_2.door
    if L1_2 then
      L1_2 = L1_2.house
    end
  end
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.doors
    if L3_2 then
      L3_2 = L3_2.house
    end
  end
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L8_1.IsEntranceUnlocked = L9_1
L8_1 = Doors
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.interior
    if L2_2 then
      L2_2 = L2_2.doors
    end
  end
  if not L2_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.model
    if L9_2 then
      L9_2 = A0_2
      L10_2 = "-"
      L11_2 = L8_2.label
      if not L11_2 then
        L11_2 = L7_2
      end
      L9_2 = L9_2 .. L10_2 .. L11_2
      L10_2 = L0_1
      L9_2 = L10_2[L9_2]
      if nil == L9_2 then
        L10_2 = L1_2.owner
        L10_2 = Config
        L10_2 = L10_2.NonOwnedMLODoorsUnlocked
        L9_2 = nil ~= L10_2 or L9_2
      end
      if not L9_2 then
        L10_2 = false
        return L10_2
      end
    end
  end
  L3_2 = true
  return L3_2
end
L8_1.IsDoorSystemLocked = L9_1
L8_1 = Doors
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.interior
    if L2_2 then
      L2_2 = L2_2.doors
    end
  end
  if not L2_2 then
    return
  end
  L2_2 = L1_2.owner
  L2_2 = Config
  L2_2 = L2_2.NonOwnedMLODoorsUnlocked
  L2_2 = nil ~= L2_2 or L2_2
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2.interior
  L5_2 = L5_2.doors
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.model
    if L10_2 then
      L10_2 = A0_2
      L11_2 = "-"
      L12_2 = L9_2.label
      if not L12_2 then
        L12_2 = L8_2
      end
      L10_2 = L10_2 .. L11_2 .. L12_2
      L11_2 = L0_1
      L11_2[L10_2] = L2_2
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L12_2.doorId = L10_2
      L12_2.locked = L2_2
      L13_2 = L9_2.model
      L12_2.model = L13_2
      L13_2 = L9_2.coords
      L12_2.coords = L13_2
      L13_2 = L9_2.second
      L12_2.second = L13_2
      L3_2[L11_2] = L12_2
    end
  end
  L4_2 = L3_2[1]
  if L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "tk_housing:updateDoorSystemDoorLock"
    L6_2 = -1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L8_1.SyncDoorSystemLock = L9_1
L8_1 = Doors
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.interior
  if L4_2 then
    L4_2 = L4_2.doors
  end
  if L4_2 then
    L4_2 = {}
    L5_2 = pairs
    L6_2 = L2_2.interior
    L6_2 = L6_2.doors
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.model
      if L11_2 then
        L11_2 = A0_2
        L12_2 = "-"
        L13_2 = L10_2.label
        if not L13_2 then
          L13_2 = L9_2
        end
        L11_2 = L11_2 .. L12_2 .. L13_2
        L12_2 = L0_1
        L12_2[L11_2] = A1_2
        L12_2 = #L4_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L13_2.doorId = L11_2
        L13_2.locked = A1_2
        L14_2 = L10_2.model
        L13_2.model = L14_2
        L14_2 = L10_2.coords
        L13_2.coords = L14_2
        L14_2 = L10_2.second
        L13_2.second = L14_2
        L4_2[L12_2] = L13_2
        L3_2 = L3_2 + 1
      end
    end
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "tk_housing:updateDoorSystemDoorLock"
      L7_2 = -1
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
    end
    return L3_2
  end
  L4_2 = L1_1
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[A0_2] = L5_2
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.door
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.door = L5_2
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.door
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.door
  L5_2 = L5_2.house
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.house = L5_2
  L4_2 = pairs
  L5_2 = L2_2.doors
  if L5_2 then
    L5_2 = L5_2.house
  end
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2 = L1_1
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2.door
    L9_2 = L9_2.house
    if not A1_2 then
      L10_2 = true
      if L10_2 then
        goto lbl_110
      end
    end
    L10_2 = nil
    ::lbl_110::
    L9_2[L8_2] = L10_2
    L3_2 = L3_2 + 1
  end
  if L3_2 > 0 then
    L4_2 = L7_1
    L5_2 = A0_2
    L4_2(L5_2)
  end
  return L3_2
end
L8_1.SetHouseDoorsLocked = L9_1
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:changeHouseCode"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = source
  L6_2 = GetPlayerFromId
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if A0_2 then
    L8_2 = type
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if "number" == L8_2 and L7_2 then
      goto lbl_24
    end
  end
  L8_2 = Utils
  L8_2 = L8_2.Debug
  L9_2 = "Got a property id that does not exist when changing the house code"
  L10_2 = A0_2
  L8_2(L9_2, L10_2)
  do return end
  ::lbl_24::
  L8_2 = Permissions
  L8_2 = L8_2.HasPermission
  L9_2 = L6_2
  L10_2 = A0_2
  L11_2 = "changeCode"
  L12_2 = L7_2.permissions
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L8_2 = Permissions
    L8_2 = L8_2.DenyCheater
    L9_2 = L5_2
    L10_2 = L6_2
    L11_2 = "changeHouseCode"
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L8_2 = A4_2.changeCodeForAll
  if L8_2 then
    L8_2 = L4_1
    L9_2 = L7_2
    L10_2 = A4_2.code
    L8_2(L9_2, L10_2)
    L8_2 = L5_1
    L9_2 = A0_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  else
    L8_2 = L2_1
    L9_2 = L7_2
    L10_2 = A2_2
    L11_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = L8_2 or L9_2
    if L8_2 then
      L9_2 = L8_2[A3_2]
    end
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "table" ~= L10_2 then
      return
    end
    L10_2 = A4_2.code
    L9_2.code = L10_2
    if "link" == A2_2 then
      L10_2 = L6_1
      L11_2 = A0_2
      L12_2 = "door_links"
      L13_2 = L7_2.doorLinks
      L10_2(L11_2, L12_2, L13_2)
    elseif "interior" == A2_2 then
      L10_2 = L6_1
      L11_2 = A0_2
      L12_2 = "interior"
      L13_2 = L7_2.interior
      L10_2(L11_2, L12_2, L13_2)
    else
      L10_2 = L6_1
      L11_2 = A0_2
      L12_2 = "doors"
      L13_2 = L7_2.doors
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L8_2 = Notify
  L9_2 = L5_2
  L10_2 = _U
  L11_2 = "code_changed"
  L10_2 = L10_2(L11_2)
  L11_2 = "success"
  L8_2(L9_2, L10_2, L11_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:updateDoorSystemDoorLock"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = source
  L6_2 = GetPlayerFromId
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = tostring
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.match
  L10_2 = "^(%d+)%-"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = L7_2 or L8_2
  if L7_2 then
    L8_2 = Main
    L8_2 = L8_2.GetProperty
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
  end
  if not L7_2 or not L8_2 then
    return
  end
  L9_2 = PoliceLockdown
  L9_2 = L9_2.IsLocked
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    return
  end
  L9_2 = Properties
  L9_2 = L9_2.WasBreached
  L10_2 = L5_2
  L11_2 = L7_2
  L9_2 = false == A1_2 and L9_2
  if not L9_2 then
    L10_2 = Properties
    L10_2 = L10_2.CanAccessProperty
    L11_2 = L6_2
    L12_2 = L5_2
    L13_2 = L7_2
    L14_2 = A4_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if not L10_2 then
      L10_2 = Webhook
      L11_2 = _U
      L12_2 = "webhook_cheater"
      L13_2 = Utils
      L13_2 = L13_2.GetIdentifiers
      L14_2 = L5_2
      L13_2 = L13_2(L14_2)
      L14_2 = "Door unlock with wrong code"
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L10_2 = Notify
      L11_2 = L5_2
      L12_2 = _U
      L13_2 = "wrong_code"
      L12_2 = L12_2(L13_2)
      L13_2 = "error"
      L10_2(L11_2, L12_2, L13_2)
      return
    end
  end
  L10_2 = tostring
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L11_2 = L10_2
  L10_2 = L10_2.match
  L12_2 = "^%d+%-(.+)$"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = nil
  L12_2 = pairs
  L13_2 = L2_1
  L14_2 = L8_2
  L15_2 = "interior"
  L13_2 = L13_2(L14_2, L15_2)
  if not L13_2 then
    L13_2 = {}
  end
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = L17_2.label
    if not L18_2 then
      L18_2 = L16_2
    end
    if L18_2 == L10_2 then
      L11_2 = L17_2
      break
    end
  end
  if L11_2 then
    L12_2 = L11_2.model
    if L12_2 then
      goto lbl_105
    end
  end
  do return end
  ::lbl_105::
  L12_2 = L11_2.model
  A3_2 = L11_2.coords
  A2_2 = L12_2
  if not L9_2 then
    L12_2 = Main
    L12_2 = L12_2.SetPropertyAccess
    L13_2 = L5_2
    L14_2 = L7_2
    L12_2(L13_2, L14_2)
  end
  L12_2 = L0_1
  L12_2[A0_2] = A1_2
  L12_2 = TriggerClientEvent
  L13_2 = "tk_housing:updateDoorSystemDoorLock"
  L14_2 = -1
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = A2_2
  L18_2 = A3_2
  L19_2 = L11_2.second
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:setHouseDoorIsOpen"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = source
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if "number" ~= L7_2 or not L6_2 then
    return
  end
  L7_2 = Permissions
  L7_2 = L7_2.HasPermission
  L8_2 = GetPlayerFromId
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2
  L10_2 = "lock"
  L11_2 = L6_2.permissions
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L7_2 = Permissions
    L7_2 = L7_2.DenyCheater
    L8_2 = L5_2
    L9_2 = GetPlayerFromId
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L10_2 = "setHouseDoorIsOpen"
    L7_2(L8_2, L9_2, L10_2)
    return
  end
  if "door" ~= A2_2 and "interior" ~= A2_2 and "link" ~= A2_2 then
    return
  end
  if "house" ~= A1_2 and "garage" ~= A1_2 then
    return
  end
  L7_2 = type
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if "number" ~= L7_2 then
    return
  end
  L7_2 = L1_1
  L8_2 = L1_1
  L8_2 = L8_2[A0_2]
  if not L8_2 then
    L8_2 = {}
  end
  L7_2[A0_2] = L8_2
  L7_2 = L1_1
  L7_2 = L7_2[A0_2]
  L8_2 = L1_1
  L8_2 = L8_2[A0_2]
  L8_2 = L8_2[A2_2]
  if not L8_2 then
    L8_2 = {}
  end
  L7_2[A2_2] = L8_2
  if "door" == A2_2 then
    L7_2 = L1_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2[A2_2]
    L8_2 = L1_1
    L8_2 = L8_2[A0_2]
    L8_2 = L8_2[A2_2]
    L8_2 = L8_2[A1_2]
    if not L8_2 then
      L8_2 = {}
    end
    L7_2[A1_2] = L8_2
    L7_2 = L1_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2[A2_2]
    L7_2 = L7_2[A1_2]
    L7_2[A3_2] = A4_2
  else
    L7_2 = L1_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2[A2_2]
    L7_2[A3_2] = A4_2
  end
  L7_2 = L7_1
  L8_2 = A0_2
  L7_2(L8_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCallback
L9_1 = "tk_housing:getDoorCodeAndOpenStatus"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = type
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if "number" ~= L7_2 or not L6_2 then
    L7_2 = A1_2
    L8_2 = {}
    L7_2(L8_2)
    return
  end
  L7_2 = L2_1
  L8_2 = L6_2
  L9_2 = A4_2
  L10_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L7_2 or L8_2
  if L7_2 then
    L8_2 = L7_2[A5_2]
  end
  if not L8_2 then
    L8_2 = {}
  end
  if "door" == A4_2 then
    L9_2 = L1_1
    L9_2 = L9_2[A2_2]
    if L9_2 then
      L9_2 = L9_2[A4_2]
      if L9_2 then
        L9_2 = L9_2[A3_2]
        if L9_2 then
          L9_2 = L9_2[A5_2]
        end
      end
    end
    if L9_2 then
      goto lbl_52
    end
  end
  L9_2 = L1_1
  L9_2 = L9_2[A2_2]
  if L9_2 then
    L9_2 = L9_2[A4_2]
    if L9_2 then
      L9_2 = L9_2[A5_2]
    end
  end
  ::lbl_52::
  L10_2 = GetPlayerFromId
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L11_2 = Permissions
  L11_2 = L11_2.HasPermission
  L12_2 = L10_2
  L13_2 = A2_2
  L14_2 = "changeCode"
  L15_2 = L6_2.permissions
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = A1_2
  L13_2 = {}
  if L11_2 then
    L14_2 = L8_2.code
    if L14_2 then
      goto lbl_71
    end
  end
  L14_2 = nil
  ::lbl_71::
  L13_2.code = L14_2
  L13_2.isOpen = L9_2
  L12_2(L13_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCallback
L9_1 = "tk_housing:getDoorMenuData"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = type
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if "number" ~= L8_2 or not L7_2 then
    L8_2 = A1_2
    L9_2 = {}
    L8_2(L9_2)
    return
  end
  L8_2 = GetPlayerFromId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = L2_1
  L10_2 = L7_2
  L11_2 = A4_2
  L12_2 = A3_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = L9_2 or L10_2
  if L9_2 then
    L10_2 = L9_2[A5_2]
  end
  if not L10_2 then
    L10_2 = {}
  end
  if "door" == A4_2 then
    L11_2 = L1_1
    L11_2 = L11_2[A2_2]
    if L11_2 then
      L11_2 = L11_2[A4_2]
      if L11_2 then
        L11_2 = L11_2[A3_2]
        if L11_2 then
          L11_2 = L11_2[A5_2]
        end
      end
    end
    if L11_2 then
      goto lbl_55
    end
  end
  L11_2 = L1_1
  L11_2 = L11_2[A2_2]
  if L11_2 then
    L11_2 = L11_2[A4_2]
    if L11_2 then
      L11_2 = L11_2[A5_2]
    end
  end
  ::lbl_55::
  L12_2 = Permissions
  L12_2 = L12_2.HasPermission
  L13_2 = L8_2
  L14_2 = A2_2
  L15_2 = "changeCode"
  L16_2 = L7_2.permissions
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = nil
  if L8_2 then
    L14_2 = Permissions
    L14_2 = L14_2.GetOwnerRole
    L15_2 = L8_2
    L16_2 = A2_2
    L14_2 = L14_2(L15_2, L16_2)
    L13_2 = L14_2
  end
  L14_2 = Keys
  L14_2 = L14_2.HasValidKey
  L15_2 = A0_2
  L16_2 = L7_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = Properties
  L15_2 = L15_2.GetEntryMode
  L16_2 = L8_2
  L17_2 = A0_2
  L18_2 = A2_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = PoliceLockdown
  L16_2 = L16_2.GetMenuData
  L17_2 = L8_2
  L18_2 = L7_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = A1_2
  L18_2 = {}
  L18_2.role = L13_2
  if L12_2 then
    L19_2 = L10_2.code
    if L19_2 then
      goto lbl_97
    end
  end
  L19_2 = nil
  ::lbl_97::
  L18_2.code = L19_2
  L18_2.isOpen = L11_2
  L19_2 = Main
  L19_2 = L19_2.GetCartItems
  L20_2 = A2_2
  L19_2 = L19_2(L20_2)
  if L19_2 then
    L19_2 = L19_2[A6_2]
  end
  if not L19_2 then
    L19_2 = {}
  end
  L18_2.cart = L19_2
  L18_2.entryMode = L15_2
  L18_2.hasKey = L14_2
  L19_2 = Permissions
  L19_2 = L19_2.HasPermission
  L20_2 = L8_2
  L21_2 = A2_2
  L22_2 = "furnish"
  L23_2 = L7_2.permissions
  L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
  L18_2.canFurnish = L19_2
  L19_2 = L16_2.policeLocked
  L18_2.policeLocked = L19_2
  L19_2 = L16_2.canManagePoliceLockdown
  L18_2.canManagePoliceLockdown = L19_2
  L19_2 = L16_2.canEnterPoliceLockdown
  L18_2.canEnterPoliceLockdown = L19_2
  L19_2 = L16_2.policeLockdownAvailable
  L18_2.policeLockdownAvailable = L19_2
  L19_2 = L7_2.utilities
  L18_2.utilities = L19_2
  L19_2 = L7_2.billsLocked
  if not L19_2 then
    L19_2 = false
  end
  L18_2.billsLocked = L19_2
  L19_2 = L7_2.rentLocked
  if not L19_2 then
    L19_2 = false
  end
  L18_2.rentLocked = L19_2
  L17_2(L18_2)
end
L8_1(L9_1, L10_1)
L8_1 = {}
L9_1 = 30000
L10_1 = RegisterCallback
L11_1 = "tk_housing:getDoorStates"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L8_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L8_1
    L3_2 = L3_2[A0_2]
    L3_2 = L2_2 - L3_2
    L4_2 = L9_1
    if L3_2 < L4_2 then
      L3_2 = A1_2
      L4_2 = {}
      return L3_2(L4_2)
    end
  end
  L3_2 = L8_1
  L3_2[A0_2] = L2_2
  L3_2 = A1_2
  L4_2 = L0_1
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = AddEventHandler
L11_1 = "playerDropped"
function L12_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L8_1
  L0_2[L1_2] = nil
end
L10_1(L11_1, L12_1)
