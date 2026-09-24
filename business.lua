local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
BusinessDb = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = A0_2.blip
  L1_2 = L1_2(L2_2)
  A0_2.blip = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.stash
  L1_2 = L1_2(L2_2)
  A0_2.stash = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.wardrobe
  L1_2 = L1_2(L2_2)
  A0_2.wardrobe = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.boss_menu
  L1_2 = L1_2(L2_2)
  A0_2.bossMenu = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.allowed_types
  L1_2 = L1_2(L2_2)
  A0_2.allowedTypes = L1_2
  L1_2 = A0_2.max_properties
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 or L2_2
  if not ("number" == L2_2 and L1_2 > 0) or not L1_2 then
    L2_2 = nil
  end
  A0_2.maxProperties = L2_2
  L2_2 = L0_1
  L3_2 = A0_2.revenue
  L2_2 = L2_2(L3_2)
  A0_2.revenue = L2_2
  L2_2 = L0_1
  L3_2 = A0_2.stash_items
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2.stashItems = L2_2
  A0_2.boss_menu = nil
  A0_2.allowed_types = nil
  A0_2.max_properties = nil
  A0_2.stash_items = nil
  return A0_2
end
L2_1 = BusinessDb
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT * FROM tk_housing_businesses"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L9_2 = L7_2
    L8_2(L9_2)
    L8_2 = {}
    L7_2.grades = L8_2
    L8_2 = {}
    L7_2.employees = L8_2
    L8_2 = L7_2.id
    L0_2[L8_2] = L7_2
  end
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT * FROM tk_housing_business_grades"
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.business_id
    L9_2 = L0_2[L9_2]
    if L9_2 then
      L10_2 = L9_2.grades
      L11_2 = L8_2.grade
      L12_2 = {}
      L13_2 = L8_2.grade
      L12_2.grade = L13_2
      L13_2 = L8_2.label
      L12_2.label = L13_2
      L13_2 = L8_2.salary
      L12_2.salary = L13_2
      L13_2 = L0_1
      L14_2 = L8_2.permissions
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        L13_2 = {}
      end
      L12_2.permissions = L13_2
      L10_2[L11_2] = L12_2
    end
  end
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM tk_housing_business_employees"
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.business_id
    L10_2 = L0_2[L10_2]
    if L10_2 then
      L11_2 = L10_2.employees
      L12_2 = L9_2.identifier
      L13_2 = {}
      L14_2 = L9_2.grade
      L13_2.grade = L14_2
      L14_2 = L9_2.hired_at
      L13_2.hiredAt = L14_2
      L11_2[L12_2] = L13_2
    end
  end
  return L0_2
end
L2_1.LoadAll = L3_1
L2_1 = BusinessDb
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = Database
  L2_2 = L2_2.Values
  L3_2 = L1_2
  L4_2 = A0_2.name
  L5_2 = A0_2.label
  L6_2 = A0_2.owner
  L7_2 = A0_2.balance
  if not L7_2 then
    L7_2 = 0
  end
  L8_2 = Database
  L8_2 = L8_2.Json
  L9_2 = A0_2.blip
  L8_2 = L8_2(L9_2)
  L9_2 = Database
  L9_2 = L9_2.Json
  L10_2 = A0_2.stash
  L9_2 = L9_2(L10_2)
  L10_2 = Database
  L10_2 = L10_2.Json
  L11_2 = A0_2.wardrobe
  L10_2 = L10_2(L11_2)
  L11_2 = Database
  L11_2 = L11_2.Json
  L12_2 = A0_2.bossMenu
  L11_2 = L11_2(L12_2)
  L12_2 = Database
  L12_2 = L12_2.Json
  L13_2 = A0_2.allowedTypes
  L12_2 = L12_2(L13_2)
  L13_2 = A0_2.maxProperties
  L14_2 = Database
  L14_2 = L14_2.Json
  L15_2 = A0_2.revenue
  L14_2 = L14_2(L15_2)
  L15_2 = Database
  L15_2 = L15_2.Json
  L16_2 = A0_2.stashItems
  L15_2, L16_2 = L15_2(L16_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.insert
  L4_2 = "INSERT INTO tk_housing_businesses (name, label, owner, balance, blip, stash, wardrobe, boss_menu, allowed_types, max_properties, revenue, stash_items) VALUES ("
  L5_2 = L2_2
  L6_2 = ")"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = L1_2
  return L3_2(L4_2, L5_2)
end
L2_1.Insert = L3_1
L2_1 = {}
L3_1 = {}
L3_1.column = "label"
L2_1.label = L3_1
L3_1 = {}
L3_1.column = "owner"
L2_1.owner = L3_1
L3_1 = {}
L3_1.column = "blip"
L3_1.json = true
L2_1.blip = L3_1
L3_1 = {}
L3_1.column = "stash"
L3_1.json = true
L2_1.stash = L3_1
L3_1 = {}
L3_1.column = "wardrobe"
L3_1.json = true
L2_1.wardrobe = L3_1
L3_1 = {}
L3_1.column = "boss_menu"
L3_1.json = true
L2_1.bossMenu = L3_1
L3_1 = {}
L3_1.column = "allowed_types"
L3_1.json = true
L2_1.allowedTypes = L3_1
L3_1 = {}
L3_1.column = "max_properties"
L3_1.falseClears = true
L2_1.maxProperties = L3_1
L3_1 = {}
L3_1.column = "revenue"
L3_1.json = true
L2_1.revenue = L3_1
L3_1 = {}
L3_1.column = "stash_items"
L3_1.json = true
L2_1.stashItems = L3_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L2_1
    L10_2 = L10_2[L8_2]
    if L10_2 then
      L11_2 = L9_2
      L12_2 = L10_2.json
      if L12_2 then
        if false == L9_2 then
          L11_2 = nil
        else
          L12_2 = Database
          L12_2 = L12_2.Json
          L13_2 = L9_2
          L12_2 = L12_2(L13_2)
          L11_2 = L12_2
        end
      else
        L12_2 = L10_2.falseClears
        if L12_2 and false == L9_2 then
          L11_2 = nil
        end
      end
      L12_2 = #L2_2
      L12_2 = L12_2 + 1
      L13_2 = "`"
      L14_2 = L10_2.column
      L15_2 = "` = "
      L16_2 = Database
      L16_2 = L16_2.Value
      L17_2 = L3_2
      L18_2 = L11_2
      L16_2 = L16_2(L17_2, L18_2)
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      L2_2[L12_2] = L13_2
    end
  end
  L4_2 = #L2_2
  if 0 == L4_2 then
    return
  end
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A0_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tk_housing_businesses SET "
  L6_2 = table
  L6_2 = L6_2.concat
  L7_2 = L2_2
  L8_2 = ", "
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = " WHERE id = ?"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L3_1.UpdateFields = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "UPDATE tk_housing_businesses SET balance = ? WHERE id = ?"
  L4_2 = {}
  L5_2 = A1_2
  L6_2 = A0_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L3_1.SetBalance = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = Database
  L3_2 = L3_2.Value
  L4_2 = L2_2
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = #L2_2
  L4_2 = L4_2 + 1
  L2_2[L4_2] = A0_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tk_housing_businesses SET stash_items = "
  L6_2 = L3_2
  L7_2 = " WHERE id = ?"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L3_1.UpdateStashItems = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = Database
  L3_2 = L3_2.Value
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = #L2_2
  L4_2 = L4_2 + 1
  L2_2[L4_2] = A0_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tk_housing_businesses SET owner = "
  L6_2 = L3_2
  L7_2 = " WHERE id = ?"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L3_1.SetOwner = L4_1
L3_1 = BusinessDb
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM tk_housing_business_grades WHERE business_id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM tk_housing_business_employees WHERE business_id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM tk_housing_business_transactions WHERE business_id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM tk_housing_businesses WHERE id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L3_1.Delete = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = {}
  L6_2 = Database
  L6_2 = L6_2.Values
  L7_2 = L5_2
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = Database
  L12_2 = L12_2.Json
  L13_2 = A4_2
  L12_2, L13_2 = L12_2(L13_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "INSERT INTO `tk_housing_business_grades` (`business_id`, `grade`, `label`, `salary`, `permissions`) VALUES ("
  L9_2 = L6_2
  L10_2 = ") "
  L11_2 = "ON DUPLICATE KEY UPDATE `label` = VALUES(`label`), `salary` = VALUES(`salary`), `permissions` = VALUES(`permissions`)"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
end
L3_1.SaveGrade = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "DELETE FROM tk_housing_business_grades WHERE business_id = ? AND grade = ?"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L3_1.DeleteGrade = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "INSERT INTO tk_housing_business_employees (business_id, identifier, grade, hired_at) VALUES (?, ?, ?, ?)"
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
L3_1.AddEmployee = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "UPDATE tk_housing_business_employees SET grade = ? WHERE identifier = ?"
  L4_2 = {}
  L5_2 = A1_2
  L6_2 = A0_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L3_1.UpdateEmployeeGrade = L4_1
L3_1 = BusinessDb
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM tk_housing_business_employees WHERE identifier = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L3_1.RemoveEmployee = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = {}
  L7_2 = Database
  L7_2 = L7_2.Values
  L8_2 = L6_2
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = Database
  L14_2 = L14_2.Json
  L15_2 = A5_2
  L14_2 = L14_2(L15_2)
  L15_2 = os
  L15_2 = L15_2.time
  L15_2 = L15_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = MySQL
  L8_2 = L8_2.Async
  L8_2 = L8_2.execute
  L9_2 = "INSERT INTO tk_housing_business_transactions (business_id, kind, amount, actor, note, breakdown, created_at) VALUES ("
  L10_2 = L7_2
  L11_2 = ")"
  L9_2 = L9_2 .. L10_2 .. L11_2
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
end
L3_1.AddTransaction = L4_1
L3_1 = BusinessDb
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
      A1_2 = L2_2 or A1_2
    end
  end
  A1_2 = 20
  ::lbl_13::
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT `id`, `kind`, `amount`, `actor`, `note`, `breakdown`, `created_at` FROM tk_housing_business_transactions WHERE business_id = ? ORDER BY id DESC LIMIT ?"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L0_1
    L10_2 = L8_2.breakdown
    L9_2 = L9_2(L10_2)
    L8_2.breakdown = L9_2
  end
  return L2_2
end
L3_1.GetTransactions = L4_1
