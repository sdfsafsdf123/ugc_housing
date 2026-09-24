local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
Lights = L0_1
L0_1 = Lights
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Furniture
  L2_2 = L2_2.CanEditField
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = Utils
  L5_2 = L5_2.GetLightingPermission
  L5_2 = L5_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = Furniture
    L2_2 = L2_2.CanEditField
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = "owner"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  return L2_2
end
L0_1.CanChange = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = #A0_2
    if 3 == L1_2 then
      goto lbl_11
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_11::
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "number" == L6_2 and not (L5_2 < 0) then
      L6_2 = 255
      if not (L5_2 > L6_2) then
        L6_2 = math
        L6_2 = L6_2.floor
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L5_2 == L6_2 then
          goto lbl_34
        end
      end
    end
    L6_2 = false
    do return L6_2 end
    ::lbl_34::
  end
  L1_2 = true
  return L1_2
end
L1_1 = Furniture
L1_1 = L1_1.RegisterDataField
L2_1 = "light"
L3_1 = {}
L3_1.permission = "use"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.GetLightData
    L3_2 = A1_2.model
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_14::
  L2_2 = type
  L3_2 = A0_2.on
  L2_2 = L2_2(L3_2)
  if "boolean" ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = type
  L3_2 = A0_2.brightness
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = A0_2.brightness
    if not (L2_2 < 0) then
      L2_2 = A0_2.brightness
      if not (L2_2 > 1) then
        goto lbl_34
      end
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_34::
  L2_2 = L0_1
  L3_2 = A0_2.color
  return L2_2(L3_2)
end
L3_1.validate = L4_1
L1_1(L2_1, L3_1)
L1_1 = Furniture
L1_1 = L1_1.RegisterDataField
L2_1 = "links"
L3_1 = {}
L3_1.permission = "furnish"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.EntryHasKind
    L6_2 = A2_2
    L7_2 = "switch"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_15
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_15::
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.furniture
  L5_2 = L5_2[A4_2]
  L6_2 = {}
  L7_2 = 0
  L8_2 = pairs
  L9_2 = A0_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L7_2 = L7_2 + 1
    L14_2 = math
    L14_2 = L14_2.type
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if "integer" == L14_2 and not (L12_2 < 1) then
      L14_2 = Config
      L14_2 = L14_2.Lights
      L14_2 = L14_2.maxLinks
      if not L14_2 then
        L14_2 = 32
      end
      if not (L12_2 > L14_2) then
        goto lbl_48
      end
    end
    L14_2 = false
    do return L14_2 end
    ::lbl_48::
    L14_2 = type
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if "string" == L14_2 then
      L14_2 = L6_2[L13_2]
      if not L14_2 then
        goto lbl_58
      end
    end
    L14_2 = false
    do return L14_2 end
    ::lbl_58::
    L14_2 = Main
    L14_2 = L14_2.GetFurnitureIndexById
    L15_2 = L5_2
    L16_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L15_2 = Utils
      L15_2 = L15_2.GetLightData
      L16_2 = L5_2[L14_2]
      L16_2 = L16_2.model
      L15_2 = L15_2(L16_2)
      if L15_2 then
        goto lbl_74
      end
    end
    L15_2 = false
    do return L15_2 end
    ::lbl_74::
    L6_2[L13_2] = true
  end
  L8_2 = #A0_2
  L8_2 = L7_2 == L8_2
  return L8_2
end
L3_1.validate = L4_1
L1_1(L2_1, L3_1)
L1_1 = Ambience
L1_1 = L1_1.RegisterField
L2_1 = "blackout"
L3_1 = {}
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Lights
  L2_2 = L2_2.CanChange
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L3_1.permission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Lights
  L1_2 = L1_2.blackoutToggle
  L1_2 = true == L1_2
  return L1_2
end
L3_1.validate = L4_1
L1_1(L2_1, L3_1)
L1_1 = Ambience
L1_1 = L1_1.RegisterField
L2_1 = "blinds"
L3_1 = {}
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Lights
  L2_2 = L2_2.CanChange
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L3_1.permission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "boolean" == L1_2
  return L1_2
end
L3_1.validate = L4_1
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
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
    L9_2 = Utils
    L9_2 = L9_2.GetLightData
    L10_2 = L8_2.model
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L8_2
    end
  end
  return L2_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.data
  if L2_2 then
    L2_2 = L2_2.light
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.color
  end
  if not L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.GetLightData
    L4_2 = A0_2.model
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.color
  end
  if nil == A1_2 then
    L4_2 = L2_2 or L4_2
    if L2_2 then
      L4_2 = L2_2.on
    end
    A1_2 = false ~= L4_2
  end
  L4_2 = {}
  L4_2.on = A1_2
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = L2_2.brightness
  end
  if not L5_2 then
    L5_2 = 1.0
  end
  L4_2.brightness = L5_2
  L5_2 = {}
  L6_2 = L3_2[1]
  L7_2 = L3_2[2]
  L8_2 = L3_2[3]
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L4_2.color = L5_2
  return L4_2
end
L3_1 = Lights
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = ipairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = {}
    L11_2 = ipairs
    L12_2 = L1_1
    L13_2 = A0_2
    L14_2 = L9_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2, L14_2)
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
      L17_2 = L16_2.id
      L18_2 = {}
      L19_2 = L2_1
      L20_2 = L16_2
      L21_2 = A1_2
      L19_2 = L19_2(L20_2, L21_2)
      L18_2.light = L19_2
      L10_2[L17_2] = L18_2
    end
    L11_2 = Furniture
    L11_2 = L11_2.SetDataBatch
    L12_2 = A0_2
    L13_2 = L9_2
    L14_2 = L10_2
    L15_2 = A3_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
  end
end
L3_1.SetAll = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      L1_2 = #A0_2
      if not (L1_2 > 3) then
        goto lbl_14
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_14::
  L1_2 = {}
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L2_2 = L2_2 + 1
    L9_2 = math
    L9_2 = L9_2.type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "integer" ~= L9_2 or L7_2 < 1 or L7_2 > 3 then
      L9_2 = false
      return L9_2
    end
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 then
      L9_2 = FurnitureDb
      L9_2 = L9_2.IsValidType
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = L1_2[L8_2]
        if not L9_2 then
          goto lbl_51
        end
      end
    end
    L9_2 = false
    do return L9_2 end
    ::lbl_51::
    L1_2[L8_2] = true
  end
  L3_2 = #A0_2
  L3_2 = L2_2 == L3_2
  return L3_2
end
L4_1 = RegisterNetEvent
L5_1 = "tk_housing:setAllLights"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "boolean" == L4_2 then
    L4_2 = type
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = Main
      L4_2 = L4_2.GetProperty
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_19
      end
    end
  end
  do return end
  ::lbl_19::
  L4_2 = L3_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = Lights
  L4_2 = L4_2.CanChange
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.Debug
    L5_2 = "all lights stopped: missing permission"
    L6_2 = L3_2
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Furniture
  L4_2 = L4_2.AllowDataChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = Lights
  L4_2 = L4_2.SetAll
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = Notify
  L5_2 = L3_2
  L6_2 = _U
  if A1_2 then
    L7_2 = "all_lights_on"
    if L7_2 then
      goto lbl_62
    end
  end
  L7_2 = "all_lights_off"
  ::lbl_62::
  L6_2 = L6_2(L7_2)
  L7_2 = "inform"
  L4_2(L5_2, L6_2, L7_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "tk_housing:useSwitch"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Lights
  L4_2 = L4_2.switches
  if false == L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L4_2 = FurnitureDb
  L4_2 = L4_2.IsValidType
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = Furniture
  L4_2 = L4_2.IsPlayerInside
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = Furniture
  L4_2 = L4_2.AllowDataChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.furniture
  L4_2 = L4_2[A1_2]
  L5_2 = Main
  L5_2 = L5_2.GetFurnitureIndexById
  L6_2 = L4_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = L4_2[L5_2]
  end
  if L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.EntryHasKind
    L8_2 = L6_2
    L9_2 = "switch"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_75
    end
  end
  do return end
  ::lbl_75::
  L7_2 = L6_2.data
  if L7_2 then
    L7_2 = L7_2.links
  end
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = {}
  L9_2 = {}
  L10_2 = ipairs
  L11_2 = L7_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = Main
    L16_2 = L16_2.GetFurnitureIndexById
    L17_2 = L4_2
    L18_2 = L15_2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = L16_2 or L17_2
    if L16_2 then
      L17_2 = L4_2[L16_2]
    end
    if L17_2 then
      L18_2 = Utils
      L18_2 = L18_2.GetLightData
      L19_2 = L17_2.model
      L18_2 = L18_2(L19_2)
      if L18_2 then
        L18_2 = #L8_2
        L18_2 = L18_2 + 1
        L8_2[L18_2] = L17_2
        L18_2 = #L9_2
        L18_2 = L18_2 + 1
        L9_2[L18_2] = L15_2
      end
    end
  end
  L10_2 = #L9_2
  L11_2 = #L7_2
  if L10_2 ~= L11_2 then
    L10_2 = Furniture
    L10_2 = L10_2.SetData
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = {}
    L14_2.links = L9_2
    L15_2 = L3_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L10_2 = #L8_2
  if 0 == L10_2 then
    L10_2 = Notify
    L11_2 = L3_2
    L12_2 = _U
    L13_2 = "no_lamps"
    L12_2 = L12_2(L13_2)
    L13_2 = "error"
    L10_2(L11_2, L12_2, L13_2)
    return
  end
  L10_2 = true
  L11_2 = ipairs
  L12_2 = L8_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L16_2.data
    if L17_2 then
      L17_2 = L17_2.light
      if L17_2 then
        L17_2 = L17_2.on
      end
    end
    if false == L17_2 then
      L10_2 = false
      break
    end
  end
  L11_2 = {}
  L12_2 = ipairs
  L13_2 = L8_2
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = L17_2.data
    if L18_2 then
      L18_2 = L18_2.light
    end
    L19_2 = L18_2 or L19_2
    if L18_2 then
      L19_2 = L18_2.color
    end
    if not L19_2 then
      L19_2 = Utils
      L19_2 = L19_2.GetLightData
      L20_2 = L17_2.model
      L19_2 = L19_2(L20_2)
      L19_2 = L19_2.color
    end
    L20_2 = L17_2.id
    L21_2 = {}
    L22_2 = {}
    L23_2 = not L10_2
    L22_2.on = L23_2
    L23_2 = L18_2 or L23_2
    if L18_2 then
      L23_2 = L18_2.brightness
    end
    if not L23_2 then
      L23_2 = 1.0
    end
    L22_2.brightness = L23_2
    L23_2 = {}
    L24_2 = L19_2[1]
    L25_2 = L19_2[2]
    L26_2 = L19_2[3]
    L23_2[1] = L24_2
    L23_2[2] = L25_2
    L23_2[3] = L26_2
    L22_2.color = L23_2
    L21_2.light = L22_2
    L11_2[L20_2] = L21_2
  end
  L12_2 = Furniture
  L12_2 = L12_2.SetDataBatch
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = L11_2
  L16_2 = L3_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = Notify
  L13_2 = L3_2
  L14_2 = _U
  L15_2 = "switch_flipped"
  L14_2 = L14_2(L15_2)
  L15_2 = "inform"
  L12_2(L13_2, L14_2, L15_2)
end
L4_1(L5_1, L6_1)
