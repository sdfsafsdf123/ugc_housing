local L0_1, L1_1, L2_1
L0_1 = {}
FurnitureStockDb = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = "player" == A0_2 or "property" == A0_2
  return L1_2
end
L1_1 = FurnitureStockDb
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = L0_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or nil == A1_2 then
    return L2_2
  end
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT `model`, `quantity` FROM `tk_housing_furniture_stock` WHERE `owner_kind` = ? AND `owner_id` = ? AND `quantity` > 0"
  L5_2 = {}
  L6_2 = A0_2
  L7_2 = tostring
  L8_2 = A1_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Utils
    L10_2 = L10_2.NormalizeModelHash
    L11_2 = L9_2.model
    L10_2 = L10_2(L11_2)
    L11_2 = L9_2.quantity
    L2_2[L10_2] = L11_2
  end
  return L2_2
end
L1_1.Get = L2_1
L1_1 = FurnitureStockDb
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L0_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 and nil ~= A1_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = type
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if not ("number" ~= L4_2 or A3_2 <= 0) then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.execute
  L5_2 = "INSERT INTO `tk_housing_furniture_stock` (`owner_kind`, `owner_id`, `model`, `quantity`) "
  L6_2 = "VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE `quantity` = `quantity` + VALUES(`quantity`)"
  L5_2 = L5_2 .. L6_2
  L6_2 = {}
  L7_2 = A0_2
  L8_2 = tostring
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L4_2(L5_2, L6_2)
end
L1_1.Add = L2_1
L1_1 = FurnitureStockDb
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L0_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 and nil ~= A1_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = type
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if not ("number" ~= L4_2 or A3_2 <= 0) then
        goto lbl_22
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_22::
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.execute
  L5_2 = "UPDATE `tk_housing_furniture_stock` SET `quantity` = `quantity` - ? "
  L6_2 = "WHERE `owner_kind` = ? AND `owner_id` = ? AND `model` = ? AND `quantity` >= ?"
  L5_2 = L5_2 .. L6_2
  L6_2 = {}
  L7_2 = A3_2
  L8_2 = A0_2
  L9_2 = tostring
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  L10_2 = A2_2
  L11_2 = A3_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2 or L5_2
  if not L4_2 then
    L5_2 = 0
  end
  if L5_2 < 1 then
    L5_2 = false
    return L5_2
  end
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "DELETE FROM `tk_housing_furniture_stock` WHERE `owner_kind` = ? AND `owner_id` = ? AND `model` = ? AND `quantity` <= 0"
  L7_2 = {}
  L8_2 = A0_2
  L9_2 = tostring
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  L10_2 = A2_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L5_2(L6_2, L7_2)
  L5_2 = true
  return L5_2
end
L1_1.TryTake = L2_1
L1_1 = FurnitureStockDb
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L0_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 and nil ~= A1_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = type
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if not ("number" ~= L4_2 or A3_2 <= 0) then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE `tk_housing_furniture_stock` SET `quantity` = `quantity` - ? "
  L6_2 = "WHERE `owner_kind` = ? AND `owner_id` = ? AND `model` = ?"
  L5_2 = L5_2 .. L6_2
  L6_2 = {}
  L7_2 = A3_2
  L8_2 = A0_2
  L9_2 = tostring
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  L10_2 = A2_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L4_2(L5_2, L6_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "DELETE FROM `tk_housing_furniture_stock` WHERE `owner_kind` = ? AND `owner_id` = ? AND `model` = ? AND `quantity` <= 0"
  L6_2 = {}
  L7_2 = A0_2
  L8_2 = tostring
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L9_2 = A2_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2(L5_2, L6_2)
end
L1_1.Remove = L2_1
L1_1 = FurnitureStockDb
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if nil == A0_2 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `tk_housing_furniture_stock` WHERE `owner_kind` = ? AND `owner_id` = ?"
  L3_2 = {}
  L4_2 = "property"
  L5_2 = tostring
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
end
L1_1.DeleteAllForProperty = L2_1
