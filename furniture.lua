local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = {}
FurnitureDb = L0_1
L0_1 = FurnitureDb
function L1_1(A0_2)
  local L1_2
  L1_2 = "house" == A0_2 or "garage" == A0_2 or "yard" == A0_2
  return L1_2
end
L0_1.IsValidType = L1_1
L0_1 = {}
L1_1 = 30000
L2_1 = 16
function L3_1(A0_2, A1_2)
  local L2_2
  if not A0_2 then
    return A1_2
  end
  if not A1_2 then
    return A0_2
  end
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  return L2_2
end
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = tostring
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = ":"
  L8_2 = tostring
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L9_2 = ":"
  L10_2 = tostring
  L11_2 = A2_2
  L10_2 = L10_2(L11_2)
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = L0_1
  L7_2 = L7_2[L6_2]
  if L7_2 then
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L9_2 = L7_2.startedAt
    L8_2 = L8_2 - L9_2
    L9_2 = L1_1
    if L8_2 < L9_2 then
      L8_2 = L7_2.queue
      L9_2 = #L8_2
      L9_2 = L8_2[L9_2]
      if L9_2 then
        L10_2 = L9_2.query
        if L10_2 == A3_2 then
          L9_2.params = A4_2
          L10_2 = L3_1
          L11_2 = L9_2.cb
          L12_2 = A5_2
          L10_2 = L10_2(L11_2, L12_2)
          L9_2.cb = L10_2
          return
        end
      end
      L10_2 = #L8_2
      L11_2 = L2_1
      if L10_2 >= L11_2 then
        L10_2 = Utils
        L10_2 = L10_2.Debug
        L11_2 = "furniture row write queue full, dropping the oldest write"
        L12_2 = L6_2
        L10_2(L11_2, L12_2)
        L10_2 = table
        L10_2 = L10_2.remove
        L11_2 = L8_2
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = L10_2.cb
        if L11_2 then
          L11_2 = L10_2.cb
          L12_2 = false
          L11_2(L12_2)
        end
      end
      L10_2 = #L8_2
      L10_2 = L10_2 + 1
      L11_2 = {}
      L11_2.query = A3_2
      L11_2.params = A4_2
      L11_2.cb = A5_2
      L8_2[L10_2] = L11_2
      return
    end
  end
  L8_2 = {}
  L9_2 = GetGameTimer
  L9_2 = L9_2()
  L8_2.startedAt = L9_2
  L9_2 = {}
  L8_2.queue = L9_2
  L9_2 = L0_1
  L9_2[L6_2] = L8_2
  function L9_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = MySQL
    L3_3 = L3_3.Async
    L3_3 = L3_3.execute
    L4_3 = A0_3
    L5_3 = A1_3
    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L1_4 = L6_2
      L0_4 = L0_1
      L0_4 = L0_4[L1_4]
      L1_4 = L8_2
      if L0_4 ~= L1_4 then
        return
      end
      L0_4 = A2_3
      if L0_4 then
        L0_4 = A2_3
        L1_4 = true
        L0_4(L1_4)
      end
      L1_4 = L6_2
      L0_4 = L0_1
      L0_4 = L0_4[L1_4]
      L1_4 = L8_2
      if L0_4 ~= L1_4 then
        return
      end
      L0_4 = table
      L0_4 = L0_4.remove
      L1_4 = L8_2.queue
      L2_4 = 1
      L0_4 = L0_4(L1_4, L2_4)
      if not L0_4 then
        L2_4 = L6_2
        L1_4 = L0_1
        L1_4[L2_4] = nil
        return
      end
      L1_4 = GetGameTimer
      L1_4 = L1_4()
      L8_2.startedAt = L1_4
      L1_4 = L9_2
      L2_4 = L0_4.query
      L3_4 = L0_4.params
      L4_4 = L0_4.cb
      L1_4(L2_4, L3_4, L4_4)
    end
    L3_3(L4_3, L5_3, L6_3)
  end
  L10_2 = L9_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L10_2(L11_2, L12_2, L13_2)
end
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = A2_2.coords
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = A2_2.rotation
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = Database
  L6_2 = L6_2.Values
  L7_2 = A3_2
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = tostring
  L11_2 = A2_2.id
  L10_2 = L10_2(L11_2)
  L11_2 = Utils
  L11_2 = L11_2.NormalizeModelHash
  L12_2 = type
  L13_2 = A2_2.model
  L12_2 = L12_2(L13_2)
  if "string" == L12_2 then
    L12_2 = joaat
    L13_2 = A2_2.model
    L12_2 = L12_2(L13_2)
    if L12_2 then
      goto lbl_32
    end
  end
  L12_2 = A2_2.model
  ::lbl_32::
  L11_2 = L11_2(L12_2)
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = {}
  L14_2 = L4_2.x
  if not L14_2 then
    L14_2 = 0.0
  end
  L13_2.x = L14_2
  L14_2 = L4_2.y
  if not L14_2 then
    L14_2 = 0.0
  end
  L13_2.y = L14_2
  L14_2 = L4_2.z
  if not L14_2 then
    L14_2 = 0.0
  end
  L13_2.z = L14_2
  L12_2 = L12_2(L13_2)
  L13_2 = json
  L13_2 = L13_2.encode
  L14_2 = {}
  L15_2 = L5_2.x
  if not L15_2 then
    L15_2 = 0.0
  end
  L14_2.x = L15_2
  L15_2 = L5_2.y
  if not L15_2 then
    L15_2 = 0.0
  end
  L14_2.y = L15_2
  L15_2 = L5_2.z
  if not L15_2 then
    L15_2 = 0.0
  end
  L14_2.z = L15_2
  L13_2 = L13_2(L14_2)
  L14_2 = type
  L15_2 = A2_2.code
  L14_2 = L14_2(L15_2)
  if "string" == L14_2 then
    L14_2 = A2_2.code
    if L14_2 then
      goto lbl_82
    end
  end
  L14_2 = nil
  ::lbl_82::
  L15_2 = type
  L16_2 = A2_2.items
  L15_2 = L15_2(L16_2)
  if "table" == L15_2 then
    L15_2 = Database
    L15_2 = L15_2.Json
    L16_2 = A2_2.items
    L15_2 = L15_2(L16_2)
    if L15_2 then
      goto lbl_94
    end
  end
  L15_2 = nil
  ::lbl_94::
  L16_2 = type
  L17_2 = A2_2.permissions
  L16_2 = L16_2(L17_2)
  if "table" == L16_2 then
    L16_2 = Database
    L16_2 = L16_2.Json
    L17_2 = A2_2.permissions
    L16_2 = L16_2(L17_2)
    if L16_2 then
      goto lbl_106
    end
  end
  L16_2 = nil
  ::lbl_106::
  L17_2 = type
  L18_2 = A2_2.speakerGroup
  L17_2 = L17_2(L18_2)
  if "string" == L17_2 then
    L17_2 = A2_2.speakerGroup
    if L17_2 then
      goto lbl_115
    end
  end
  L17_2 = nil
  ::lbl_115::
  L18_2 = type
  L19_2 = A2_2.data
  L18_2 = L18_2(L19_2)
  if "table" == L18_2 then
    L18_2 = Database
    L18_2 = L18_2.Json
    L19_2 = A2_2.data
    L18_2 = L18_2(L19_2)
    if L18_2 then
      goto lbl_127
    end
  end
  L18_2 = nil
  ::lbl_127::
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = "("
  L8_2 = L6_2
  L9_2 = ")"
  L7_2 = L7_2 .. L8_2 .. L9_2
  return L7_2
end
L6_1 = "(`property_id`, `furniture_type`, `furniture_id`, `model`, "
L7_1 = "`position`, `rotation`, "
L8_1 = "`storage_code`, `storage_items`, `storage_permissions`, `speaker_group`, `data`)"
L6_1 = L6_1 .. L7_1 .. L8_1
L7_1 = " ON DUPLICATE KEY UPDATE "
L8_1 = "`model` = VALUES(`model`), "
L9_1 = "`position` = VALUES(`position`), `rotation` = VALUES(`rotation`), "
L10_1 = "`storage_code` = VALUES(`storage_code`), "
L11_1 = "`storage_items` = VALUES(`storage_items`), "
L12_1 = "`storage_permissions` = VALUES(`storage_permissions`), "
L13_1 = "`speaker_group` = VALUES(`speaker_group`), "
L14_1 = "`data` = VALUES(`data`)"
L7_1 = L7_1 .. L8_1 .. L9_1 .. L10_1 .. L11_1 .. L12_1 .. L13_1 .. L14_1
function L8_1(A0_2)
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
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = {}
    A0_2 = L1_2
  end
  L1_2 = {}
  L2_2 = tonumber
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
  end
  L1_2.x = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.y
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
  end
  L1_2.y = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.z
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0.0
  end
  L1_2.z = L2_2
  return L1_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Utils
    L2_2 = L2_2.NormalizeModelHash
    L3_2 = L1_2
    return L2_2(L3_2)
  end
  return A0_2
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L9_1
  L2_2 = L8_1
  L3_2 = A0_2.position
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L9_1
  L3_2 = L8_1
  L4_2 = A0_2.rotation
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = {}
  L4_2 = A0_2.furniture_id
  L3_2.id = L4_2
  L4_2 = L10_1
  L5_2 = A0_2.model
  L4_2 = L4_2(L5_2)
  L3_2.model = L4_2
  L3_2.coords = L1_2
  L3_2.rotation = L2_2
  L4_2 = A0_2.storage_code
  if nil ~= L4_2 then
    L4_2 = A0_2.storage_code
    L3_2.code = L4_2
  end
  L4_2 = A0_2.speaker_group
  if nil ~= L4_2 then
    L4_2 = A0_2.speaker_group
    L3_2.speakerGroup = L4_2
  end
  L4_2 = A0_2.storage_items
  if nil ~= L4_2 then
    L4_2 = pcall
    L5_2 = json
    L5_2 = L5_2.decode
    L6_2 = A0_2.storage_items
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if "table" == L6_2 then
        L3_2.items = L5_2
      end
    end
  end
  L4_2 = A0_2.storage_permissions
  if nil ~= L4_2 then
    L4_2 = pcall
    L5_2 = json
    L5_2 = L5_2.decode
    L6_2 = A0_2.storage_permissions
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if "table" == L6_2 then
        L3_2.permissions = L5_2
      end
    end
  end
  L4_2 = {}
  L3_2.data = L4_2
  L4_2 = A0_2.data
  if nil ~= L4_2 then
    L4_2 = pcall
    L5_2 = json
    L5_2 = L5_2.decode
    L6_2 = A0_2.data
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if "table" == L6_2 then
        L3_2.data = L5_2
      end
    end
  end
  return L3_2
end
L12_1 = FurnitureDb
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `property_id`, `furniture_type`, `furniture_id`, `model`, "
  L2_2 = "`position`, `rotation`, "
  L3_2 = "`storage_code`, `storage_items`, `storage_permissions`, `speaker_group`, `data` FROM tk_housing_furniture"
  L1_2 = L1_2 .. L2_2 .. L3_2
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
      L11_2 = {}
      L10_2.house = L11_2
      L11_2 = {}
      L10_2.yard = L11_2
      L11_2 = {}
      L10_2.garage = L11_2
      L9_2 = L10_2
      L1_2[L8_2] = L9_2
    end
    L10_2 = L7_2.furniture_type
    L11_2 = L9_2[L10_2]
    if L11_2 then
      L12_2 = #L11_2
      L12_2 = L12_2 + 1
      L13_2 = L11_1
      L14_2 = L7_2
      L13_2 = L13_2(L14_2)
      L11_2[L12_2] = L13_2
    end
  end
  return L1_2
end
L12_1.LoadAll = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2)
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
  L3_2 = "SELECT `property_id`, `furniture_type`, `furniture_id`, `model`, "
  L4_2 = "`position`, `rotation`, "
  L5_2 = "`storage_code`, `storage_items`, `storage_permissions`, `speaker_group`, `data` FROM tk_housing_furniture WHERE property_id = ?"
  L3_2 = L3_2 .. L4_2 .. L5_2
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
      L11_2 = L11_1
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L9_2[L10_2] = L11_2
    end
  end
  L3_2 = Utils
  L3_2 = L3_2.Debug
  L4_2 = "Loaded furniture for property from the database"
  L5_2 = A0_2
  L6_2 = L1_2.house
  L6_2 = #L6_2
  L7_2 = L1_2.yard
  L7_2 = #L7_2
  L8_2 = L1_2.garage
  L8_2 = #L8_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  return L1_2
end
L12_1.LoadForProperty = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 then
    L4_2 = FurnitureDb
    L4_2 = L4_2.IsValidType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = type
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if "table" == L4_2 then
        L4_2 = A2_2.id
        if L4_2 then
          goto lbl_18
        end
      end
    end
  end
  do return end
  ::lbl_18::
  L4_2 = {}
  L5_2 = L5_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = "INSERT INTO `tk_housing_furniture` "
  L7_2 = L6_1
  L8_2 = " VALUES "
  L9_2 = L5_2
  L10_2 = L7_1
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = L4_1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2.id
  L11_2 = L6_2
  L12_2 = L4_2
  L13_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L12_1.Save = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if A0_2 then
    L4_2 = FurnitureDb
    L4_2 = L4_2.IsValidType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = type
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if "table" == L4_2 then
        L4_2 = #A2_2
        if 0 ~= L4_2 then
          goto lbl_23
        end
      end
    end
  end
  if A3_2 then
    L4_2 = A3_2
    L5_2 = false
    L4_2(L5_2)
  end
  do return end
  ::lbl_23::
  L4_2 = {}
  L5_2 = 100
  L6_2 = 1
  L7_2 = #A2_2
  L8_2 = L5_2
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = {}
    L11_2 = {}
    L12_2 = math
    L12_2 = L12_2.min
    L13_2 = L9_2 + L5_2
    L13_2 = L13_2 - 1
    L14_2 = #A2_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = L9_2
    L14_2 = L12_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = A2_2[L16_2]
      L18_2 = type
      L19_2 = L17_2
      L18_2 = L18_2(L19_2)
      if "table" == L18_2 then
        L18_2 = L17_2.id
        if L18_2 then
          L18_2 = #L10_2
          L18_2 = L18_2 + 1
          L19_2 = L5_1
          L20_2 = A0_2
          L21_2 = A1_2
          L22_2 = L17_2
          L23_2 = L11_2
          L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
          L10_2[L18_2] = L19_2
        end
      end
    end
    L13_2 = #L10_2
    if L13_2 > 0 then
      L13_2 = #L4_2
      L13_2 = L13_2 + 1
      L14_2 = {}
      L15_2 = "INSERT INTO `tk_housing_furniture` "
      L16_2 = L6_1
      L17_2 = " VALUES "
      L18_2 = table
      L18_2 = L18_2.concat
      L19_2 = L10_2
      L20_2 = ", "
      L18_2 = L18_2(L19_2, L20_2)
      L19_2 = L7_1
      L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
      L14_2.query = L15_2
      L14_2.params = L11_2
      L4_2[L13_2] = L14_2
    end
  end
  L6_2 = #L4_2
  if 0 == L6_2 then
    if A3_2 then
      L6_2 = A3_2
      L7_2 = false
      L6_2(L7_2)
    end
    return
  end
  L6_2 = #L4_2
  L7_2 = true
  L8_2 = ipairs
  L9_2 = L4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = MySQL
    L14_2 = L14_2.Async
    L14_2 = L14_2.execute
    L15_2 = L13_2.query
    L16_2 = L13_2.params
    function L17_2(A0_3)
      local L1_3, L2_3
      if not A0_3 or 0 == A0_3 then
        L1_3 = false
        L7_2 = L1_3
      end
      L1_3 = L6_2
      L1_3 = L1_3 - 1
      L6_2 = L1_3
      L1_3 = L6_2
      if L1_3 > 0 then
        return
      end
      L1_3 = A3_2
      if L1_3 then
        L1_3 = A3_2
        L2_3 = L7_2
        L1_3(L2_3)
      end
    end
    L14_2(L15_2, L16_2, L17_2)
  end
end
L12_1.BatchInsert = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 then
    L3_2 = FurnitureDb
    L3_2 = L3_2.IsValidType
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 and nil ~= A2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = Generator
  if L3_2 then
    L3_2 = Generator
    L3_2 = L3_2.ClearProperty
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L4_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = "DELETE FROM `tk_housing_furniture` WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L8_2 = {}
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = tostring
  L12_2 = A2_2
  L11_2, L12_2 = L11_2(L12_2)
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L12_1.Delete = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if A0_2 then
    L6_2 = FurnitureDb
    L6_2 = L6_2.IsValidType
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 and nil ~= A2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L6_2 = {}
  L7_2 = Database
  L7_2 = L7_2.Value
  L8_2 = L6_2
  L9_2 = type
  L10_2 = A3_2
  L9_2 = L9_2(L10_2)
  if "table" == L9_2 then
    L9_2 = Database
    L9_2 = L9_2.Json
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_29
    end
  end
  L9_2 = nil
  ::lbl_29::
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = Database
  L8_2 = L8_2.Value
  L9_2 = L6_2
  L10_2 = type
  L11_2 = A4_2
  L10_2 = L10_2(L11_2)
  L10_2 = A4_2 or L10_2
  if "string" ~= L10_2 or not A4_2 then
    L10_2 = nil
  end
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = Database
  L9_2 = L9_2.Value
  L10_2 = L6_2
  L11_2 = type
  L12_2 = A5_2
  L11_2 = L11_2(L12_2)
  if "table" == L11_2 then
    L11_2 = Database
    L11_2 = L11_2.Json
    L12_2 = A5_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      goto lbl_57
    end
  end
  L11_2 = nil
  ::lbl_57::
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = #L6_2
  L10_2 = L10_2 + 1
  L6_2[L10_2] = A0_2
  L10_2 = #L6_2
  L10_2 = L10_2 + 1
  L6_2[L10_2] = A1_2
  L10_2 = #L6_2
  L10_2 = L10_2 + 1
  L11_2 = tostring
  L12_2 = A2_2
  L11_2 = L11_2(L12_2)
  L6_2[L10_2] = L11_2
  L10_2 = L4_1
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = "UPDATE `tk_housing_furniture` SET `storage_items` = "
  L15_2 = L7_2
  L16_2 = ", `storage_code` = "
  L17_2 = L8_2
  L18_2 = ", `storage_permissions` = "
  L19_2 = L9_2
  L20_2 = " WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
  L15_2 = L6_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
end
L12_1.UpdateStorage = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 then
    L4_2 = FurnitureDb
    L4_2 = L4_2.IsValidType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 and nil ~= A2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = {}
  L5_2 = Database
  L5_2 = L5_2.Value
  L6_2 = L4_2
  L7_2 = type
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if "table" == L7_2 then
    L7_2 = Database
    L7_2 = L7_2.Json
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_29
    end
  end
  L7_2 = nil
  ::lbl_29::
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L4_2[L6_2] = A0_2
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L4_2[L6_2] = A1_2
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L7_2 = tostring
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L4_2[L6_2] = L7_2
  L6_2 = L4_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = "UPDATE `tk_housing_furniture` SET `storage_items` = "
  L11_2 = L5_2
  L12_2 = " WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L10_2 = L10_2 .. L11_2 .. L12_2
  L11_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L12_1.UpdateStorageItems = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 then
    L4_2 = FurnitureDb
    L4_2 = L4_2.IsValidType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 and nil ~= A2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = {}
  L5_2 = Database
  L5_2 = L5_2.Value
  L6_2 = L4_2
  L7_2 = type
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  if "table" == L7_2 then
    L7_2 = Database
    L7_2 = L7_2.Json
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_29
    end
  end
  L7_2 = nil
  ::lbl_29::
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L4_2[L6_2] = A0_2
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L4_2[L6_2] = A1_2
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L7_2 = tostring
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L4_2[L6_2] = L7_2
  L6_2 = L4_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = "UPDATE `tk_housing_furniture` SET `storage_permissions` = "
  L11_2 = L5_2
  L12_2 = " WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L10_2 = L10_2 .. L11_2 .. L12_2
  L11_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L12_1.UpdateStoragePermissions = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 then
    L4_2 = FurnitureDb
    L4_2 = L4_2.IsValidType
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 and nil ~= A2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = {}
  L5_2 = Database
  L5_2 = L5_2.Value
  L6_2 = L4_2
  L7_2 = type
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  L7_2 = A3_2 or L7_2
  if "string" ~= L7_2 or not A3_2 then
    L7_2 = nil
  end
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L4_2[L6_2] = A0_2
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L4_2[L6_2] = A1_2
  L6_2 = #L4_2
  L6_2 = L6_2 + 1
  L7_2 = tostring
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L4_2[L6_2] = L7_2
  L6_2 = L4_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = "UPDATE `tk_housing_furniture` SET `speaker_group` = "
  L11_2 = L5_2
  L12_2 = " WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L10_2 = L10_2 .. L11_2 .. L12_2
  L11_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L12_1.UpdateSpeakerGroup = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 then
    L5_2 = FurnitureDb
    L5_2 = L5_2.IsValidType
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 and nil ~= A2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L5_2 = {}
  L6_2 = Database
  L6_2 = L6_2.Value
  L7_2 = L5_2
  L8_2 = type
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  if "table" == L8_2 then
    L8_2 = Database
    L8_2 = L8_2.Json
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_29
    end
  end
  L8_2 = nil
  ::lbl_29::
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = #L5_2
  L7_2 = L7_2 + 1
  L5_2[L7_2] = A0_2
  L7_2 = #L5_2
  L7_2 = L7_2 + 1
  L5_2[L7_2] = A1_2
  L7_2 = #L5_2
  L7_2 = L7_2 + 1
  L8_2 = tostring
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L5_2[L7_2] = L8_2
  L7_2 = L4_1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = "UPDATE `tk_housing_furniture` SET `data` = "
  L12_2 = L6_2
  L13_2 = " WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
  L11_2 = L11_2 .. L12_2 .. L13_2
  L12_2 = L5_2
  L13_2 = A4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L12_1.UpdateData = L13_1
L12_1 = FurnitureDb
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `property_id`, `group_id`, `name` FROM tk_housing_speaker_groups"
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
    L8_2 = L1_2[L8_2]
    if not L8_2 then
      L9_2 = {}
      L8_2 = L9_2
      L9_2 = L7_2.property_id
      L1_2[L9_2] = L8_2
    end
    L9_2 = L7_2.group_id
    L10_2 = L7_2.name
    L8_2[L9_2] = L10_2
  end
  return L1_2
end
L12_1.LoadSpeakerGroupNames = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      L3_2 = type
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if "string" == L3_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "INSERT INTO `tk_housing_speaker_groups` (`property_id`, `group_id`, `name`) VALUES (?, ?, ?) "
  L5_2 = "ON DUPLICATE KEY UPDATE `name` = VALUES(`name`)"
  L4_2 = L4_2 .. L5_2
  L5_2 = {}
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
end
L12_1.SaveSpeakerGroupName = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "DELETE FROM `tk_housing_speaker_groups` WHERE `property_id` = ? AND `group_id` = ?"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L12_1.DeleteSpeakerGroupName = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A0_2 then
    return
  end
  if nil ~= A1_2 then
    L2_2 = FurnitureDb
    L2_2 = L2_2.IsValidType
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
  end
  L2_2 = Electricity
  if L2_2 and not A1_2 then
    L2_2 = Electricity
    L2_2 = L2_2.ClearProperty
    L3_2 = A0_2
    L2_2(L3_2)
  end
  L2_2 = Generator
  if L2_2 then
    L2_2 = Generator
    L2_2 = L2_2.GetIds
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_34
    end
  end
  L2_2 = {}
  ::lbl_34::
  L3_2 = Generator
  if L3_2 then
    L3_2 = Generator
    L3_2 = L3_2.ClearProperty
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = nil
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = false
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L3_2
    if L0_3 then
      return
    end
    L0_3 = "DELETE FROM `tk_housing_furniture` WHERE `property_id` = ?"
    L1_3 = {}
    L2_3 = A0_2
    L1_3[1] = L2_3
    L2_3 = A1_2
    if L2_3 then
      L2_3 = L0_3
      L3_3 = " AND `furniture_type` = ?"
      L2_3 = L2_3 .. L3_3
      L0_3 = L2_3
      L2_3 = #L1_3
      L2_3 = L2_3 + 1
      L3_3 = A1_2
      L1_3[L2_3] = L3_3
    end
    L2_3 = MySQL
    L2_3 = L2_3.Async
    L2_3 = L2_3.execute
    L3_3 = L0_3
    L4_3 = L1_3
    function L5_3()
      local L0_4, L1_4, L2_4
      L0_4 = L3_2
      if L0_4 then
        return
      end
      L0_4 = true
      L3_2 = L0_4
      L0_4 = Generator
      if L0_4 then
        L0_4 = Generator
        L0_4 = L0_4.FinishClear
        L1_4 = A0_2
        L2_4 = A1_2
        L0_4(L1_4, L2_4)
      end
    end
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = SetTimeout
    L3_3 = L1_1
    L3_3 = L3_3 + 5000
    function L4_3()
      local L0_4, L1_4
      L0_4 = L3_2
      if not L0_4 then
        L0_4 = L4_2
        L0_4()
      end
    end
    L2_3(L3_3, L4_3)
  end
  L5_2 = #L2_2
  if 0 == L5_2 then
    L5_2 = L4_2
    L5_2()
    return
  end
  L5_2 = #L2_2
  L6_2 = ipairs
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = false
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      L0_3 = L4_1
      L1_3 = A0_2
      L2_3 = L11_2.furnitureType
      L3_3 = L11_2.id
      L4_3 = "DELETE FROM `tk_housing_furniture` WHERE `property_id` = ? AND `furniture_type` = ? AND `furniture_id` = ?"
      L5_3 = {}
      L6_3 = A0_2
      L7_3 = L11_2.furnitureType
      L8_3 = tostring
      L9_3 = L11_2.id
      L8_3, L9_3 = L8_3(L9_3)
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L5_3[4] = L9_3
      function L6_3()
        local L0_4, L1_4
        L0_4 = L12_2
        if L0_4 then
          return
        end
        L0_4 = true
        L12_2 = L0_4
        L0_4 = L5_2
        L0_4 = L0_4 - 1
        L5_2 = L0_4
        L0_4 = L5_2
        if 0 == L0_4 then
          L0_4 = L4_2
          L0_4()
        end
      end
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      L0_3 = SetTimeout
      L1_3 = L1_1
      L1_3 = L1_3 + 5000
      function L2_3()
        local L0_4, L1_4
        L0_4 = L12_2
        if not L0_4 then
          L0_4 = L13_2
          L0_4()
        end
      end
      L0_3(L1_3, L2_3)
    end
    L14_2 = L13_2
    L14_2()
  end
end
L12_1.DeleteAllForProperty = L13_1
L12_1 = FurnitureDb
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `property_id`, `furniture_type`, `furniture_id`, `model`, "
  L2_2 = "`position`, `rotation`, `storage_code`, `storage_items`, `storage_permissions`, `speaker_group`, `data` "
  L3_2 = "FROM tk_housing_furniture WHERE `data` LIKE ?"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L2_2 = {}
  L3_2 = "%\"generator\"%"
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
    L9_2 = {}
    L10_2 = L7_2.property_id
    L9_2.propertyId = L10_2
    L10_2 = L7_2.furniture_type
    L9_2.furnitureType = L10_2
    L10_2 = L11_1
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    L9_2.item = L10_2
    L1_2[L8_2] = L9_2
  end
  return L1_2
end
L12_1.LoadGenerators = L13_1
L12_1 = FurnitureDb
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT COUNT(1) FROM `tk_housing_furniture` WHERE `property_id` = ?"
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
L12_1.CountForProperty = L13_1
