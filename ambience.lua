local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
Ambience = L0_1
L0_1 = Ambience
L1_1 = {}
L0_1.Fields = L1_1
L0_1 = Ambience
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = Ambience
  L2_2 = L2_2.Fields
  L2_2[A0_2] = A1_2
end
L0_1.RegisterField = L1_1
L0_1 = Ambience
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = type
  L3_2 = L1_2.ambience
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    L1_2.ambience = L2_2
  end
  L2_2 = L1_2.ambience
  return L2_2
end
L0_1.Get = L1_1
L0_1 = {}
L0_1.electricity = true
L1_1 = Ambience
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
    L8_2 = L0_1
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L1_2[L6_2] = L7_2
    end
  end
  return L1_2
end
L1_1.ForClient = L2_1
L1_1 = Ambience
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Ambience
  L2_2 = L2_2.Get
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L2_2[L7_2] = L8_2
  end
  if A0_2 > 0 then
    L3_2 = PropertyDb
    L3_2 = L3_2.UpdateAmbience
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L1_1.Save = L2_1
L1_1 = Ambience
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Ambience
  L2_2 = L2_2.Save
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = Main
  L3_2 = L3_2.ClearExportCache
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:updateAmbience"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = Ambience
  L7_2 = L7_2.ForClient
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  return L2_2
end
L1_1.Update = L2_1
L1_1 = {}
L2_1 = 100
L3_1 = RegisterNetEvent
L4_1 = "tk_housing:setAmbience"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = source
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = next
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = L1_1
  L4_2 = L4_2[L2_2]
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[L2_2]
    L4_2 = L3_2 - L4_2
    L5_2 = L2_1
    if L4_2 < L5_2 then
      return
    end
  end
  L4_2 = L1_1
  L4_2[L2_2] = L3_2
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = type
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L11_2 = Ambience
    L11_2 = L11_2.Fields
    L11_2 = "string" == L11_2 and L11_2
    if not L11_2 then
      L12_2 = Utils
      L12_2 = L12_2.Debug
      L13_2 = "set ambience stopped: unknown field"
      L14_2 = L2_2
      L15_2 = L9_2
      L12_2(L13_2, L14_2, L15_2)
      return
    end
    L12_2 = L11_2.permission
    L13_2 = nil
    L14_2 = type
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if "function" == L14_2 then
      L14_2 = L12_2
      L15_2 = L2_2
      L16_2 = A0_2
      L14_2 = L14_2(L15_2, L16_2)
      L13_2 = L14_2
    else
      L14_2 = Furniture
      L14_2 = L14_2.CanEditField
      L15_2 = L2_2
      L16_2 = A0_2
      L17_2 = L12_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L13_2 = L14_2
    end
    if not L13_2 then
      L14_2 = Utils
      L14_2 = L14_2.Debug
      L15_2 = "set ambience stopped: missing permission"
      L16_2 = L2_2
      L17_2 = L9_2
      L14_2(L15_2, L16_2, L17_2)
      return
    end
    L14_2 = L11_2.validate
    L15_2 = L10_2
    L16_2 = L4_2
    L14_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
      L14_2 = Utils
      L14_2 = L14_2.Debug
      L15_2 = "set ambience stopped: invalid value"
      L16_2 = L2_2
      L17_2 = L9_2
      L18_2 = L10_2
      L14_2(L15_2, L16_2, L17_2, L18_2)
      return
    end
  end
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = Ambience
    L11_2 = L11_2.Fields
    L11_2 = L11_2[L9_2]
    L11_2 = L11_2.onSet
    if L11_2 then
      L12_2 = L11_2
      L13_2 = L10_2
      L14_2 = L4_2
      L12_2(L13_2, L14_2)
    end
  end
  L5_2 = Ambience
  L5_2 = L5_2.Update
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L1_1
  L0_2[L1_2] = nil
end
L3_1(L4_1, L5_1)
