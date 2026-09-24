local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = Shells
if not L0_1 then
  L0_1 = {}
end
Shells = L0_1
L0_1 = 3
L1_1 = Shells
L1_1.SchemaVersion = L0_1
L1_1 = Shells
L1_1.WallClearance = 0.004
L1_1 = 3
L2_1 = {}
L2_1.wall = true
L2_1.halfwall = true
L2_1.lowwall = true
L2_1.doorway = true
L2_1.window = true
L2_1.longwall = true
L3_1 = {}
L4_1 = "floor"
L5_1 = "wall"
L6_1 = "halfwall"
L7_1 = "lowwall"
L8_1 = "doorway"
L9_1 = "longwall"
L10_1 = "ceiling"
L11_1 = "furniture"
L12_1 = "door"
L13_1 = "stair"
L14_1 = "step"
L15_1 = "railing"
L16_1 = "window"
L17_1 = "column"
L18_1 = "platform"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L3_1[8] = L11_1
L3_1[9] = L12_1
L3_1[10] = L13_1
L3_1[11] = L14_1
L3_1[12] = L15_1
L3_1[13] = L16_1
L3_1[14] = L17_1
L3_1[15] = L18_1
L4_1 = {}
L5_1 = {}
L6_1 = ipairs
L7_1 = L3_1
L6_1, L7_1, L8_1, L9_1 = L6_1(L7_1)
for L10_1, L11_1 in L6_1, L7_1, L8_1, L9_1 do
  L4_1[L11_1] = true
  L5_1[L11_1] = L10_1
end
L6_1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "."
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = ""
    L3_3 = A0_3
    L2_3 = A0_3.byte
    L2_3 = L2_3(L3_3)
    L3_3 = 8
    L4_3 = 1
    L5_3 = -1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L1_3
      L8_3 = 2
      L8_3 = L8_3 ^ L6_3
      L8_3 = L2_3 % L8_3
      L9_3 = L6_3 - 1
      L10_3 = 2
      L9_3 = L10_3 ^ L9_3
      L9_3 = L2_3 % L9_3
      L8_3 = L8_3 - L9_3
      if L8_3 > 0 then
        L8_3 = "1"
        if L8_3 then
          goto lbl_29
        end
      end
      L8_3 = "0"
      ::lbl_29::
      L7_3 = L7_3 .. L8_3
      L1_3 = L7_3
    end
    return L1_3
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = "0000"
  L1_2 = L1_2 .. L2_2
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%d%d%d?%d?%d?%d?"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = #A0_3
    if L1_3 < 6 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = 0
    L2_3 = 1
    L3_3 = 6
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L7_3 = A0_3
      L6_3 = A0_3.sub
      L8_3 = L5_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if "1" == L6_3 then
        L6_3 = 6
        L6_3 = L6_3 - L5_3
        L7_3 = 2
        L6_3 = L7_3 ^ L6_3
        if L6_3 then
          goto lbl_26
        end
      end
      L6_3 = 0
      ::lbl_26::
      L1_3 = L1_3 + L6_3
    end
    L2_3 = L6_1
    L3_3 = L2_3
    L2_3 = L2_3.sub
    L4_3 = L1_3 + 1
    L5_3 = L1_3 + 1
    return L2_3(L3_3, L4_3, L5_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = ""
  L4_2 = "=="
  L5_2 = "="
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = #A0_2
  L3_2 = L3_2 % 3
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2 .. L2_2
  return L1_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "[^"
  L4_2 = L6_1
  L5_2 = "=]"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "."
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if "=" == A0_3 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = ""
    L2_3 = L6_1
    L3_3 = L2_3
    L2_3 = L2_3.find
    L4_3 = A0_3
    L5_3 = 1
    L6_3 = true
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = L2_3 - 1
    L3_3 = 6
    L4_3 = 1
    L5_3 = -1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L1_3
      L8_3 = 2
      L8_3 = L8_3 ^ L6_3
      L8_3 = L2_3 % L8_3
      L9_3 = L6_3 - 1
      L10_3 = 2
      L9_3 = L10_3 ^ L9_3
      L9_3 = L2_3 % L9_3
      L8_3 = L8_3 - L9_3
      if L8_3 > 0 then
        L8_3 = "1"
        if L8_3 then
          goto lbl_39
        end
      end
      L8_3 = "0"
      ::lbl_39::
      L7_3 = L7_3 .. L8_3
      L1_3 = L7_3
    end
    return L1_3
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%d%d%d?%d?%d?%d?%d?%d?"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = #A0_3
    if 8 ~= L1_3 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = 0
    L2_3 = 1
    L3_3 = 8
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L7_3 = A0_3
      L6_3 = A0_3.sub
      L8_3 = L5_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if "1" == L6_3 then
        L6_3 = 8
        L6_3 = L6_3 - L5_3
        L7_3 = 2
        L6_3 = L7_3 ^ L6_3
        if L6_3 then
          goto lbl_26
        end
      end
      L6_3 = 0
      ::lbl_26::
      L1_3 = L1_3 + L6_3
    end
    L2_3 = string
    L2_3 = L2_3.char
    L3_3 = L1_3
    return L2_3(L3_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
function L9_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = A0_2 - 0.5
  L1_2 = L1_2(L2_2)
  ::lbl_15::
  return L1_2
end
L10_1 = Shells
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2.model
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
L10_1.IsTemplate = L11_1
L10_1 = Shells
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Shells
  L2_2 = L2_2.IsTemplate
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2.model
    return L2_2
  end
  L2_2 = A0_2.model
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L10_1.EntryModel = L11_1
L10_1 = Shells
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.model
  if L2_2 == A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Shells
  L2_2 = L2_2.IsTemplate
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      goto lbl_19
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_19::
  L2_2 = "^"
  L3_2 = A0_2.model
  L4_2 = L3_2
  L3_2 = L3_2.gsub
  L5_2 = "%%02d"
  L6_2 = "(%%d%%d)"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = "$"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L4_2 = A1_2
  L3_2 = A1_2.match
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = tonumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ShellPaint
  L5_2 = L5_2.PaletteHas
  L6_2 = A0_2.materials
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = nil
    return L5_2
  end
  return L4_2
end
L10_1.EntryMatches = L11_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  if L1_2 then
    L1_2 = L1_2.ShellCreatorProps
  end
  if L1_2 then
    L1_2 = pairs
    L2_2 = Config
    L2_2 = L2_2.ShellCreatorProps
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = Shells
        L13_2 = L13_2.EntryMatches
        L14_2 = L12_2
        L15_2 = A0_2
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          L13_2 = true
          return L13_2
        end
      end
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  if L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.GetCatalogEntryByModel
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "number" == L1_2 and A0_2 == A0_2
  return L1_2
end
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L11_1
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L11_1
    L2_2 = A0_2.y
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L11_1
      L2_2 = A0_2.z
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_25
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_25::
  L1_2 = {}
  L2_2 = A0_2.x
  L1_2.x = L2_2
  L2_2 = A0_2.y
  L1_2.y = L2_2
  L2_2 = A0_2.z
  L1_2.z = L2_2
  return L1_2
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.tointeger
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = ShellPaint
    L2_2 = L2_2.TintHas
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_22::
  return L1_2
end
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L11_1
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L11_1
    L2_2 = A0_2.y
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L11_1
      L2_2 = A0_2.z
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = L11_1
        L2_2 = A0_2.w
        L1_2 = L1_2(L2_2)
        if L1_2 then
          goto lbl_30
        end
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_30::
  L1_2 = {}
  L2_2 = A0_2.x
  L1_2.x = L2_2
  L2_2 = A0_2.y
  L1_2.y = L2_2
  L2_2 = A0_2.z
  L1_2.z = L2_2
  L2_2 = A0_2.w
  L1_2.w = L2_2
  return L1_2
end
L15_1 = 32
L16_1 = Shells
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.Trim
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "" == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = utf8
  L2_2 = L2_2.len
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L15_1
    if not (L2_2 > L3_2) then
      goto lbl_27
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_27::
  return L1_2
end
L16_1.NormalizeLabel = L17_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil == A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Config
  if L1_2 then
    L1_2 = L1_2.ShellBuild
    if L1_2 then
      L1_2 = L1_2.maxExits
    end
  end
  if not L1_2 then
    L1_2 = 12
  end
  L2_2 = #A0_2
  if L1_2 < L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" ~= L9_2 then
      L9_2 = nil
      return L9_2
    end
    L9_2 = L11_1
    L10_2 = L8_2.x
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L11_1
      L10_2 = L8_2.y
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = L11_1
        L10_2 = L8_2.z
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = L11_1
          L10_2 = L8_2.w
          L9_2 = L9_2(L10_2)
          if L9_2 then
            goto lbl_63
          end
        end
      end
    end
    L9_2 = nil
    do return L9_2 end
    ::lbl_63::
    L9_2 = Shells
    L9_2 = L9_2.NormalizeLabel
    L10_2 = L8_2.label
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L10_2 = nil
      return L10_2
    end
    L10_2 = {}
    L10_2.label = L9_2
    L11_2 = L8_2.x
    L10_2.x = L11_2
    L11_2 = L8_2.y
    L10_2.y = L11_2
    L11_2 = L8_2.z
    L10_2.z = L11_2
    L11_2 = L8_2.w
    L10_2.w = L11_2
    L2_2[L7_2] = L10_2
  end
  return L2_2
end
L17_1 = Shells
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = A0_2.name
    if "" ~= L1_2 then
      goto lbl_18
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_18::
  L1_2 = type
  L2_2 = A0_2.objects
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = Config
  if L1_2 then
    L1_2 = L1_2.ShellBuild
    if L1_2 then
      L1_2 = L1_2.maxObjects
    end
  end
  if not L1_2 then
    L1_2 = 900
  end
  L2_2 = A0_2.objects
  L2_2 = #L2_2
  if L1_2 < L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L14_1
  L3_2 = A0_2.spawn
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L16_1
  L4_2 = A0_2.exits
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = A0_2.interiorKind
  if "house" ~= L4_2 and "garage" ~= L4_2 and "both" ~= L4_2 then
    L4_2 = "both"
  end
  L5_2 = L11_1
  L6_2 = A0_2.gridSize
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = A0_2.gridSize
    if L5_2 > 0 then
      L5_2 = A0_2.gridSize
      if L5_2 then
        goto lbl_84
      end
    end
  end
  L5_2 = Config
  if L5_2 then
    L5_2 = L5_2.ShellBuild
    if L5_2 then
      L5_2 = L5_2.gridSize
    end
  end
  if not L5_2 then
    L5_2 = 2.0
  end
  ::lbl_84::
  L6_2 = type
  L7_2 = A0_2.version
  L6_2 = L6_2(L7_2)
  L6_2 = "number" ~= L6_2
  L7_2 = A0_2.objects
  L7_2 = L7_2[1]
  if L7_2 then
    L7_2 = L7_2.id
  end
  L7_2 = nil ~= L7_2
  L8_2 = {}
  L9_2 = 0
  L10_2 = {}
  L11_2 = ipairs
  L12_2 = A0_2.objects
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = type
    L18_2 = L16_2
    L17_2 = L17_2(L18_2)
    if "table" ~= L17_2 then
      L17_2 = nil
      return L17_2
    end
    L17_2 = ShellPaint
    L17_2 = L17_2.RemapModel
    L18_2 = KitNames
    L18_2 = L18_2.Rename
    L19_2 = L16_2.model
    L18_2 = L18_2(L19_2)
    L19_2 = L16_2.kind
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = L10_1
    L19_2 = L17_2
    L18_2 = L18_2(L19_2)
    if not L18_2 then
      L18_2 = nil
      return L18_2
    end
    L18_2 = type
    L19_2 = L16_2.kind
    L18_2 = L18_2(L19_2)
    if "string" == L18_2 then
      L19_2 = L16_2.kind
      L18_2 = L4_1
      L18_2 = L18_2[L19_2]
      if L18_2 then
        goto lbl_147
      end
    end
    L18_2 = nil
    do return L18_2 end
    ::lbl_147::
    L18_2 = L12_1
    L19_2 = L16_2.pos
    L18_2 = L18_2(L19_2)
    L19_2 = L12_1
    L20_2 = L16_2.rot
    L19_2 = L19_2(L20_2)
    if not L18_2 or not L19_2 then
      L20_2 = nil
      return L20_2
    end
    if L6_2 then
      L21_2 = L16_2.kind
      L20_2 = L2_1
      L20_2 = L20_2[L21_2]
      if L20_2 then
        L20_2 = math
        L20_2 = L20_2.abs
        L21_2 = L19_2.z
        L21_2 = L21_2 % 180.0
        L21_2 = L21_2 + 180.0
        L21_2 = L21_2 % 180.0
        L21_2 = L21_2 - 90.0
        L20_2 = L20_2(L21_2)
        L20_2 = L20_2 < 45.0
        if L20_2 then
          L21_2 = L18_2.y
          if L21_2 then
            goto lbl_188
          end
        end
        L21_2 = L18_2.x
        ::lbl_188::
        L22_2 = math
        L22_2 = L22_2.floor
        L23_2 = L21_2 / L5_2
        L23_2 = L23_2 + 0.5
        L22_2 = L22_2(L23_2)
        L22_2 = L22_2 * L5_2
        L22_2 = L21_2 - L22_2
        L23_2 = math
        L23_2 = L23_2.abs
        L24_2 = L22_2
        L23_2 = L23_2(L24_2)
        L24_2 = 0.01
        if L23_2 >= L24_2 then
          if L22_2 > 0 then
            L23_2 = Shells
            L23_2 = L23_2.WallClearance
            L23_2 = -L23_2
            if L23_2 then
              goto lbl_215
            end
          end
          L23_2 = Shells
          L23_2 = L23_2.WallClearance
          ::lbl_215::
          if L20_2 then
            L24_2 = L18_2.y
            L24_2 = L24_2 + L23_2
            L18_2.y = L24_2
          else
            L24_2 = L18_2.x
            L24_2 = L24_2 + L23_2
            L18_2.x = L24_2
          end
        end
      end
    end
    L20_2 = L15_2
    if L7_2 then
      L21_2 = type
      L22_2 = L16_2.id
      L21_2 = L21_2(L22_2)
      L21_2 = math
      L21_2 = L21_2.tointeger
      L22_2 = L16_2.id
      L21_2 = L21_2(L22_2)
      L20_2 = "number" == L21_2 and L20_2
      if L20_2 and not (L20_2 < 1) then
        L21_2 = L8_2[L20_2]
        if not L21_2 then
          goto lbl_251
        end
      end
      L21_2 = nil
      do return L21_2 end
      ::lbl_251::
      L8_2[L20_2] = true
    end
    if L9_2 < L20_2 then
      L9_2 = L20_2
    end
    L21_2 = {}
    L21_2.id = L20_2
    L21_2.model = L17_2
    L22_2 = L16_2.kind
    L21_2.kind = L22_2
    L21_2.pos = L18_2
    L21_2.rot = L19_2
    L22_2 = L16_2.free
    L22_2 = true == L22_2 or L22_2
    L21_2.free = L22_2
    L22_2 = L16_2.onWall
    L22_2 = true == L22_2 or L22_2
    L21_2.onWall = L22_2
    L22_2 = L13_1
    L23_2 = L16_2.tint
    L22_2 = L22_2(L23_2)
    L21_2.tint = L22_2
    L22_2 = type
    L23_2 = L16_2.cosmetic
    L22_2 = L22_2(L23_2)
    if "boolean" == L22_2 then
      L22_2 = L16_2.cosmetic
      L21_2.cosmetic = L22_2
    end
    L22_2 = #L10_2
    L22_2 = L22_2 + 1
    L10_2[L22_2] = L21_2
  end
  L11_2 = type
  L12_2 = A0_2.nextId
  L11_2 = L11_2(L12_2)
  if "number" == L11_2 then
    L11_2 = math
    L11_2 = L11_2.tointeger
    L12_2 = A0_2.nextId
    L11_2 = L11_2(L12_2)
    if L11_2 then
      goto lbl_309
    end
  end
  L11_2 = 0
  ::lbl_309::
  L12_2 = {}
  L13_2 = type
  L14_2 = A0_2.id
  L13_2 = L13_2(L14_2)
  if "string" == L13_2 then
    L13_2 = A0_2.id
    L14_2 = L13_2
    L13_2 = L13_2.match
    L15_2 = "^[0-9a-z]+$"
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 then
      L13_2 = A0_2.id
      L13_2 = #L13_2
      if L13_2 >= 6 then
        L13_2 = A0_2.id
        L13_2 = #L13_2
        if L13_2 <= 24 then
          L13_2 = A0_2.id
          if L13_2 then
            goto lbl_334
          end
        end
      end
    end
  end
  L13_2 = nil
  ::lbl_334::
  L12_2.id = L13_2
  L13_2 = A0_2.name
  L12_2.name = L13_2
  L12_2.objects = L10_2
  L13_2 = math
  L13_2 = L13_2.max
  L14_2 = L11_2
  L15_2 = L9_2 + 1
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.nextId = L13_2
  L12_2.spawn = L2_2
  L12_2.exits = L3_2
  L12_2.gridSize = L5_2
  L13_2 = L0_1
  L12_2.version = L13_2
  L12_2.interiorKind = L4_2
  return L12_2
end
L17_1.Validate = L18_1
L17_1 = 0
L18_1 = false
L19_1 = Shells
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L18_1
  if not L0_2 then
    L0_2 = math
    L0_2 = L0_2.randomseed
    L1_2 = GetGameTimer
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L0_2 = true
    L18_1 = L0_2
  end
  L0_2 = "0123456789abcdefghijklmnopqrstuvwxyz"
  L1_2 = nil
  repeat
    L2_2 = L17_1
    L2_2 = L2_2 + 1
    L17_1 = L2_2
    L2_2 = {}
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02x"
    L5_2 = L17_1
    L5_2 = L5_2 % 256
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2)
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
    L3_2 = 1
    L4_2 = 10
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = 1
      L9_2 = #L0_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L10_2 = L0_2
      L9_2 = L0_2.sub
      L11_2 = L7_2
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L2_2[L8_2] = L9_2
    end
    L3_2 = table
    L3_2 = L3_2.concat
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2
    L3_2 = Shells
    L3_2 = L3_2[L1_2]
  until not L3_2
  return L1_2
end
L19_1.NewId = L20_1
L19_1 = 1000
L20_1 = 10
L21_1 = Shells
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = pcall
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L0_3 = {}
    L1_3 = {}
    L2_3 = {}
    L3_3 = ipairs
    L4_3 = A0_2.objects
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = L8_3.model
      L9_3 = L1_3[L9_3]
      if not L9_3 then
        L10_3 = #L0_3
        L10_3 = L10_3 + 1
        L11_3 = L8_3.model
        L0_3[L10_3] = L11_3
        L9_3 = #L0_3
        L10_3 = L8_3.model
        L1_3[L10_3] = L9_3
      end
      L10_3 = L8_3.free
      if L10_3 then
        L10_3 = 1
        if L10_3 then
          goto lbl_30
        end
      end
      L10_3 = 0
      ::lbl_30::
      L11_3 = L8_3.onWall
      if L11_3 then
        L11_3 = 2
        if L11_3 then
          goto lbl_37
        end
      end
      L11_3 = 0
      ::lbl_37::
      L10_3 = L10_3 + L11_3
      L11_3 = type
      L12_3 = L8_3.cosmetic
      L11_3 = L11_3(L12_3)
      if "boolean" == L11_3 then
        L11_3 = 4
        if L11_3 then
          goto lbl_48
        end
      end
      L11_3 = 0
      ::lbl_48::
      L10_3 = L10_3 + L11_3
      L11_3 = L8_3.cosmetic
      if true == L11_3 then
        L11_3 = 8
        if L11_3 then
          goto lbl_57
        end
      end
      L11_3 = 0
      ::lbl_57::
      L10_3 = L10_3 + L11_3
      L11_3 = #L2_3
      L11_3 = L11_3 + 1
      L12_3 = {}
      L13_3 = L9_3
      L15_3 = L8_3.kind
      L14_3 = L5_1
      L14_3 = L14_3[L15_3]
      L15_3 = L9_1
      L16_3 = L8_3.pos
      L16_3 = L16_3.x
      L17_3 = L19_1
      L16_3 = L16_3 * L17_3
      L15_3 = L15_3(L16_3)
      L16_3 = L9_1
      L17_3 = L8_3.pos
      L17_3 = L17_3.y
      L18_3 = L19_1
      L17_3 = L17_3 * L18_3
      L16_3 = L16_3(L17_3)
      L17_3 = L9_1
      L18_3 = L8_3.pos
      L18_3 = L18_3.z
      L19_3 = L19_1
      L18_3 = L18_3 * L19_3
      L17_3 = L17_3(L18_3)
      L18_3 = L9_1
      L19_3 = L8_3.rot
      L19_3 = L19_3.x
      L20_3 = L20_1
      L19_3 = L19_3 * L20_3
      L18_3 = L18_3(L19_3)
      L19_3 = L9_1
      L20_3 = L8_3.rot
      L20_3 = L20_3.y
      L21_3 = L20_1
      L20_3 = L20_3 * L21_3
      L19_3 = L19_3(L20_3)
      L20_3 = L9_1
      L21_3 = L8_3.rot
      L21_3 = L21_3.z
      L22_3 = L20_1
      L21_3 = L21_3 * L22_3
      L20_3 = L20_3(L21_3)
      L21_3 = L10_3
      L22_3 = L8_3.id
      L23_3 = L8_3.tint
      L12_3[1] = L13_3
      L12_3[2] = L14_3
      L12_3[3] = L15_3
      L12_3[4] = L16_3
      L12_3[5] = L17_3
      L12_3[6] = L18_3
      L12_3[7] = L19_3
      L12_3[8] = L20_3
      L12_3[9] = L21_3
      L12_3[10] = L22_3
      L12_3[11] = L23_3
      L2_3[L11_3] = L12_3
    end
    L3_3 = {}
    L4_3 = ipairs
    L5_3 = A0_2.exits
    if not L5_3 then
      L5_3 = {}
    end
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = #L3_3
      L10_3 = L10_3 + 1
      L11_3 = {}
      L12_3 = L9_3.label
      L13_3 = L9_1
      L14_3 = L9_3.x
      L15_3 = L19_1
      L14_3 = L14_3 * L15_3
      L13_3 = L13_3(L14_3)
      L14_3 = L9_1
      L15_3 = L9_3.y
      L16_3 = L19_1
      L15_3 = L15_3 * L16_3
      L14_3 = L14_3(L15_3)
      L15_3 = L9_1
      L16_3 = L9_3.z
      L17_3 = L19_1
      L16_3 = L16_3 * L17_3
      L15_3 = L15_3(L16_3)
      L16_3 = L9_1
      L17_3 = L9_3.w
      L18_3 = L20_1
      L17_3 = L17_3 * L18_3
      L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L16_3(L17_3)
      L11_3[1] = L12_3
      L11_3[2] = L13_3
      L11_3[3] = L14_3
      L11_3[4] = L15_3
      L11_3[5] = L16_3
      L11_3[6] = L17_3
      L11_3[7] = L18_3
      L11_3[8] = L19_3
      L11_3[9] = L20_3
      L11_3[10] = L21_3
      L11_3[11] = L22_3
      L11_3[12] = L23_3
      L3_3[L10_3] = L11_3
    end
    L4_3 = json
    L4_3 = L4_3.encode
    L5_3 = {}
    L5_3.c = 1
    L6_3 = A0_2.id
    L5_3.i = L6_3
    L6_3 = A0_2.name
    L5_3.n = L6_3
    L5_3.m = L0_3
    L5_3.o = L2_3
    L6_3 = A0_2.nextId
    L5_3.x = L6_3
    L6_3 = {}
    L7_3 = L9_1
    L8_3 = A0_2.spawn
    L8_3 = L8_3.x
    L9_3 = L19_1
    L8_3 = L8_3 * L9_3
    L7_3 = L7_3(L8_3)
    L8_3 = L9_1
    L9_3 = A0_2.spawn
    L9_3 = L9_3.y
    L10_3 = L19_1
    L9_3 = L9_3 * L10_3
    L8_3 = L8_3(L9_3)
    L9_3 = L9_1
    L10_3 = A0_2.spawn
    L10_3 = L10_3.z
    L11_3 = L19_1
    L10_3 = L10_3 * L11_3
    L9_3 = L9_3(L10_3)
    L10_3 = L9_1
    L11_3 = A0_2.spawn
    L11_3 = L11_3.w
    L12_3 = L20_1
    L11_3 = L11_3 * L12_3
    L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L10_3(L11_3)
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L6_3[4] = L10_3
    L6_3[5] = L11_3
    L6_3[6] = L12_3
    L6_3[7] = L13_3
    L6_3[8] = L14_3
    L6_3[9] = L15_3
    L6_3[10] = L16_3
    L6_3[11] = L17_3
    L6_3[12] = L18_3
    L6_3[13] = L19_3
    L6_3[14] = L20_3
    L6_3[15] = L21_3
    L6_3[16] = L22_3
    L6_3[17] = L23_3
    L5_3.s = L6_3
    L5_3.e = L3_3
    L6_3 = A0_2.gridSize
    L5_3.g = L6_3
    L6_3 = A0_2.version
    L5_3.v = L6_3
    L6_3 = A0_2.interiorKind
    L5_3.k = L6_3
    return L4_3(L5_3)
  end
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = L7_1
  L4_2 = L2_2
  return L3_2(L4_2)
end
L21_1.Encode = L22_1
L21_1 = Shells
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = pcall
  L2_2 = L8_1
  L3_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      goto lbl_23
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_23::
  L3_2 = nil
  L4_2 = pcall
  L5_2 = json
  L5_2 = L5_2.decode
  L6_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L3_2 = L5_2
  L1_2 = L4_2
  if L1_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      goto lbl_40
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_40::
  L4_2 = L3_2.c
  if 1 ~= L4_2 then
    return L3_2
  end
  L4_2 = nil
  L5_2 = pcall
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = {}
    L1_3 = ipairs
    L2_3 = L3_2.o
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3[9]
      L8_3 = nil
      L9_3 = L7_3 & 4
      if 0 ~= L9_3 then
        L9_3 = L7_3 & 8
        L8_3 = 0 ~= L9_3
      end
      L9_3 = #L0_3
      L9_3 = L9_3 + 1
      L10_3 = {}
      L11_3 = L6_3[10]
      L10_3.id = L11_3
      L11_3 = L3_2.m
      L12_3 = L6_3[1]
      L11_3 = L11_3[L12_3]
      L10_3.model = L11_3
      L12_3 = L6_3[2]
      L11_3 = L3_1
      L11_3 = L11_3[L12_3]
      L10_3.kind = L11_3
      L11_3 = {}
      L12_3 = L6_3[3]
      L13_3 = L19_1
      L12_3 = L12_3 / L13_3
      L11_3.x = L12_3
      L12_3 = L6_3[4]
      L13_3 = L19_1
      L12_3 = L12_3 / L13_3
      L11_3.y = L12_3
      L12_3 = L6_3[5]
      L13_3 = L19_1
      L12_3 = L12_3 / L13_3
      L11_3.z = L12_3
      L10_3.pos = L11_3
      L11_3 = {}
      L12_3 = L6_3[6]
      L13_3 = L20_1
      L12_3 = L12_3 / L13_3
      L11_3.x = L12_3
      L12_3 = L6_3[7]
      L13_3 = L20_1
      L12_3 = L12_3 / L13_3
      L11_3.y = L12_3
      L12_3 = L6_3[8]
      L13_3 = L20_1
      L12_3 = L12_3 / L13_3
      L11_3.z = L12_3
      L10_3.rot = L11_3
      L11_3 = L7_3 & 1
      L11_3 = 0 ~= L11_3 or L11_3
      L10_3.free = L11_3
      L11_3 = L7_3 & 2
      L11_3 = 0 ~= L11_3 or L11_3
      L10_3.onWall = L11_3
      L10_3.cosmetic = L8_3
      L11_3 = L6_3[11]
      L10_3.tint = L11_3
      L0_3[L9_3] = L10_3
    end
    L1_3 = {}
    L2_3 = ipairs
    L3_3 = L3_2.e
    if not L3_3 then
      L3_3 = {}
    end
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = #L1_3
      L8_3 = L8_3 + 1
      L9_3 = {}
      L10_3 = L7_3[1]
      L9_3.label = L10_3
      L10_3 = L7_3[2]
      L11_3 = L19_1
      L10_3 = L10_3 / L11_3
      L9_3.x = L10_3
      L10_3 = L7_3[3]
      L11_3 = L19_1
      L10_3 = L10_3 / L11_3
      L9_3.y = L10_3
      L10_3 = L7_3[4]
      L11_3 = L19_1
      L10_3 = L10_3 / L11_3
      L9_3.z = L10_3
      L10_3 = L7_3[5]
      L11_3 = L20_1
      L10_3 = L10_3 / L11_3
      L9_3.w = L10_3
      L1_3[L8_3] = L9_3
    end
    L2_3 = {}
    L3_3 = L3_2.i
    L2_3.id = L3_3
    L3_3 = L3_2.n
    L2_3.name = L3_3
    L2_3.objects = L0_3
    L3_3 = L3_2.x
    L2_3.nextId = L3_3
    L3_3 = {}
    L4_3 = L3_2.s
    L4_3 = L4_3[1]
    L5_3 = L19_1
    L4_3 = L4_3 / L5_3
    L3_3.x = L4_3
    L4_3 = L3_2.s
    L4_3 = L4_3[2]
    L5_3 = L19_1
    L4_3 = L4_3 / L5_3
    L3_3.y = L4_3
    L4_3 = L3_2.s
    L4_3 = L4_3[3]
    L5_3 = L19_1
    L4_3 = L4_3 / L5_3
    L3_3.z = L4_3
    L4_3 = L3_2.s
    L4_3 = L4_3[4]
    L5_3 = L20_1
    L4_3 = L4_3 / L5_3
    L3_3.w = L4_3
    L2_3.spawn = L3_3
    L2_3.exits = L1_3
    L3_3 = L3_2.g
    L2_3.gridSize = L3_3
    L3_3 = L3_2.v
    L2_3.version = L3_3
    L3_3 = L3_2.k
    L2_3.interiorKind = L3_3
    return L2_3
  end
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L6_2
  L1_2 = L5_2
  if L1_2 then
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if "table" == L5_2 then
      goto lbl_59
    end
  end
  L5_2 = nil
  do return L5_2 end
  ::lbl_59::
  return L4_2
end
L21_1.Decode = L22_1
L21_1 = Shells
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.exits
  if L1_2 then
    L1_2 = A0_2.exits
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = {}
      L2_2 = ipairs
      L3_2 = A0_2.exits
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = #L1_2
        L8_2 = L8_2 + 1
        L9_2 = {}
        L10_2 = L7_2.label
        L9_2.label = L10_2
        L10_2 = vec4
        L11_2 = L7_2.x
        L12_2 = L7_2.y
        L13_2 = L7_2.z
        L14_2 = L7_2.w
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        L9_2.coords = L10_2
        L1_2[L8_2] = L9_2
      end
      return L1_2
    end
  end
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.name
  L2_2.label = L3_2
  L3_2 = vec4
  L4_2 = A0_2.spawn
  L4_2 = L4_2.x
  L5_2 = A0_2.spawn
  L5_2 = L5_2.y
  L6_2 = A0_2.spawn
  L6_2 = L6_2.z
  L7_2 = A0_2.spawn
  L7_2 = L7_2.w
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.coords = L3_2
  L1_2[1] = L2_2
  return L1_2
end
L21_1.BuildExits = L22_1
