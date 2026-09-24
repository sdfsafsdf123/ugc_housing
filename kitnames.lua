local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = {}
KitNames = L0_1
L0_1 = {}
L0_1.b = "balustrade"
L0_1.w = "craftsman"
L0_1.m = "modern"
L0_1.c = "cable"
L0_1.g = "glass"
L0_1.z = "glasscap"
L0_1.p = "plate"
L1_1 = {}
L1_1.i = "inset"
L1_1.e = "extended"
L1_1.k = "corner"
L2_1 = {}
L2_1.h = "half"
L2_1.q = "quarter"
L3_1 = {}
L3_1.wall = true
L3_1.halfwall = true
L3_1.doorwall = true
L3_1.lowwall = true
L3_1.floor = true
L3_1.window = true
L3_1.column = true
L3_1.platform = true
L4_1 = {}
L5_1 = {}
L5_1.a = true
L4_1.doorwall = L5_1
L5_1 = {}
L5_1.p = true
L5_1.g = true
L4_1.window = L5_1
L5_1 = {}
L5_1.r = true
L5_1.c = true
L5_1.s = true
L4_1.column = L5_1
L5_1 = {}
L5_1.h = true
L5_1.d = true
L5_1.hd = true
L5_1.w = true
L5_1.hw = true
L4_1.platform = L5_1
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = pairs
L9_1 = L0_1
L8_1, L9_1, L10_1, L11_1 = L8_1(L9_1)
for L12_1, L13_1 in L8_1, L9_1, L10_1, L11_1 do
  L5_1[L13_1] = L12_1
end
L8_1 = pairs
L9_1 = L1_1
L8_1, L9_1, L10_1, L11_1 = L8_1(L9_1)
for L12_1, L13_1 in L8_1, L9_1, L10_1, L11_1 do
  L6_1[L13_1] = L12_1
end
L8_1 = pairs
L9_1 = L2_1
L8_1, L9_1, L10_1, L11_1 = L8_1(L9_1)
for L12_1, L13_1 in L8_1, L9_1, L10_1, L11_1 do
  L7_1[L13_1] = L12_1
end
L8_1 = KitNames
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = "housing_rail_"
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L3_2 = L3_2 .. L4_2
  if "" ~= A1_2 then
    L4_2 = L3_2
    L5_2 = "_"
    L6_2 = L1_1
    L6_2 = L6_2[A1_2]
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2 = L4_2
  end
  if "" ~= A2_2 then
    L4_2 = L3_2
    L5_2 = "_"
    L6_2 = L2_1
    L6_2 = L6_2[A2_2]
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2 = L4_2
  end
  return L3_2
end
L8_1.Rail = L9_1
L8_1 = KitNames
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^housing_rail_(%l+)(.*)$"
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L3_2 = L5_1
    L3_2 = L3_2[L1_2]
  end
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = ""
  L5_2 = ""
  L7_2 = L2_2
  L6_2 = L2_2.gmatch
  L8_2 = "_(%l+)"
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
  for L10_2 in L6_2, L7_2, L8_2, L9_2 do
    L11_2 = L6_1
    L11_2 = L11_2[L10_2]
    if L11_2 and "" == L4_2 and "" == L5_2 then
      L11_2 = L6_1
      L4_2 = L11_2[L10_2]
    else
      L11_2 = L7_1
      L11_2 = L11_2[L10_2]
      if L11_2 and "" == L5_2 then
        L11_2 = L7_1
        L5_2 = L11_2[L10_2]
      else
        L11_2 = nil
        return L11_2
      end
    end
  end
  L6_2 = KitNames
  L6_2 = L6_2.Rail
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 ~= A0_2 then
    L6_2 = nil
    return L6_2
  end
  L6_2 = L3_2
  L7_2 = L4_2
  L8_2 = L5_2
  return L6_2, L7_2, L8_2
end
L8_1.ParseRail = L9_1
L8_1 = KitNames
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^housing_stairs_%d%d(.*)$"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  if "" == L1_2 then
    L2_2 = ""
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.match
  L4_2 = "^_(%l+)$"
  return L2_2(L3_2, L4_2)
end
L8_1.StairCode = L9_1
L8_1 = KitNames
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = KitNames
  L1_2 = L1_2.StairCode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = "housing_stairs_col"
  if "" ~= L1_2 then
    L3_2 = "_"
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    if L3_2 then
      goto lbl_25
    end
  end
  L3_2 = ""
  ::lbl_25::
  L2_2 = L2_2 .. L3_2
  return L2_2
end
L8_1.StairCollider = L9_1
L8_1 = KitNames
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    return A0_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^(%l+)(%d%d)$"
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L3_1
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = "housing_%s_%s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L6_2 = L2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.match
  L5_2 = "^(%l+)(%d%d)_(%l%l?)$"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L6_2 = L4_1
  L6_2 = L6_2[L3_2]
  if L6_2 then
    L6_2 = L6_2[L5_2]
  end
  if L6_2 then
    L6_2 = "housing_%s_%s_%s"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L3_2
    L9_2 = L4_2
    L10_2 = L5_2
    return L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2.match
  L8_2 = "^stair(%d%d)(%l*)$"
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L8_2 = "housing_stairs_"
    L9_2 = L6_2
    if "" ~= L7_2 then
      L10_2 = "_"
      L11_2 = L7_2
      L10_2 = L10_2 .. L11_2
      if L10_2 then
        goto lbl_52
      end
    end
    L10_2 = ""
    ::lbl_52::
    L8_2 = L8_2 .. L9_2 .. L10_2
    return L8_2
  end
  L9_2 = A0_2
  L8_2 = A0_2.match
  L10_2 = "^rail([iek]?)([bwmcgzp])([hq]?)$"
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L11_2 = KitNames
    L11_2 = L11_2.Rail
    L12_2 = L9_2
    L13_2 = L8_2
    L14_2 = L10_2
    return L11_2(L12_2, L13_2, L14_2)
  end
  return A0_2
end
L8_1.Rename = L9_1
