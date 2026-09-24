local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
ShellPaint = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L2_1[26] = 40
L2_1[27] = 40
L2_1[29] = 40
L2_1[30] = 40
L2_1[31] = 40
L2_1[32] = 40
L2_1[33] = 40
L2_1[34] = 40
L2_1[35] = 40
L2_1[36] = 40
L2_1[37] = 40
L2_1[38] = 40
L2_1[39] = 40
L1_1.walls = L2_1
L2_1 = ShellPaint
function L3_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.ShellPaint
  if L1_2 then
    L1_2 = L1_2.kinds
    if L1_2 then
      L1_2 = L1_2[A0_2]
    end
  end
  return L1_2
end
L2_1.KindInfo = L3_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = type
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      goto lbl_10
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_10::
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^"
  L5_2 = A1_2.prefix
  L6_2 = "(%d%d)(.*)$"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    if "" == L3_2 then
      goto lbl_27
    end
    L5_2 = L3_2
    L4_2 = L3_2.match
    L6_2 = "^_%l+$"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_27::
  L4_2 = tonumber
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2
  return L4_2, L5_2
end
L3_1 = ShellPaint
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L3_2 = A0_2
  L4_2 = ShellPaint
  L4_2 = L4_2.KindInfo
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end
L3_1.IndexOf = L4_1
L3_1 = ShellPaint
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L2_2[A1_2]
  end
  if not L2_2 then
    L2_2 = A1_2
  end
  return L2_2
end
L3_1.RemapIndex = L4_1
L3_1 = ShellPaint
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ShellPaint
  L2_2 = L2_2.KindInfo
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L6_2 = L2_2.palette
    L5_2 = L1_1
    L5_2 = L5_2[L6_2]
    if L5_2 then
      L5_2 = L5_2[L3_2]
    end
  end
  if not L5_2 then
    return A0_2
  end
  L6_2 = "%s%02d%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = L2_2.prefix
  L9_2 = L5_2
  L10_2 = L4_2
  return L6_2(L7_2, L8_2, L9_2, L10_2)
end
L3_1.RemapModel = L4_1
L3_1 = ShellPaint
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = ipairs
    L4_2 = Config
    L4_2 = L4_2.ShellPaint
    if L4_2 then
      L4_2 = L4_2[A0_2]
    end
    if not L4_2 then
      L4_2 = {}
    end
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.index
      L2_2[L9_2] = L8_2
    end
    L3_2 = L0_1
    L3_2[A0_2] = L2_2
  end
  L3_2 = L2_2[A1_2]
  return L3_2
end
L3_1.PaletteEntry = L4_1
L3_1 = ShellPaint
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ShellPaint
  L2_2 = L2_2.PaletteEntry
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = nil ~= L2_2
  return L2_2
end
L3_1.PaletteHas = L4_1
L3_1 = ShellPaint
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 or A0_2 < 1 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = ShellPaint
  L1_2 = L1_2.PaletteEntry
  L2_2 = "tints"
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L3_1.TintEntry = L4_1
L3_1 = ShellPaint
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = ShellPaint
  L1_2 = L1_2.TintEntry
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L3_1.TintHas = L4_1
L3_1 = ShellPaint
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = A0_2
    L2_2 = nil
    return L1_2, L2_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.material
    L2_2 = A0_2.tint
    return L1_2, L2_2
  end
  L1_2 = nil
  L2_2 = nil
  return L1_2, L2_2
end
L3_1.ReadEntry = L4_1
L3_1 = ShellPaint
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ShellPaint
  L1_2 = L1_2.IndexOf
  L2_2 = A0_2.model
  L3_2 = A0_2.kind
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L3_1.IsPaintable = L4_1
L3_1 = ShellPaint
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Config
  L2_2 = L2_2.ShellPaint
  if L2_2 then
    L2_2 = L2_2.enable
  end
  if not L2_2 or not A1_2 then
    L2_2 = A0_2.model
    return L2_2
  end
  L2_2 = ShellPaint
  L2_2 = L2_2.KindInfo
  L3_2 = A0_2.kind
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L4_2 = A0_2.model
  L5_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L5_2 = A0_2.model
    return L5_2
  end
  L5_2 = ShellPaint
  L5_2 = L5_2.RemapIndex
  L6_2 = L2_2.palette
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  A1_2 = L5_2
  L5_2 = ShellPaint
  L5_2 = L5_2.PaletteHas
  L6_2 = L2_2.palette
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = A0_2.model
    return L5_2
  end
  L5_2 = "%s%02d%s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L2_2.prefix
  L8_2 = A1_2
  L9_2 = L4_2
  return L5_2(L6_2, L7_2, L8_2, L9_2)
end
L3_1.ModelFor = L4_1
