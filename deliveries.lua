local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
DeliveryDb = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      return L2_2
    end
  end
  L3_2 = {}
  return L3_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2.id
  L1_2.id = L2_2
  L2_2 = A0_2.identifier
  L1_2.identifier = L2_2
  L2_2 = A0_2.property_id
  L1_2.propertyId = L2_2
  L2_2 = L0_1
  L3_2 = A0_2.items
  L2_2 = L2_2(L3_2)
  L1_2.items = L2_2
  L2_2 = A0_2.arrive_at
  L1_2.arriveAt = L2_2
  L2_2 = A0_2.status
  L1_2.status = L2_2
  return L1_2
end
L2_1 = DeliveryDb
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `id`, `identifier`, `property_id`, `items`, `arrive_at`, `status` FROM `tk_housing_deliveries` WHERE `status` = ?"
  L2_2 = {}
  L3_2 = "pending"
  L2_2[1] = L3_2
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = L1_1
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L1_2[L8_2] = L9_2
  end
  return L1_2
end
L2_1.LoadPending = L3_1
L2_1 = DeliveryDb
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil == A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT `id`, `identifier`, `property_id`, `items`, `arrive_at`, `status` FROM `tk_housing_deliveries` WHERE `status` = ? AND `property_id` = ?"
  L3_2 = {}
  L4_2 = "pending"
  L5_2 = A0_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = L1_1
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L2_2[L9_2] = L10_2
  end
  return L2_2
end
L2_1.LoadPendingForProperty = L3_1
L2_1 = DeliveryDb
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 and nil ~= A1_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      L4_2 = type
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if "number" == L4_2 then
        goto lbl_20
      end
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_20::
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.insert
  L5_2 = "INSERT INTO `tk_housing_deliveries` (`identifier`, `property_id`, `items`, `arrive_at`, `status`) VALUES (?, ?, ?, ?, ?)"
  L6_2 = {}
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  L10_2 = A3_2
  L11_2 = "pending"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  return L4_2(L5_2, L6_2)
end
L2_1.Insert = L3_1
L2_1 = DeliveryDb
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `tk_housing_deliveries` WHERE `id` = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L2_1.Delete = L3_1
L2_1 = DeliveryDb
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.execute
  L1_2 = "DELETE FROM `tk_housing_deliveries` WHERE `status` = ?"
  L2_2 = {}
  L3_2 = "collected"
  L2_2[1] = L3_2
  L0_2(L1_2, L2_2)
end
L2_1.DeleteCollected = L3_1
