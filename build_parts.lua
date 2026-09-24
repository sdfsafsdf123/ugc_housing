local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = {}
BuildParts = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_18
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_18::
  return L1_2
end
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = L1_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  if L5_2 and not A3_2 then
    return
  end
  L5_2 = L0_1
  L6_2 = {}
  L6_2.model = A0_2
  L6_2.label = A1_2
  L6_2.kind = A2_2
  L6_2.row = A3_2
  L5_2[L4_2] = L6_2
end
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = {}
  L6_2.price = A1_2
  L6_2.label = A2_2
  L6_2.model = A3_2
  L6_2.part = A5_2
  L7_2 = #A0_2
  L7_2 = L7_2 + 1
  A0_2[L7_2] = L6_2
  L7_2 = L2_1
  L8_2 = A3_2
  L9_2 = A2_2
  L10_2 = A4_2
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = ShellPaint
  L4_2 = L4_2.KindInfo
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = ipairs
  L6_2 = Config
  L6_2 = L6_2.ShellPaint
  L7_2 = L4_2.palette
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = ShellPaint
    L11_2 = L11_2.ModelFor
    L12_2 = {}
    L12_2.model = A0_2
    L12_2.kind = A2_2
    L13_2 = L10_2.index
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 ~= A0_2 then
      L12_2 = L2_1
      L13_2 = L11_2
      L14_2 = A3_2[L11_2]
      if not L14_2 then
        L14_2 = "%s %s"
        L15_2 = L14_2
        L14_2 = L14_2.format
        L16_2 = L10_2.label
        L17_2 = A1_2
        L14_2 = L14_2(L15_2, L16_2, L17_2)
      end
      L15_2 = A2_2
      L16_2 = nil
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.label
  L3_2 = " "
  L2_2 = L2_2 .. L3_2
  L4_2 = A0_2
  L3_2 = A0_2.sub
  L5_2 = 1
  L6_2 = #L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.sub
    L5_2 = #L2_2
    L5_2 = L5_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = A0_2
  ::lbl_18::
  return L3_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Shells
    L10_2 = L10_2.IsTemplate
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = L9_2.model
      L11_2 = L9_2.label
      L3_2[L10_2] = L11_2
    end
  end
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.hidden
    if L10_2 then
    else
      L10_2 = Shells
      L10_2 = L10_2.IsTemplate
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = ipairs
        L11_2 = Config
        L11_2 = L11_2.ShellPaint
        L12_2 = L9_2.materials
        L11_2 = L11_2[L12_2]
        if not L11_2 then
          L11_2 = {}
        end
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
        for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
          L16_2 = L3_1
          L17_2 = L2_2
          L18_2 = A1_2
          L19_2 = "%s %s"
          L20_2 = L19_2
          L19_2 = L19_2.format
          L21_2 = L15_2.label
          L22_2 = L9_2.label
          L19_2 = L19_2(L20_2, L21_2, L22_2)
          L20_2 = Shells
          L20_2 = L20_2.EntryModel
          L21_2 = L9_2
          L22_2 = L15_2.index
          L20_2 = L20_2(L21_2, L22_2)
          L21_2 = L9_2.kind
          L22_2 = {}
          L23_2 = L9_2.kind
          L22_2.kind = L23_2
          L23_2 = L9_2.materials
          L22_2.palette = L23_2
          L23_2 = L15_2.index
          L22_2.material = L23_2
          L23_2 = L9_2.model
          L22_2.style = L23_2
          L23_2 = L9_2.label
          L22_2.styleLabel = L23_2
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        end
      else
        L10_2 = ShellPaint
        L10_2 = L10_2.KindInfo
        L11_2 = L9_2.kind
        L10_2 = L10_2(L11_2)
        L11_2 = L10_2 or L11_2
        if L10_2 then
          L11_2 = ShellPaint
          L11_2 = L11_2.IndexOf
          L12_2 = L9_2.model
          L13_2 = L9_2.kind
          L11_2 = L11_2(L12_2, L13_2)
        end
        L12_2 = L11_2 or L12_2
        if L11_2 then
          L12_2 = ShellPaint
          L12_2 = L12_2.PaletteEntry
          L13_2 = L10_2.palette
          L14_2 = L11_2
          L12_2 = L12_2(L13_2, L14_2)
        end
        L13_2 = {}
        L14_2 = L9_2.kind
        L13_2.kind = L14_2
        if L12_2 then
          L14_2 = L10_2.palette
          L15_2 = L11_2
          L16_2 = L10_2.prefix
          L17_2 = L5_1
          L18_2 = L9_2.label
          L19_2 = L12_2
          L17_2 = L17_2(L18_2, L19_2)
          L13_2.styleLabel = L17_2
          L13_2.style = L16_2
          L13_2.material = L15_2
          L13_2.palette = L14_2
        end
        L14_2 = L3_1
        L15_2 = L2_2
        L16_2 = A1_2
        L17_2 = L9_2.label
        L18_2 = L9_2.model
        L19_2 = L9_2.kind
        L20_2 = L13_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L14_2 = L4_1
        L15_2 = L9_2.model
        L16_2 = L9_2.label
        L17_2 = L9_2.kind
        L18_2 = L3_2
        L14_2(L15_2, L16_2, L17_2, L18_2)
      end
    end
  end
  return L2_2
end
L7_1 = Config
L7_1 = L7_1.Furnishing
L7_1 = L7_1.buildParts
L8_1 = L7_1 or L8_1
if L7_1 then
  L8_1 = L7_1.enable
end
if L8_1 then
  L8_1 = L7_1.free
  if L8_1 then
    L8_1 = 0
    if L8_1 then
      goto lbl_28
    end
  end
  L8_1 = L7_1.price
  ::lbl_28::
  L9_1 = pairs
  L10_1 = L7_1.categories
  L9_1, L10_1, L11_1, L12_1 = L9_1(L10_1)
  for L13_1, L14_1 in L9_1, L10_1, L11_1, L12_1 do
    if L14_1 then
      L15_1 = Config
      L15_1 = L15_1.ShellCreatorProps
      L15_1 = L15_1[L13_1]
      if L15_1 then
        L15_1 = Config
        L15_1 = L15_1.Furniture
        L15_1 = L15_1[L13_1]
        if L15_1 then
          L15_1 = Utils
          L15_1 = L15_1.Warn
          L16_1 = "Build part category has the same name as a furniture category and was skipped, rename the category in config/furniture.lua"
          L17_1 = L13_1
          L15_1(L16_1, L17_1)
        else
          L15_1 = Config
          L15_1 = L15_1.Furniture
          L16_1 = L6_1
          L17_1 = Config
          L17_1 = L17_1.ShellCreatorProps
          L17_1 = L17_1[L13_1]
          L18_1 = L8_1
          L16_1 = L16_1(L17_1, L18_1)
          L15_1[L13_1] = L16_1
        end
      end
    end
  end
end
L8_1 = BuildParts
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" ~= L1_2 then
      L1_2 = nil
      return L1_2
    end
  end
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L1_2 = L2_2[L1_2]
  return L1_2
end
L8_1.Get = L9_1
L8_1 = BuildParts
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = BuildParts
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.row
  if not L2_2 then
    L2_2 = L1_2.entry
    if not L2_2 then
      L2_2 = {}
      L3_2 = L7_1.free
      if L3_2 then
        L3_2 = 0
        if L3_2 then
          goto lbl_24
        end
      end
      L3_2 = L7_1.price
      ::lbl_24::
      L2_2.price = L3_2
      L3_2 = L1_2.label
      L2_2.label = L3_2
      L3_2 = L1_2.model
      L2_2.model = L3_2
      L1_2.entry = L2_2
    end
  end
  L2_2 = L1_2.row
  if not L2_2 then
    L2_2 = L1_2.entry
  end
  return L2_2
end
L8_1.Entry = L9_1
L8_1 = BuildParts
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L7_1
  if L1_2 then
    L1_2 = L1_2.free
  end
  if L1_2 then
    L1_2 = BuildParts
    L1_2 = L1_2.Get
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.row
  L2_2 = nil == L2_2
  return L2_2
end
L8_1.IsFree = L9_1
L8_1 = BuildParts
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = BuildParts
  L2_2 = L2_2.Get
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = BuildParts
  L3_2 = L3_2.Get
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L2_2 and L3_2 then
    L4_2 = L2_2.kind
    L5_2 = L3_2.kind
    if L4_2 == L5_2 then
      goto lbl_19
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_19::
  L4_2 = ShellPaint
  L4_2 = L4_2.IndexOf
  L5_2 = L3_2.model
  L6_2 = L3_2.kind
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = nil ~= L4_2
  return L5_2
end
L8_1.IsMaterialSibling = L9_1
L8_1 = BuildParts
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = BuildParts
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = ShellPaint
    L2_2 = L2_2.KindInfo
    L3_2 = L1_2.kind
    L2_2 = L2_2(L3_2)
  end
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.ShellPaint
    L3_2 = L3_2.enable
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_20::
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = Config
  L5_2 = L5_2.ShellPaint
  L6_2 = L2_2.palette
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L11_2 = {}
    L12_2 = L9_2.index
    L11_2.index = L12_2
    L12_2 = L9_2.label
    L11_2.label = L12_2
    L12_2 = L9_2.swatch
    L11_2.swatch = L12_2
    L12_2 = ShellPaint
    L12_2 = L12_2.ModelFor
    L13_2 = {}
    L14_2 = L1_2.model
    L13_2.model = L14_2
    L14_2 = L1_2.kind
    L13_2.kind = L14_2
    L14_2 = L9_2.index
    L12_2 = L12_2(L13_2, L14_2)
    L11_2.model = L12_2
    L3_2[L10_2] = L11_2
  end
  L4_2 = {}
  L5_2 = ShellPaint
  L5_2 = L5_2.IndexOf
  L6_2 = L1_2.model
  L7_2 = L1_2.kind
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.current = L5_2
  L4_2.options = L3_2
  return L4_2
end
L8_1.Materials = L9_1
L8_1 = BuildParts
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = Config
  L3_2 = L3_2.ShellPaint
  L3_2 = L3_2.tints
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L10_2 = L7_2.index
    L9_2.index = L10_2
    L10_2 = L7_2.label
    L9_2.label = L10_2
    L10_2 = L7_2.swatch
    L9_2.swatch = L10_2
    L1_2[L8_2] = L9_2
  end
  L2_2 = {}
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = 0
  end
  L2_2.current = L3_2
  L2_2.options = L1_2
  return L2_2
end
L8_1.Tints = L9_1
