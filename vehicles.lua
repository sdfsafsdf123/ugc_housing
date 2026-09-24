local L0_1, L1_1, L2_1
L0_1 = {}
VehicleDb = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2.props
  if nil ~= L2_2 then
    L2_2 = pcall
    L3_2 = json
    L3_2 = L3_2.decode
    L4_2 = A0_2.props
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L4_2 = type
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if "table" == L4_2 then
        L1_2 = L3_2
      end
    end
  end
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = nil
  L3_2 = A0_2.position
  if nil ~= L3_2 then
    L3_2 = pcall
    L4_2 = json
    L4_2 = L4_2.decode
    L5_2 = A0_2.position
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if "table" == L5_2 then
        L5_2 = type
        L6_2 = L4_2.x
        L5_2 = L5_2(L6_2)
        if "number" == L5_2 then
          L5_2 = type
          L6_2 = L4_2.y
          L5_2 = L5_2(L6_2)
          if "number" == L5_2 then
            L5_2 = type
            L6_2 = L4_2.z
            L5_2 = L5_2(L6_2)
            if "number" == L5_2 then
              L5_2 = {}
              L6_2 = L4_2.x
              L5_2.x = L6_2
              L6_2 = L4_2.y
              L5_2.y = L6_2
              L6_2 = L4_2.z
              L5_2.z = L6_2
              L2_2 = L5_2
            end
          end
        end
      end
    end
  end
  L3_2 = {}
  L3_2.props = L1_2
  L4_2 = A0_2.fuel
  L3_2.fuel = L4_2
  L4_2 = A0_2.engine_health
  L3_2.engineHealth = L4_2
  L3_2.coords = L2_2
  L4_2 = A0_2.heading
  if not L4_2 then
    L4_2 = 0.0
  end
  L4_2 = L4_2 + 0.0
  L3_2.heading = L4_2
  return L3_2
end
L1_1 = VehicleDb
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `property_id`, `plate`, `props`, `fuel`, `engine_health`, "
  L2_2 = "`position`, `heading` FROM tk_housing_vehicles"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.property_id
    L9_2 = L1_2[L8_2]
    if not L9_2 then
      L10_2 = {}
      L9_2 = L10_2
      L1_2[L8_2] = L9_2
    end
    L10_2 = L0_1
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L11_2 = #L9_2
      L11_2 = L11_2 + 1
      L9_2[L11_2] = L10_2
    end
  end
  return L1_2
end
L1_1.LoadAll = L2_1
L1_1 = VehicleDb
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  if not A0_2 then
    return L1_2
  end
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT `property_id`, `plate`, `props`, `fuel`, `engine_health`, "
  L4_2 = "`position`, `heading` FROM tk_housing_vehicles WHERE property_id = ?"
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
    L9_2 = L0_1
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = #L1_2
      L10_2 = L10_2 + 1
      L1_2[L10_2] = L9_2
    end
  end
  return L1_2
end
L1_1.LoadForProperty = L2_1
L1_1 = VehicleDb
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A0_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      L2_2 = type
      L3_2 = A1_2.props
      L2_2 = L2_2(L3_2)
      if "table" == L2_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A1_2.props
  L2_2 = L2_2.plate
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "string" ~= L3_2 or "" == L2_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.Trim
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  if "" == L2_2 then
    return
  end
  L3_2 = A1_2.coords
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = nil
  L5_2 = L3_2.x
  if nil == L5_2 then
    L5_2 = L3_2.y
    if nil == L5_2 then
      L5_2 = L3_2.z
      if nil == L5_2 then
        goto lbl_59
      end
    end
  end
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = {}
  L7_2 = L3_2.x
  L6_2.x = L7_2
  L7_2 = L3_2.y
  L6_2.y = L7_2
  L7_2 = L3_2.z
  L6_2.z = L7_2
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2
  ::lbl_59::
  L5_2 = {}
  L6_2 = Database
  L6_2 = L6_2.Values
  L7_2 = L5_2
  L8_2 = A0_2
  L9_2 = L2_2
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = A1_2.props
  L10_2 = L10_2(L11_2)
  L11_2 = A1_2.fuel
  if not L11_2 then
    L11_2 = 60.0
  end
  L12_2 = A1_2.engineHealth
  if not L12_2 then
    L12_2 = 1000.0
  end
  L13_2 = L4_2
  L14_2 = A1_2.heading
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "INSERT INTO `tk_housing_vehicles` "
  L9_2 = "(`property_id`, `plate`, `props`, `fuel`, `engine_health`, `position`, `heading`) "
  L10_2 = "VALUES ("
  L11_2 = L6_2
  L12_2 = ") "
  L13_2 = "ON DUPLICATE KEY UPDATE "
  L14_2 = "`props` = VALUES(`props`), `fuel` = VALUES(`fuel`), "
  L15_2 = "`engine_health` = VALUES(`engine_health`), "
  L16_2 = "`position` = VALUES(`position`), "
  L17_2 = "`heading` = VALUES(`heading`)"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
end
L1_1.Save = L2_1
L1_1 = VehicleDb
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT COUNT(1) FROM `tk_housing_vehicles` WHERE `property_id` = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = tonumber
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end
L1_1.CountForProperty = L2_1
L1_1 = VehicleDb
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 and "" ~= A1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = Utils
  L2_2 = L2_2.Trim
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  if "" == A1_2 then
    return
  end
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "DELETE FROM `tk_housing_vehicles` WHERE `property_id` = ? AND `plate` = ?"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L1_1.Delete = L2_1
L1_1 = VehicleDb
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `tk_housing_vehicles` WHERE `property_id` = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L1_1.DeleteAllForProperty = L2_1
