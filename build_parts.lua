local L0_1, L1_1, L2_1, L3_1
L0_1 = Furniture
L0_1 = L0_1.RegisterDataField
L1_1 = "tint"
L2_1 = {}
L2_1.permission = "furnish"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = BuildParts
  L3_2 = L3_2.Get
  L4_2 = A2_2.model
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = ShellPaint
  L3_2 = L3_2.TintHas
  L4_2 = A0_2
  L3_2 = 0 == A0_2 or L3_2
  return L3_2
end
L2_1.validate = L3_1
L0_1(L1_1, L2_1)
L0_1 = BuildParts
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A1_2.tint
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = nil
  ::lbl_10::
  L3_2 = BuildParts
  L3_2 = L3_2.Get
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "number" == L3_2 and 0 ~= L2_2 then
      goto lbl_25
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_25::
  L3_2 = ShellPaint
  L3_2 = L3_2.TintHas
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2 or L3_2
  if not L3_2 or not L2_2 then
    L3_2 = nil
  end
  return L3_2
end
L0_1.ValidTint = L1_1
