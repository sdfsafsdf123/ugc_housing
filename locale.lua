local L0_1, L1_1
L0_1 = {}
Locales = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Locales
  L2_2 = Config
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2[A0_2]
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = "!%s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  do return L2_2(L3_2, L4_2) end
  ::lbl_16::
  L2_2 = L1_2[A0_2]
  L3_2 = select
  L4_2 = "#"
  L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = L2_2
  L6_2 = "%%s"
  L7_2 = ""
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if L3_2 ~= L5_2 then
    return L2_2
  end
  L6_2 = pcall
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = L2_2
  L9_2 = ...
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L7_2 or L8_2
  if not L6_2 or not L7_2 then
    L8_2 = L2_2
  end
  return L8_2
end
_U = L0_1
