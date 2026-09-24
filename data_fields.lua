local L0_1, L1_1
L0_1 = Furniture
if not L0_1 then
  L0_1 = {}
end
Furniture = L0_1
L0_1 = Furniture
L1_1 = {}
L0_1.DataFields = L1_1
L0_1 = Furniture
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = Furniture
  L2_2 = L2_2.DataFields
  L2_2[A0_2] = A1_2
end
L0_1.RegisterDataField = L1_1
