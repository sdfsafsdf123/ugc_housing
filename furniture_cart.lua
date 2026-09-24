local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
FurnitureCartDb = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = "house" == A0_2 or "garage" == A0_2 or "yard" == A0_2
  return L1_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    L1_2 = nil
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
  L3_2 = nil
  return L3_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = A0_2.position
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L3_2 = A0_2.rotation
  L2_2 = L2_2(L3_2)
  if L1_2 then
    L3_2 = {}
    L4_2 = L1_2.x
    L3_2.x = L4_2
    L4_2 = L1_2.y
    L3_2.y = L4_2
    L4_2 = L1_2.z
    L3_2.z = L4_2
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = {}
  L3_2.x = 0.0
  L3_2.y = 0.0
  L3_2.z = 0.0
  ::lbl_24::
  if L2_2 then
    L4_2 = {}
    L5_2 = L2_2.x
    L4_2.x = L5_2
    L5_2 = L2_2.y
    L4_2.y = L5_2
    L5_2 = L2_2.z
    L4_2.z = L5_2
    if L4_2 then
      goto lbl_41
    end
  end
  L4_2 = {}
  L4_2.x = 0.0
  L4_2.y = 0.0
  L4_2.z = 0.0
  ::lbl_41::
  L5_2 = Utils
  L5_2 = L5_2.GetCatalogEntryByModel
  L6_2 = A0_2.model
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = A0_2.furniture_id
  L6_2.id = L7_2
  L7_2 = Utils
  L7_2 = L7_2.NormalizeModelHash
  L8_2 = A0_2.model
  L7_2 = L7_2(L8_2)
  L6_2.model = L7_2
  L7_2 = L5_2 or L7_2
  if L5_2 then
    L7_2 = L5_2.model
  end
  L6_2.name = L7_2
  L6_2.coords = L3_2
  L6_2.rotation = L4_2
  L6_2.isCartItem = true
  return L6_2
end
L3_1 = "(`property_id`, `furniture_type`, `furniture_id`, `model`, `position`, `rotation`)"
L4_1 = " ON DUPLICATE KEY UPDATE "
L5_1 = "`model` = VALUES(`model`), "
L6_1 = "`position` = VALUES(`position`), `rotation` = VALUES(`rotation`)"
L4_1 = L4_1 .. L5_1 .. L6_1
L5_1 = FurnitureCartDb
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = {}
  L1_2.house = L2_2
  L2_2 = {}
  L1_2.yard = L2_2
  L2_2 = {}
  L1_2.garage = L2_2
  if not A0_2 then
    return L1_2
  end
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT `property_id`, `furniture_type`, `furniture_id`, `model`, `position`, `rotation` "
  L4_2 = "FROM `tk_housing_furniture_cart` WHERE `property_id` = ?"
  L3_2 = L3_2 .. L4_2
  L4_2 = {}
  L5_2 = A0_2
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.furniture_type
    L9_2 = L1_2[L9_2]
    if L9_2 then
      L10_2 = #L9_2
      L10_2 = L10_2 + 1
      L11_2 = L2_1
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L9_2[L10_2] = L11_2
    end
  end
  return L1_2
end
L5_1.LoadForProperty = L6_1
L5_1 = FurnitureCartDb
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A0_2 then
    L3_2 = L0_1
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = type
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if "table" == L3_2 then
        L3_2 = A2_2.id
        if L3_2 then
          goto lbl_17
        end
      end
    end
  end
  do return end
  ::lbl_17::
  L3_2 = A2_2.coords
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = A2_2.rotation
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = "INSERT INTO `tk_housing_furniture_cart` "
  L6_2 = L3_1
  L7_2 = " VALUES (?, ?, ?, ?, ?, ?)"
  L8_2 = L4_1
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = L5_2
  L8_2 = {}
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = tostring
  L12_2 = A2_2.id
  L11_2 = L11_2(L12_2)
  L12_2 = type
  L13_2 = A2_2.model
  L12_2 = L12_2(L13_2)
  if "string" == L12_2 then
    L12_2 = Utils
    L12_2 = L12_2.NormalizeModelHash
    L13_2 = joaat
    L14_2 = A2_2.model
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    if L12_2 then
      goto lbl_60
    end
  end
  L12_2 = Utils
  L12_2 = L12_2.NormalizeModelHash
  L13_2 = A2_2.model
  L12_2 = L12_2(L13_2)
  ::lbl_60::
  L13_2 = json
  L13_2 = L13_2.encode
  L14_2 = {}
  L15_2 = L3_2.x
  if not L15_2 then
    L15_2 = 0.0
  end
  L14_2.x = L15_2
  L15_2 = L3_2.y
  if not L15_2 then
    L15_2 = 0.0
  end
  L14_2.y = L15_2
  L15_2 = L3_2.z
  if not L15_2 then
    L15_2 = 0.0
  end
  L14_2.z = L15_2
  L13_2 = L13_2(L14_2)
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = {}
  L16_2 = L4_2.x
  if not L16_2 then
    L16_2 = 0.0
  end
  L15_2.x = L16_2
  L16_2 = L4_2.y
  if not L16_2 then
    L16_2 = 0.0
  end
  L15_2.y = L16_2
  L16_2 = L4_2.z
  if not L16_2 then
    L16_2 = 0.0
  end
  L15_2.z = L16_2
  L14_2, L15_2, L16_2 = L14_2(L15_2)
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  L8_2[8] = L16_2
  L6_2(L7_2, L8_2)
end
L5_1.Save = L6_1
L5_1 = FurnitureCartDb
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 then
    L3_2 = L0_1
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 and nil ~= A2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM `tk_housing_furniture_cart` WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L5_2 = {}
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = tostring
  L9_2 = A2_2
  L8_2, L9_2 = L8_2(L9_2)
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L3_2(L4_2, L5_2)
end
L5_1.Delete = L6_1
L5_1 = FurnitureCartDb
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    return
  end
  if nil ~= A1_2 then
    L2_2 = L0_1
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.execute
    L3_2 = "DELETE FROM `tk_housing_furniture_cart` WHERE `property_id` = ? AND `furniture_type` = ?"
    L4_2 = {}
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.execute
    L3_2 = "DELETE FROM `tk_housing_furniture_cart` WHERE `property_id` = ?"
    L4_2 = {}
    L5_2 = A0_2
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
end
L5_1.DeleteAllForProperty = L6_1
