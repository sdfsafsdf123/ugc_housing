local L0_1, L1_1
L0_1 = {}
PowerAccounting = L0_1
L0_1 = PowerAccounting
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = tonumber
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 0
  L6_2 = tonumber
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 / 1000
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = tonumber
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0
  end
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = L3_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  return L4_2, L5_2, L6_2, L7_2, L8_2
end
L0_1.PendingCost = L1_1
L0_1 = PowerAccounting
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if true == A2_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = 0
    L5_2 = A0_2 - A1_2
    return L3_2(L4_2, L5_2)
  end
  return A0_2
end
L0_1.AcceptCost = L1_1
L0_1 = PowerAccounting
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L3_2.policy = A1_2
  L3_2.reservePercent = A2_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.lastUpdate = L4_2
  L3_2.costRemainder = 0
  return L3_2
end
L0_1.ResetSettings = L1_1
L0_1 = PowerAccounting
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = tonumber
  L8_2 = A0_2.amountOwed
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0
  end
  L5_2 = L5_2(L6_2, L7_2)
  if A1_2 then
    A0_2.lastPaid = A3_2
    if L5_2 <= 0 then
      L6_2 = A3_2 + A4_2
      A0_2.dueAt = L6_2
    end
  else
    L6_2 = L5_2 + A2_2
    A0_2.amountOwed = L6_2
    if L5_2 <= 0 then
      L6_2 = A3_2 + A4_2
      A0_2.dueAt = L6_2
    end
  end
  return A0_2
end
L0_1.ApplyBillResult = L1_1
