local L0_1, L1_1
L0_1 = {}
Database = L0_1
L0_1 = Database
function L1_1(A0_2, A1_2)
  local L2_2
  if nil == A1_2 then
    L2_2 = "NULL"
    return L2_2
  end
  L2_2 = #A0_2
  L2_2 = L2_2 + 1
  A0_2[L2_2] = A1_2
  L2_2 = "?"
  return L2_2
end
L0_1.Value = L1_1
L0_1 = Database
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = select
  L4_2 = "#"
  L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = select
    L7_2 = L5_2
    L8_2, L9_2 = ...
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = Database
    L7_2 = L7_2.Value
    L8_2 = A0_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L1_2[L5_2] = L7_2
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = L1_2
  L4_2 = ", "
  return L2_2(L3_2, L4_2)
end
L0_1.Values = L1_1
L0_1 = Database
function L1_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "table" ~= L1_2 then
      goto lbl_15
    end
    L1_2 = next
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if nil ~= L1_2 then
      goto lbl_15
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_15::
  L1_2 = json
  L1_2 = L1_2.encode
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.Json = L1_1
