local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "tk_housing:paintShell"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.ShellPaint
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
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
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  if "house" ~= A1_2 and "garage" ~= A1_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = next
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if nil ~= L4_2 then
      goto lbl_38
    end
  end
  do return end
  ::lbl_38::
  L4_2 = Furniture
  L4_2 = L4_2.CanEditField
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = "furnish"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.Debug
    L5_2 = "paint shell stopped: missing permission"
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
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L6_2 = "Interior"
  L5_2 = L5_2 .. L6_2
  L5_2 = L4_2[L5_2]
  if not L5_2 then
    L5_2 = ""
  end
  L6_2 = L5_2
  L5_2 = L5_2.match
  L7_2 = "^custom_(.+)$"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = Shells
    L6_2 = L6_2[L5_2]
  end
  if not L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.Debug
    L8_2 = "paint shell stopped: interior is not a custom shell"
    L9_2 = L3_2
    L10_2 = A0_2
    L11_2 = A1_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L7_2 = {}
  L8_2 = ipairs
  L9_2 = L6_2.objects
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = tostring
    L15_2 = L13_2.id
    L14_2 = L14_2(L15_2)
    L7_2[L14_2] = L13_2
  end
  L8_2 = {}
  L9_2 = 0
  L10_2 = pairs
  L11_2 = A2_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L9_2 = L9_2 + 1
    L16_2 = Config
    L16_2 = L16_2.ShellBuild
    L16_2 = L16_2.maxObjects
    if L9_2 > L16_2 then
      L16_2 = Utils
      L16_2 = L16_2.Debug
      L17_2 = "paint shell stopped: too many entries"
      L18_2 = L3_2
      L16_2(L17_2, L18_2)
      return
    end
    L16_2 = type
    L17_2 = L14_2
    L16_2 = L16_2(L17_2)
    L17_2 = L14_2
    L16_2 = L14_2.match
    L18_2 = "^%d+$"
    L16_2 = L16_2(L17_2, L18_2)
    L16_2 = "string" == L16_2 and L16_2 and L16_2
    if L16_2 then
      L17_2 = ShellPaint
      L17_2 = L17_2.IsPaintable
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if L17_2 then
        goto lbl_150
      end
    end
    L17_2 = Utils
    L17_2 = L17_2.Debug
    L18_2 = "paint shell stopped: unknown or unpaintable piece"
    L19_2 = L3_2
    L20_2 = L14_2
    L17_2(L18_2, L19_2, L20_2)
    do return end
    ::lbl_150::
    L17_2 = L15_2
    L18_2 = nil
    L19_2 = type
    L20_2 = L15_2
    L19_2 = L19_2(L20_2)
    if "table" == L19_2 then
      L19_2 = L15_2.material
      L18_2 = L15_2.tint
      L17_2 = L19_2
    end
    L19_2 = false
    if false ~= L17_2 and nil ~= L17_2 then
      L20_2 = type
      L21_2 = L17_2
      L20_2 = L20_2(L21_2)
      L20_2 = math
      L20_2 = L20_2.tointeger
      L21_2 = L17_2
      L20_2 = L20_2(L21_2)
      L19_2 = "number" == L20_2 and L19_2
      if L19_2 then
        L20_2 = ShellPaint
        L20_2 = L20_2.PaletteHas
        L21_2 = ShellPaint
        L21_2 = L21_2.KindInfo
        L22_2 = L16_2.kind
        L21_2 = L21_2(L22_2)
        L21_2 = L21_2.palette
        L22_2 = L19_2
        L20_2 = L20_2(L21_2, L22_2)
        if L20_2 then
          goto lbl_199
        end
      end
      L20_2 = Utils
      L20_2 = L20_2.Debug
      L21_2 = "paint shell stopped: invalid index"
      L22_2 = L3_2
      L23_2 = L14_2
      L24_2 = L17_2
      L20_2(L21_2, L22_2, L23_2, L24_2)
      return
    end
    ::lbl_199::
    L20_2 = false
    if false ~= L18_2 and nil ~= L18_2 then
      L21_2 = type
      L22_2 = L18_2
      L21_2 = L21_2(L22_2)
      L21_2 = math
      L21_2 = L21_2.tointeger
      L22_2 = L18_2
      L21_2 = L21_2(L22_2)
      L20_2 = "number" == L21_2 and L20_2
      if L20_2 then
        if 0 == L20_2 then
          goto lbl_235
        end
        L21_2 = ShellPaint
        L21_2 = L21_2.TintHas
        L22_2 = L20_2
        L21_2 = L21_2(L22_2)
        if L21_2 then
          goto lbl_235
        end
      end
      L21_2 = Utils
      L21_2 = L21_2.Debug
      L22_2 = "paint shell stopped: invalid tint"
      L23_2 = L3_2
      L24_2 = L14_2
      L25_2 = L18_2
      L21_2(L22_2, L23_2, L24_2, L25_2)
      return
    end
    ::lbl_235::
    if false == L20_2 and nil == L18_2 then
      L8_2[L14_2] = L19_2
    else
      L21_2 = {}
      L22_2 = L19_2 or L22_2
      if not L19_2 then
        L22_2 = nil
      end
      L21_2.material = L22_2
      L22_2 = L20_2 or L22_2
      if not L20_2 then
        L22_2 = 0
      end
      L21_2.tint = L22_2
      L8_2[L14_2] = L21_2
    end
  end
  L10_2 = Ambience
  L10_2 = L10_2.Get
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L11_2 = L10_2.paint
  if not L11_2 then
    L11_2 = {}
  end
  L12_2 = L11_2[A1_2]
  if not L12_2 then
    L12_2 = {}
  end
  L13_2 = pairs
  L14_2 = L8_2
  L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
  for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
    L19_2 = L18_2 or L19_2
    if false == L18_2 or not L18_2 then
      L19_2 = nil
    end
    L12_2[L17_2] = L19_2
  end
  L11_2[A1_2] = L12_2
  L13_2 = Ambience
  L13_2 = L13_2.Update
  L14_2 = A0_2
  L15_2 = {}
  L15_2.paint = L11_2
  L13_2(L14_2, L15_2)
end
L0_1(L1_1, L2_1)
