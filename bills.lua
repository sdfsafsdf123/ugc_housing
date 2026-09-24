local L0_1, L1_1
L0_1 = {}
BillsDb = L0_1
L0_1 = BillsDb
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT `property_id`, `service`, `connected`, `amount_owed`, `last_charge`, `last_paid`, `due_at` "
  L3_2 = "FROM tk_housing_bills WHERE property_id = ?"
  L2_2 = L2_2 .. L3_2
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.connected
    L8_2 = 1 == L8_2
    L7_2.connected = L8_2
  end
  return L1_2
end
L0_1.GetBills = L1_1
L0_1 = BillsDb
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `property_id`, `service`, `connected`, `amount_owed`, `last_charge`, `last_paid`, `due_at` FROM tk_housing_bills"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.connected
    L8_2 = 1 == L8_2
    L7_2.connected = L8_2
    L8_2 = L7_2.property_id
    L8_2 = L1_2[L8_2]
    if not L8_2 then
      L8_2 = {}
    end
    L9_2 = L7_2.service
    L8_2[L9_2] = L7_2
    L9_2 = L7_2.property_id
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
L0_1.GetAllBills = L1_1
L0_1 = BillsDb
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = A2_2.connected
  if nil ~= L3_2 then
    if L3_2 then
      L4_2 = 1
      if L4_2 then
        goto lbl_23
        L3_2 = L4_2 or L3_2
      end
    end
    L3_2 = 0
  end
  ::lbl_23::
  L4_2 = {}
  L5_2 = Database
  L5_2 = L5_2.Values
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L3_2 or L9_2
  if nil == L3_2 or not L3_2 then
    L9_2 = 1
  end
  L10_2 = A2_2.amountOwed
  if not L10_2 then
    L10_2 = 0
  end
  L11_2 = A2_2.lastCharge
  L12_2 = A2_2.lastPaid
  L13_2 = A2_2.dueAt
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "INSERT INTO `tk_housing_bills` (`property_id`, `service`, `connected`, `amount_owed`, `last_charge`, `last_paid`, `due_at`) "
  L8_2 = "VALUES ("
  L9_2 = L5_2
  L10_2 = ") "
  L11_2 = "ON DUPLICATE KEY UPDATE "
  L12_2 = "`connected` = VALUES(`connected`), `amount_owed` = VALUES(`amount_owed`), "
  L13_2 = "`last_charge` = VALUES(`last_charge`), `last_paid` = VALUES(`last_paid`), `due_at` = VALUES(`due_at`)"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
end
L0_1.UpsertBill = L1_1
L0_1 = BillsDb
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE `tk_housing_bills` SET `connected` = ? WHERE `property_id` = ? AND `service` = ?"
  L5_2 = {}
  if A2_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_21
    end
  end
  L6_2 = 0
  ::lbl_21::
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
end
L0_1.SetConnected = L1_1
L0_1 = BillsDb
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L4_2 = type
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "INSERT INTO `tk_housing_bill_history` (`property_id`, `service`, `amount`, `paid_at`) VALUES (?, ?, ?, ?)"
  L6_2 = {}
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L4_2(L5_2, L6_2)
end
L0_1.AddHistory = L1_1
L0_1 = BillsDb
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `tk_housing_bills` WHERE `property_id` = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1.DeleteAllForProperty = L1_1
L0_1 = BillsDb
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `tk_housing_bill_history` WHERE `property_id` = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1.DeleteHistoryForProperty = L1_1
L0_1 = BillsDb
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 or A0_2 <= 0 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `tk_housing_bill_history` WHERE `paid_at` < ?"
  L3_2 = {}
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A0_2 * 86400
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 - L5_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1.PruneHistory = L1_1
L0_1 = BillsDb
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_18
      A1_2 = L2_2 or A1_2
    end
  end
  A1_2 = 5
  ::lbl_18::
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT `service`, `amount`, `paid_at` FROM tk_housing_bill_history WHERE property_id = ? ORDER BY paid_at DESC LIMIT ?"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
  end
  return L2_2
end
L0_1.GetHistory = L1_1
