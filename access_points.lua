local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
AccessPoints = L0_1
L0_1 = {}
L1_1 = "storage"
L2_1 = "wardrobe"
L3_1 = "mirror"
L4_1 = "sink"
L5_1 = "shower"
L6_1 = "bathtub"
L7_1 = "oven"
L8_1 = "microwave"
L9_1 = "switch"
L10_1 = "music"
L11_1 = "generator"
L12_1 = "battery"
L13_1 = "assistant"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L1_1 = nil
L2_1 = AccessPoints
function L3_1()
  local L0_2, L1_2
  L0_2 = type
  L1_2 = Config
  L1_2 = L1_2.SpotKinds
  L0_2 = L0_2(L1_2)
  if "table" == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.SpotKinds
    if L0_2 then
      goto lbl_12
    end
  end
  L0_2 = L0_1
  ::lbl_12::
  return L0_2
end
L2_1.GetKinds = L3_1
L2_1 = AccessPoints
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  if not L1_2 then
    L1_2 = {}
    L1_1 = L1_2
    L1_2 = ipairs
    L2_2 = AccessPoints
    L2_2 = L2_2.GetKinds
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L1_1
      L7_2[L6_2] = true
    end
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  L1_2 = true == L1_2
  return L1_2
end
L2_1.IsKind = L3_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = AccessPoints
  L1_2 = L1_2.IsKind
  L2_2 = A0_2.kind
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2.coords
  L1_2 = L1_2(L2_2)
  L1_2 = "vector4" == L1_2
  return L1_2
end
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = type
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if "table" ~= L6_2 then
    return
  end
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = A5_2 or L12_2
    if A5_2 then
      L12_2 = A5_2[L10_2]
    end
    if not L12_2 then
      L12_2 = L2_1
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = #A0_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L14_2 = A2_2
        L15_2 = "_"
        L16_2 = L10_2
        L14_2 = L14_2 .. L15_2 .. L16_2
        L13_2.id = L14_2
        L14_2 = L11_2.kind
        L13_2.kind = L14_2
        L14_2 = L11_2.label
        L13_2.label = L14_2
        L14_2 = L11_2.model
        L13_2.model = L14_2
        L14_2 = L11_2.coords
        L13_2.coords = L14_2
        L13_2.source = A2_2
        A0_2[L12_2] = L13_2
      else
        L12_2 = Utils
        L12_2 = L12_2.Warn
        L13_2 = A3_2
        L14_2 = A4_2
        L15_2 = L10_2
        L12_2(L13_2, L14_2, L15_2)
      end
    end
  end
end
L4_1 = AccessPoints
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  if "house" ~= A1_2 and "garage" ~= A1_2 then
    return L2_2
  end
  L3_2 = nil
  L4_2 = nil
  if "house" == A1_2 then
    L3_2 = A0_2.houseInterior
    L5_2 = Config
    L5_2 = L5_2.HouseInteriors
    L4_2 = L5_2[L3_2]
  else
    L3_2 = A0_2.garageInterior
    L5_2 = Config
    L5_2 = L5_2.GarageInteriors
    L4_2 = L5_2[L3_2]
  end
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = L4_2.spots
  end
  L6_2 = A0_2.interior
  if L6_2 then
    L6_2 = L6_2[A1_2]
  end
  L7_2 = L6_2 or L7_2
  if L6_2 then
    L7_2 = L6_2.spotsOff
  end
  L8_2 = nil
  L9_2 = type
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  if "table" == L9_2 then
    L9_2 = {}
    L8_2 = L9_2
    L9_2 = ipairs
    L10_2 = L7_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L8_2[L14_2] = true
    end
  end
  L9_2 = L3_1
  L10_2 = L2_2
  L11_2 = L5_2
  L12_2 = "interior"
  L13_2 = "A spot in this interior has an invalid kind or coords and was skipped - check the interior key and index"
  L14_2 = L3_2
  L15_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = L6_2 or L9_2
  if L6_2 then
    L9_2 = L6_2.spots
  end
  L10_2 = L3_1
  L11_2 = L2_2
  L12_2 = L9_2
  L13_2 = "property"
  L14_2 = "A spot on this property has an invalid kind or coords and was skipped - check the property id and index"
  L15_2 = A0_2.id
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  return L2_2
end
L4_1.Get = L5_1
L4_1 = AccessPoints
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = AccessPoints
  L4_2 = L4_2.Get
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    if L9_2 == A2_2 then
      return L8_2
    end
  end
  L3_2 = nil
  return L3_2
end
L4_1.Find = L5_1
