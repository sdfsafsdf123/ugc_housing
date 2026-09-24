local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1
L0_1 = {}
Generator = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = os
L4_1 = L4_1.time
L4_1 = L4_1()
function L5_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Electricity
  if L0_2 then
    L0_2 = L0_2.mode
  end
  L0_2 = "advanced" == L0_2
  return L0_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = L2_1
  L1_2[A0_2] = true
  L1_2 = SetTimeout
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3
    L1_3 = A0_2
    L0_3 = L2_1
    L0_3[L1_3] = nil
    L0_3 = Utilities
    if L0_3 then
      L0_3 = Main
      L0_3 = L0_3.GetProperty
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = Utilities
        L0_3 = L0_3.Sync
        L1_3 = A0_2
        L0_3(L1_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
end
function L7_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Generator
  if L0_2 then
    L0_2 = L0_2.enable
  end
  L0_2 = true == L0_2
  return L0_2
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = math
  L0_2 = L0_2.max
  L1_2 = 1
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = tonumber
  L4_2 = Config
  L4_2 = L4_2.Generator
  if L4_2 then
    L4_2 = L4_2.capacity
  end
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 3600
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  return L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Generator
  if L1_2 then
    L1_2 = L1_2.fuelItems
    if L1_2 then
      L1_2 = L1_2[A0_2]
    end
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = #A0_2
    if not (L2_2 > 64) then
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not ("number" ~= L2_2 or L1_2 <= 0) then
        goto lbl_26
      end
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_26::
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2
  return L2_2(L3_2)
end
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.furniture
    if L3_2 then
      L3_2 = L3_2[A1_2]
    end
  end
  L4_2 = Main
  L4_2 = L4_2.GetFurnitureIndexById
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L3_2[L4_2]
    if L5_2 then
      goto lbl_22
    end
  end
  L5_2 = nil
  ::lbl_22::
  if L5_2 then
    L6_2 = Utils
    L6_2 = L6_2.GetEntryKindWithHandler
    L7_2 = L5_2
    L8_2 = "generator"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_33
    end
  end
  L6_2 = nil
  do return L6_2 end
  ::lbl_33::
  return L5_2
end
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
  end
  L1_2[A0_2] = L2_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L3_2 = ":"
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L2_2 = L2_2 .. L3_2 .. L4_2
  return L2_2
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2.propertyId
  L1_2 = L3_1
  L1_2 = L1_2[L2_2]
  L1_2 = not L1_2
  return L1_2
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2.data
  if L2_2 then
    L2_2 = L2_2.generator
  end
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2.generator
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = {}
  ::lbl_15::
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = tonumber
  L4_2 = L1_2.fuelSeconds
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = L8_1
  L4_2 = L4_2()
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2.fuelSeconds = L3_2
  L3_2 = L1_2.running
  L3_2 = true == L3_2
  L1_2.running = L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = tonumber
  L5_2 = L1_2.lastFuelAt
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
  end
  L3_2 = L3_2(L4_2)
  L1_2.lastFuelAt = L3_2
  L3_2 = type
  L4_2 = L1_2.connection
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = type
    L4_2 = L1_2.connection
    L4_2 = L4_2.batteryId
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      L3_2 = type
      L4_2 = L1_2.connection
      L4_2 = L4_2.path
      L3_2 = L3_2(L4_2)
      if "table" == L3_2 then
        goto lbl_74
      end
    end
  end
  L1_2.connection = nil
  ::lbl_74::
  L3_2 = A0_2.data
  if not L3_2 then
    L3_2 = {}
  end
  A0_2.data = L3_2
  L3_2 = A0_2.data
  L3_2.generator = L1_2
  return L1_2
end
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L13_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2.saving
  if L2_2 then
    A0_2.dirty = true
    return
  end
  L2_2 = L10_1
  L3_2 = A0_2.propertyId
  L4_2 = A0_2.furnitureType
  L5_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.dirty = false
  A0_2.saving = true
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  A0_2.savingAt = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = L13_1
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    A0_2.saving = false
    A0_2.savingAt = nil
    L0_3 = A0_2.dirty
    if L0_3 then
      L0_3 = L15_1
      L1_3 = A0_2
      L0_3(L1_3)
    end
  end
  if L2_2 then
    L4_2 = L2_2.data
    if not L4_2 then
      L4_2 = A0_2.data
      if not L4_2 then
        L4_2 = {}
      end
    end
    A0_2.data = L4_2
    L4_2 = A0_2.data
    L5_2 = A0_2.state
    L4_2.generator = L5_2
    L4_2 = Furniture
    L4_2 = L4_2.SetData
    L5_2 = A0_2.propertyId
    L6_2 = A0_2.furnitureType
    L7_2 = A0_2.id
    L8_2 = {}
    L9_2 = A0_2.state
    L8_2.generator = L9_2
    L9_2 = A1_2
    L10_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = A0_2.propertyId
    if L4_2 > 0 then
      L4_2 = A0_2.data
      if not L4_2 then
        L4_2 = {}
      end
      A0_2.data = L4_2
      L4_2 = A0_2.data
      L5_2 = A0_2.state
      L4_2.generator = L5_2
      L4_2 = A0_2.row
      if L4_2 then
        L4_2 = L4_2.isAccessPoint
      end
      if L4_2 then
        L4_2 = A0_2.row
        L4_2 = L4_2.dbRowExists
        if not L4_2 then
          L4_2 = A0_2.row
          L5_2 = A0_2.data
          L4_2.data = L5_2
          L4_2 = FurnitureDb
          L4_2 = L4_2.Save
          L5_2 = A0_2.propertyId
          L6_2 = A0_2.furnitureType
          L7_2 = A0_2.row
          function L8_2(A0_3)
            local L1_3
            if A0_3 then
              L1_3 = A0_2.row
              L1_3.dbRowExists = true
            end
            L1_3 = L3_2
            L1_3()
          end
          L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      else
        L4_2 = FurnitureDb
        L4_2 = L4_2.UpdateData
        L5_2 = A0_2.propertyId
        L6_2 = A0_2.furnitureType
        L7_2 = A0_2.id
        L8_2 = A0_2.data
        L9_2 = L3_2
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    else
      L4_2 = L3_2
      L4_2()
    end
  end
end
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L5_1
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2.state
    L2_2 = L2_2.running
    if L2_2 then
      L2_2 = A0_2.state
      L2_2 = L2_2.fuelSeconds
      L2_2 = L2_2 > 0
    end
    L3_2 = false
    return L2_2, L3_2
  end
  L2_2 = A0_2.state
  L3_2 = L2_2.running
  if L3_2 then
    L3_2 = L2_2.fuelSeconds
    if not (L3_2 <= 0) then
      goto lbl_27
    end
  end
  L3_2 = false
  L4_2 = false
  do return L3_2, L4_2 end
  ::lbl_27::
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = L2_2.lastFuelAt
  if not L5_2 then
    L5_2 = L3_2
  end
  L6_2 = L4_1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Config
  L5_2 = L5_2.Generator
  L5_2 = L5_2.offlineConsumption
  if false ~= L5_2 then
    L5_2 = L2_2.lastFuelAt
    L4_2 = L5_2 or L4_2
    if not L5_2 then
      L4_2 = L3_2
    end
  end
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = L3_2 - L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 < 1 then
    L6_2 = true
    L7_2 = false
    return L6_2, L7_2
  end
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = 0
  L8_2 = L2_2.fuelSeconds
  L8_2 = L8_2 - L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L2_2.fuelSeconds = L6_2
  L2_2.lastFuelAt = L3_2
  L6_2 = L2_2.fuelSeconds
  L6_2 = 0 == L6_2
  if L6_2 then
    L2_2.running = false
  end
  if A1_2 then
    L7_2 = L15_1
    L8_2 = A0_2
    L7_2(L8_2)
  end
  if L6_2 then
    L7_2 = Utilities
    if L7_2 then
      L7_2 = Utilities
      L7_2 = L7_2.OnGeneratorStateChange
      L8_2 = A0_2.propertyId
      L9_2 = true
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
    end
    L7_2 = L6_1
    L8_2 = A0_2.propertyId
    L7_2(L8_2)
  end
  L7_2 = L2_2.running
  L8_2 = L6_2
  return L7_2, L8_2
end
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L12_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2[L4_2]
  end
  if L3_2 then
    return L3_2
  end
  L4_2 = L10_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = {}
  L5_2.propertyId = A0_2
  L5_2.furnitureType = A1_2
  L5_2.id = A2_2
  L6_2 = AccessPoints
  L6_2 = L6_2.Find
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L6_2 = L6_2.label
  end
  if not L6_2 then
    L6_2 = Utils
    L6_2 = L6_2.GetCatalogEntryByModel
    L7_2 = L4_2.model
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L6_2.label
    end
    if not L6_2 then
      L6_2 = _U
      L7_2 = "generator_title"
      L6_2 = L6_2(L7_2)
    end
  end
  L5_2.label = L6_2
  L6_2 = L4_2.data
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.data = L6_2
  L5_2.row = L4_2
  L3_2 = L5_2
  L5_2 = L14_1
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L3_2.state = L5_2
  L5_2 = L11_1
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L12_1
  L7_2 = A1_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2[L6_2] = L3_2
  return L3_2
end
L18_1 = Generator
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L7_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = ipairs
  L1_2 = FurnitureDb
  L1_2 = L1_2.LoadGenerators
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L1_2()
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Main
    L6_2 = L6_2.GetProperty
    L7_2 = L5_2.propertyId
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = AccessPoints
      L7_2 = L7_2.Find
      L8_2 = L6_2
      L9_2 = L5_2.furnitureType
      L10_2 = L5_2.item
      L10_2 = L10_2.id
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if L7_2 then
        goto lbl_28
      end
    end
    L7_2 = nil
    ::lbl_28::
    L8_2 = type
    L9_2 = L5_2.item
    L9_2 = L9_2.id
    L8_2 = L8_2(L9_2)
    L8_2 = L5_2.item
    L8_2 = L8_2.id
    L9_2 = L8_2
    L8_2 = L8_2.match
    L10_2 = "^interior_%d+$"
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = L5_2.item
      L8_2 = L8_2.id
      L9_2 = L8_2
      L8_2 = L8_2.match
      L10_2 = "^property_%d+$"
      L8_2 = "string" == L8_2 and L8_2
    end
    L9_2 = L7_2 or L9_2
    if L7_2 then
      L9_2 = L7_2.kind
    end
    if "generator" == L9_2 then
      L9_2 = L5_2.item
      L9_2.isAccessPoint = true
      L9_2 = L5_2.item
      L9_2.dbRowExists = true
      L9_2 = L5_2.item
      L10_2 = {}
      L11_2 = "generator"
      L10_2[1] = L11_2
      L9_2.kinds = L10_2
      L9_2 = L5_2.item
      L10_2 = L7_2.coords
      L9_2.coords = L10_2
      L9_2 = L5_2.item
      L10_2 = L7_2.model
      if not L10_2 then
        L10_2 = 0
      end
      L9_2.model = L10_2
    end
    if L6_2 then
      if L8_2 then
        L9_2 = L7_2 or L9_2
        if L7_2 then
          L9_2 = L7_2.kind
        end
        if "generator" ~= L9_2 then
          goto lbl_143
        end
      end
      L9_2 = Utils
      L9_2 = L9_2.GetEntryKindWithHandler
      L10_2 = L5_2.item
      L11_2 = "generator"
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = {}
        L10_2 = L5_2.propertyId
        L9_2.propertyId = L10_2
        L10_2 = L5_2.furnitureType
        L9_2.furnitureType = L10_2
        L10_2 = L5_2.item
        L10_2 = L10_2.id
        L9_2.id = L10_2
        L10_2 = L7_2 or L10_2
        if L7_2 then
          L10_2 = L7_2.label
        end
        if not L10_2 then
          L10_2 = Utils
          L10_2 = L10_2.GetCatalogEntryByModel
          L11_2 = L5_2.item
          L11_2 = L11_2.model
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = L10_2.label
          end
          if not L10_2 then
            L10_2 = _U
            L11_2 = "generator_title"
            L10_2 = L10_2(L11_2)
          end
        end
        L9_2.label = L10_2
        L10_2 = L5_2.item
        L10_2 = L10_2.data
        if not L10_2 then
          L10_2 = {}
        end
        L9_2.data = L10_2
        L10_2 = L5_2.item
        L9_2.row = L10_2
        L10_2 = L14_1
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L9_2.state = L10_2
        L10_2 = L11_1
        L11_2 = L5_2.propertyId
        L10_2 = L10_2(L11_2)
        L11_2 = L12_1
        L12_2 = L5_2.furnitureType
        L13_2 = L5_2.item
        L13_2 = L13_2.id
        L11_2 = L11_2(L12_2, L13_2)
        L10_2[L11_2] = L9_2
        L10_2 = L16_1
        L11_2 = L9_2
        L12_2 = true
        L10_2(L11_2, L12_2)
      end
    end
    ::lbl_143::
  end
end
L18_1.Prime = L19_1
L18_1 = Generator
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = L3_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = L0_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = {}
  L5_2 = "house"
  L6_2 = "garage"
  L7_2 = "yard"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = ipairs
    L10_2 = L2_2 or L10_2
    if L2_2 then
      L10_2 = L2_2.furniture
      if L10_2 then
        L10_2 = L10_2[L8_2]
      end
    end
    if not L10_2 then
      L10_2 = {}
    end
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = Utils
      L15_2 = L15_2.GetEntryKindWithHandler
      L16_2 = L14_2
      L17_2 = "generator"
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = L12_1
        L16_2 = L8_2
        L17_2 = L14_2.id
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = L1_2[L15_2]
        if L16_2 then
          L17_2 = L16_2.saving
          if not L17_2 then
            L17_2 = L16_2.dirty
            if not L17_2 then
              goto lbl_78
            end
          end
          L16_2.row = L14_2
          L17_2 = L14_2.data
          if not L17_2 then
            L17_2 = {}
          end
          L16_2.data = L17_2
          L17_2 = L16_2.data
          L18_2 = L16_2.state
          L17_2.generator = L18_2
          L17_2 = L16_2.data
          L14_2.data = L17_2
          L17_2 = L0_1
          L17_2 = L17_2[A0_2]
          L17_2[L15_2] = L16_2
        ::lbl_78::
        else
          L17_2 = L17_1
          L18_2 = A0_2
          L19_2 = L8_2
          L20_2 = L14_2.id
          L17_2(L18_2, L19_2, L20_2)
        end
      end
    end
  end
end
L18_1.LoadProperty = L19_1
L18_1 = Generator
function L19_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A3_2 then
    L4_2 = L3_1
    L5_2 = L3_1
    L5_2 = L5_2[A0_2]
    if not L5_2 then
      L5_2 = 0
    end
    L5_2 = L5_2 + 1
    L4_2[A0_2] = L5_2
  end
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    if A3_2 then
      L5_2 = L0_1
      L6_2 = {}
      L5_2[A0_2] = L6_2
    end
    return
  end
  L5_2 = false
  L6_2 = pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if not L5_2 then
      L12_2 = L11_2.state
      L12_2 = L12_2.running
      L5_2 = L12_2 or L5_2
      if L12_2 then
        L12_2 = L11_2.state
        L12_2 = L12_2.fuelSeconds
        L5_2 = L12_2 > 0
      end
    end
  end
  if A1_2 and A2_2 then
    L6_2 = L12_1
    L7_2 = A1_2
    L8_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L4_2[L6_2]
    if not L7_2 then
      return
    end
    L4_2[L6_2] = nil
  elseif A1_2 then
    L6_2 = A1_2
    L7_2 = ":"
    L6_2 = L6_2 .. L7_2
    L7_2 = pairs
    L8_2 = L4_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L11_2
      L12_2 = L11_2.sub
      L14_2 = 1
      L15_2 = #L6_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if L12_2 == L6_2 then
        L4_2[L11_2] = nil
      end
    end
  else
    L6_2 = L0_1
    L7_2 = {}
    L6_2[A0_2] = L7_2
  end
  if L5_2 then
    L6_2 = L6_1
    L7_2 = A0_2
    L6_2(L7_2)
  end
end
L18_1.ClearProperty = L19_1
L18_1 = Generator
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if A1_2 then
      L9_2 = L8_2.furnitureType
      if L9_2 ~= A1_2 then
        goto lbl_27
      end
    end
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L11_2 = L8_2.furnitureType
    L10_2.furnitureType = L11_2
    L11_2 = L8_2.id
    L10_2.id = L11_2
    L2_2[L9_2] = L10_2
    ::lbl_27::
  end
  return L2_2
end
L18_1.GetIds = L19_1
L18_1 = Generator
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = L3_1
  if L2_2 > 1 then
    L4_2 = L2_2 - 1
    if L4_2 then
      goto lbl_14
    end
  end
  L4_2 = nil
  ::lbl_14::
  L3_2[A0_2] = L4_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.furniture
    if not L4_2 then
      L4_2 = {}
      L5_2 = {}
      L4_2.house = L5_2
      L5_2 = {}
      L4_2.yard = L5_2
      L5_2 = {}
      L4_2.garage = L5_2
    end
    L3_2.furniture = L4_2
    if A1_2 then
      L4_2 = L3_2.furniture
      L5_2 = {}
      L4_2[A1_2] = L5_2
    else
      L4_2 = {}
      L5_2 = {}
      L4_2.house = L5_2
      L5_2 = {}
      L4_2.yard = L5_2
      L5_2 = {}
      L4_2.garage = L5_2
      L3_2.furniture = L4_2
    end
    L4_2 = Main
    L4_2 = L4_2.SetPropertyLoaded
    L5_2 = A0_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = L3_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = L6_1
    L5_2 = A0_2
    L4_2(L5_2)
  end
end
L18_1.FinishClear = L19_1
L18_1 = Generator
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L5_1
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = Electricity
    if L1_2 then
      L1_2 = Electricity
      L1_2 = L1_2.IsPowered
      L2_2 = A0_2
      return L1_2(L2_2)
    end
  end
  L1_2 = L7_1
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" == L1_2 then
      L1_2 = Main
      L1_2 = L1_2.GetProperty
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_30
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_30::
  L1_2 = L3_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    if A0_2 > 0 then
      L1_2 = Main
      L1_2 = L1_2.IsPropertyLoaded
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = false
        return L1_2
      end
    end
    L1_2 = Generator
    L1_2 = L1_2.LoadProperty
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Main
    L7_2 = L7_2.IsPropertyLoaded
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L10_1
      L8_2 = A0_2
      L9_2 = L6_2.furnitureType
      L10_2 = L6_2.id
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L7_2 = L0_1
        L7_2 = L7_2[A0_2]
        L7_2[L5_2] = nil
    end
    else
      L7_2 = L6_2.state
      L7_2 = L7_2.fuelSeconds
      L8_2 = L16_1
      L9_2 = L6_2
      L10_2 = false
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L6_2.state
      L9_2 = L9_2.fuelSeconds
      if L9_2 ~= L7_2 then
        L6_2.dirty = true
      end
      if L8_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L18_1.IsPowered = L19_1
L18_1 = Generator
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.dirty
    if L8_2 then
      L8_2 = L15_1
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
  L2_2 = next
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    L2_2 = L0_1
    L2_2[A0_2] = nil
  end
end
L18_1.ReleaseProperty = L19_1
L18_1 = Generator
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A2_2.coords
  L4_2 = A2_2.isAccessPoint
  if L4_2 then
    L4_2 = AccessPoints
    L4_2 = L4_2.Find
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2.id
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      goto lbl_14
    end
  end
  L4_2 = nil
  ::lbl_14::
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = L4_2.source
  end
  if "interior" == L5_2 then
    if "house" == A1_2 then
      L5_2 = Config
      L5_2 = L5_2.HouseInteriors
      L6_2 = A0_2.houseInterior
      L5_2 = L5_2[L6_2]
      if L5_2 then
        goto lbl_31
      end
    end
    L5_2 = Config
    L5_2 = L5_2.GarageInteriors
    L6_2 = A0_2.garageInterior
    L5_2 = L5_2[L6_2]
    ::lbl_31::
    if L5_2 then
      L6_2 = L5_2.isIpl
      if not L6_2 then
        L6_2 = L5_2.model
        if not L6_2 then
          L6_2 = L5_2.isCustomShell
          if not L6_2 then
            goto lbl_87
          end
        end
        L6_2 = A0_2.doors
        if L6_2 then
          L6_2 = L6_2[A1_2]
          if L6_2 then
            L6_2 = L6_2[1]
            if L6_2 then
              L6_2 = L6_2.coords
            end
          end
        end
        L7_2 = Config
        L7_2 = L7_2.ShellOffset
        if not L7_2 then
          L7_2 = vec3
          L8_2 = 0.0
          L9_2 = 0.0
          L10_2 = 500.0
          L7_2 = L7_2(L8_2, L9_2, L10_2)
        end
        if L6_2 then
          L8_2 = vec3
          L9_2 = L6_2.x
          L10_2 = L3_2.x
          L9_2 = L9_2 + L10_2
          L10_2 = L7_2.x
          L9_2 = L9_2 + L10_2
          L10_2 = L6_2.y
          L11_2 = L3_2.y
          L10_2 = L10_2 + L11_2
          L11_2 = L7_2.y
          L10_2 = L10_2 + L11_2
          L11_2 = L6_2.z
          L12_2 = L3_2.z
          L11_2 = L11_2 + L12_2
          L12_2 = L7_2.z
          L11_2 = L11_2 + L12_2
          return L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
  ::lbl_87::
  if L3_2 then
    L5_2 = vec3
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      goto lbl_97
    end
  end
  L5_2 = nil
  ::lbl_97::
  return L5_2
end
L18_1.WorldCoords = L19_1
function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_15
    end
  end
  L4_2 = nil
  L5_2 = "generator_invalid"
  do return L4_2, L5_2 end
  ::lbl_15::
  L4_2 = FurnitureDb
  L4_2 = L4_2.IsValidType
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = type
    L5_2 = A3_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      L4_2 = #A3_2
      if not (L4_2 > 80) then
        goto lbl_32
      end
    end
  end
  L4_2 = nil
  L5_2 = "generator_invalid"
  do return L4_2, L5_2 end
  ::lbl_32::
  L4_2 = L7_1
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = nil
    L5_2 = "generator_disabled"
    return L4_2, L5_2
  end
  L4_2 = L3_1
  L4_2 = L4_2[A1_2]
  if L4_2 then
    L4_2 = nil
    L5_2 = "generator_busy"
    return L4_2, L5_2
  end
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = L3_1
  L4_2 = L4_2[A1_2]
  if L4_2 then
    L4_2 = nil
    L5_2 = "generator_busy"
    return L4_2, L5_2
  end
  L4_2 = L10_1
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L5_2 = nil
    L6_2 = "generator_invalid"
    return L5_2, L6_2
  end
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = nil
    L7_2 = "generator_invalid"
    return L6_2, L7_2
  end
  if "house" == A2_2 then
    L6_2 = Main
    L6_2 = L6_2.GetHousePlayers
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L6_2[A0_2]
    end
    if L6_2 then
      goto lbl_109
    end
  end
  if "garage" == A2_2 then
    L6_2 = Main
    L6_2 = L6_2.GetGaragePlayers
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L6_2[A0_2]
    end
  end
  L6_2 = Main
  L6_2 = L6_2.GetYardPlayers
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 or "yard" == A2_2 and L6_2 and L6_2
  ::lbl_109::
  if not L6_2 then
    L7_2 = nil
    L8_2 = "generator_no_access"
    return L7_2, L8_2
  end
  if "yard" ~= A2_2 then
    L7_2 = Main
    L7_2 = L7_2.GetPropertyAccess
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= A1_2 then
      L7_2 = nil
      L8_2 = "generator_no_access"
      return L7_2, L8_2
    end
  end
  L7_2 = Generator
  L7_2 = L7_2.WorldCoords
  L8_2 = Main
  L8_2 = L8_2.GetProperty
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L9_2 = A2_2
  L10_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = GetPlayerPed
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = Config
  L9_2 = L9_2.FurnitureUses
  L9_2 = L9_2.generator
  if L9_2 then
    L9_2 = L9_2.dist
  end
  if not L9_2 then
    L9_2 = 2.0
  end
  L9_2 = L9_2 + 1.5
  if 0 ~= L8_2 and L7_2 then
    L10_2 = GetEntityCoords
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2 - L7_2
    L10_2 = #L10_2
    if not (L9_2 < L10_2) then
      goto lbl_163
    end
  end
  L10_2 = nil
  L11_2 = "generator_too_far"
  do return L10_2, L11_2 end
  ::lbl_163::
  L10_2 = L17_1
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = A3_2
  return L10_2(L11_2, L12_2, L13_2)
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L5_1
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = Electricity
    if L2_2 then
      L2_2 = Electricity
      L2_2 = L2_2.Reconcile
      L3_2 = A0_2.propertyId
      L4_2 = false
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = L16_1
    L3_2 = A0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.Generator
  L4_2 = L4_2.fuelItems
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 then
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "number" == L9_2 and L8_2 > 0 then
        L9_2 = pcall
        L10_2 = GetItemLabel
        L11_2 = L7_2
        L9_2, L10_2 = L9_2(L10_2, L11_2)
        L11_2 = #L2_2
        L11_2 = L11_2 + 1
        L12_2 = {}
        L12_2.item = L7_2
        L13_2 = L10_2 or L13_2
        if not L9_2 or not L10_2 then
          L13_2 = L7_2
        end
        L12_2.label = L13_2
        L13_2 = math
        L13_2 = L13_2.floor
        L14_2 = L8_2
        L13_2 = L13_2(L14_2)
        L12_2.seconds = L13_2
        if A1_2 then
          L13_2 = GetItemAmount
          L14_2 = A1_2
          L15_2 = L7_2
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            goto lbl_72
          end
        end
        L13_2 = 0
        ::lbl_72::
        L12_2.count = L13_2
        L2_2[L11_2] = L12_2
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.label
    L3_3 = A1_3.label
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = tostring
  L5_2 = A0_2.id
  L4_2 = L4_2(L5_2)
  L3_2.id = L4_2
  L4_2 = A0_2.label
  L3_2.label = L4_2
  L4_2 = A0_2.state
  L4_2 = L4_2.running
  L3_2.running = L4_2
  L4_2 = A0_2.state
  L4_2 = L4_2.fuelSeconds
  L3_2.fuelSeconds = L4_2
  L4_2 = L8_1
  L4_2 = L4_2()
  L3_2.capacitySeconds = L4_2
  L4_2 = Utilities
  L4_2 = L4_2.GetStatus
  L5_2 = A0_2.propertyId
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.electricity
  L3_2.powered = L4_2
  L3_2.fuels = L2_2
  L4_2 = Electricity
  if L4_2 then
    L4_2 = Electricity
    L4_2 = L4_2.GetGeneratorData
    L5_2 = A0_2.propertyId
    L6_2 = A0_2.furnitureType
    L7_2 = A0_2.id
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.electricity = L4_2
    L4_2 = L3_2.electricity
    if A1_2 then
      L5_2 = Permissions
      L5_2 = L5_2.IsOwnerOrManager
      L6_2 = A1_2
      L7_2 = A0_2.propertyId
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        goto lbl_127
      end
    end
    L5_2 = false
    ::lbl_127::
    L4_2.canManage = L5_2
    L4_2 = L3_2.electricity
    if A1_2 then
      L5_2 = Furniture
      L5_2 = L5_2.CanEditField
      L6_2 = GetSource
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2.propertyId
      L8_2 = "furnish"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if L5_2 then
        goto lbl_142
      end
    end
    L5_2 = false
    ::lbl_142::
    L4_2.canWire = L5_2
  end
  return L3_2
end
L20_1 = Generator
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L18_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L20_1.CanUseNear = L21_1
L20_1 = Generator
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Config
  L1_2 = L1_2.Generator
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = Generator
    L1_2 = L1_2.LoadProperty
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L10_2 = L12_1
    L11_2 = L7_2.furnitureType
    L12_2 = L7_2.id
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.id = L10_2
    L10_2 = L7_2.state
    L10_2 = L10_2.running
    L9_2.running = L10_2
    L10_2 = L7_2.state
    L10_2 = L10_2.fuelSeconds
    L9_2.fuelSeconds = L10_2
    L10_2 = Config
    L10_2 = L10_2.Generator
    L10_2 = L10_2.ratedWatts
    L9_2.ratedWatts = L10_2
    L10_2 = Config
    L10_2 = L10_2.Generator
    L10_2 = L10_2.idleFuelFraction
    L9_2.idleFuelFraction = L10_2
    L10_2 = L7_2.state
    L10_2 = L10_2.connection
    if L10_2 then
      L10_2 = L10_2.batteryId
    end
    L9_2.batteryId = L10_2
    L10_2 = L7_2.state
    L10_2 = L10_2.connection
    if L10_2 then
      L10_2 = L10_2.path
    end
    L9_2.path = L10_2
    L1_2[L8_2] = L9_2
  end
  return L1_2
end
L20_1.GetPowerSources = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L19_1
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L20_1.GetData = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L17_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L5_2 = L3_2.state
  L5_2 = L5_2.connection
  if L5_2 then
    L5_2 = L5_2.batteryId
  end
  L4_2.batteryId = L5_2
  L5_2 = L3_2.state
  L5_2 = L5_2.connection
  if L5_2 then
    L5_2 = L5_2.path
  end
  L4_2.path = L5_2
  return L4_2
end
L20_1.GetPowerSource = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Generator
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if L3_2 then
    L3_2 = FurnitureDb
    L3_2 = L3_2.IsValidType
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = type
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if "string" == L3_2 then
        L3_2 = #A2_2
        if not (L3_2 > 80) then
          goto lbl_24
        end
      end
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_24::
  L3_2 = L10_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L17_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L20_1.GetWiringSource = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tostring
    L10_2 = L8_2.id
    L9_2 = L9_2(L10_2)
    L2_2[L9_2] = L8_2
  end
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2[L7_2]
    if L9_2 then
      L10_2 = math
      L10_2 = L10_2.abs
      L11_2 = L8_2.state
      L11_2 = L11_2.fuelSeconds
      L12_2 = L9_2.fuelSeconds
      L11_2 = L11_2 - L12_2
      L10_2 = L10_2(L11_2)
      L11_2 = 1.0E-4
      if L10_2 > L11_2 then
        L10_2 = L8_2.state
        L11_2 = L9_2.fuelSeconds
        L10_2.fuelSeconds = L11_2
        L10_2 = L8_2.state
        L10_2 = L10_2.fuelSeconds
        if L10_2 <= 0 then
          L10_2 = L8_2.state
          L10_2.running = false
        end
        L10_2 = L8_2.state
        L11_2 = os
        L11_2 = L11_2.time
        L11_2 = L11_2()
        L10_2.lastFuelAt = L11_2
        L8_2.dirty = true
      end
    end
  end
end
L20_1.ApplyPowerResult = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 1
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = Config
  L5_2 = L5_2.Electricity
  L5_2 = L5_2.saveInterval
  if not L5_2 then
    L5_2 = 60000
  end
  L5_2 = L5_2 / 1000
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.dirty
    if L9_2 then
      L9_2 = L8_2.saving
      if not L9_2 then
        if not A1_2 then
          L9_2 = L8_2.lastPowerSave
          if L9_2 then
            L9_2 = os
            L9_2 = L9_2.time
            L9_2 = L9_2()
            L10_2 = L8_2.lastPowerSave
            L9_2 = L9_2 - L10_2
            if not (L2_2 <= L9_2) then
              goto lbl_51
            end
          end
        end
        L9_2 = os
        L9_2 = L9_2.time
        L9_2 = L9_2()
        L8_2.lastPowerSave = L9_2
        L9_2 = L15_1
        L10_2 = L8_2
        L9_2(L10_2)
      end
    end
    ::lbl_51::
  end
end
L20_1.SavePower = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L12_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.state
    L11_2 = L11_2.connection
    if L11_2 then
      L11_2 = L11_2.batteryId
    end
    if L11_2 == L3_2 then
      L11_2 = #L4_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L13_2 = tostring
      L14_2 = L10_2.id
      L13_2 = L13_2(L14_2)
      L12_2.id = L13_2
      L13_2 = L10_2.label
      L12_2.label = L13_2
      L13_2 = L10_2.state
      L13_2 = L13_2.connection
      L13_2 = L13_2.path
      L12_2.path = L13_2
      L13_2 = L10_2.state
      L13_2 = L13_2.running
      L13_2 = true == L13_2
      L12_2.running = L13_2
      L13_2 = L10_2.state
      L13_2 = L13_2.fuelSeconds
      L12_2.fuelSeconds = L13_2
      L4_2[L11_2] = L12_2
    end
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L4_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.label
    L3_3 = A1_3.label
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L5_2(L6_2, L7_2)
  return L4_2
end
L20_1.GetBatteryConnections = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2.state
  if A1_2 then
    L5_2 = {}
    L5_2.batteryId = A1_2
    L6_2 = A2_2 or L6_2
    if not A2_2 then
      L6_2 = {}
    end
    L5_2.path = L6_2
    if L5_2 then
      goto lbl_15
    end
  end
  L5_2 = nil
  ::lbl_15::
  L4_2.connection = L5_2
  L4_2 = L15_1
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L20_1.SetConnection = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.state
    L8_2 = L8_2.connection
    if L8_2 then
      L8_2 = L8_2.batteryId
    end
    if L8_2 == A1_2 then
      L8_2 = L7_2.state
      L8_2.connection = nil
      L8_2 = L15_1
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
end
L20_1.DisconnectBattery = L21_1
L20_1 = Generator
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = FurnitureDb
      L4_2 = L4_2.IsValidType
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = type
        L5_2 = A3_2
        L4_2 = L4_2(L5_2)
        if "string" == L4_2 then
          L4_2 = #A3_2
          if not (L4_2 > 80) then
            L4_2 = L7_1
            L4_2 = L4_2()
            if L4_2 then
              goto lbl_32
            end
          end
        end
      end
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_32::
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = L17_1
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L4_2 or not L5_2 then
    L6_2 = nil
    return L6_2
  end
  if "yard" == A2_2 then
    L6_2 = Properties
    L6_2 = L6_2.CanAccessProperty
    L7_2 = L5_2
    L8_2 = A0_2
    L9_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if not L6_2 then
      L6_2 = nil
      return L6_2
    end
  else
    L6_2 = Main
    L6_2 = L6_2.GetPropertyAccess
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 == A1_2 then
      if "house" == A2_2 then
        L6_2 = Main
        L6_2 = L6_2.GetHousePlayers
        L7_2 = A1_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = L6_2[A0_2]
        end
        if L6_2 then
          goto lbl_93
        end
      end
      if "garage" == A2_2 then
        L6_2 = Main
        L6_2 = L6_2.GetGaragePlayers
        L7_2 = A1_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = L6_2[A0_2]
        end
        if L6_2 then
          goto lbl_93
        end
      end
    end
    L6_2 = nil
    return L6_2
  end
  ::lbl_93::
  L6_2 = Generator
  L6_2 = L6_2.WorldCoords
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = A2_2
  L9_2 = L4_2.row
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = GetPlayerPed
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = Config
  L8_2 = L8_2.FurnitureUses
  L8_2 = L8_2.generator
  if L8_2 then
    L8_2 = L8_2.dist
  end
  if not L8_2 then
    L8_2 = 2.0
  end
  L8_2 = L8_2 + 1.5
  if 0 ~= L7_2 and L6_2 then
    L9_2 = GetEntityCoords
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - L6_2
    L9_2 = #L9_2
    if not (L8_2 < L9_2) then
      goto lbl_130
    end
  end
  L9_2 = nil
  do return L9_2 end
  ::lbl_130::
  return L4_2
end
L20_1.CanConfigure = L21_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.ok = false
  L2_2 = _U
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.error = L2_2
  return L1_2
end
L21_1 = RegisterCallback
L22_1 = "tk_housing:getGenerator"
function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = L18_1
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L7_2 = A1_2
    L8_2 = L20_1
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L7_2 = A1_2
  L8_2 = {}
  L8_2.ok = true
  L9_2 = L19_1
  L10_2 = L5_2
  L11_2 = GetPlayerFromId
  L12_2 = A0_2
  L11_2, L12_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.data = L9_2
  L7_2(L8_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterCallback
L22_1 = "tk_housing:refuelGenerator"
function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L7_2 = type
  L8_2 = A6_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = A6_2
    L7_2 = L7_2(L8_2)
    if A6_2 == L7_2 and not (A6_2 < 1) then
      L7_2 = 1000
      if not (A6_2 > L7_2) then
        goto lbl_23
      end
    end
  end
  L7_2 = A1_2
  L8_2 = L20_1
  L9_2 = "generator_bad_amount"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2(L9_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  do return end
  ::lbl_23::
  L7_2 = L9_1
  L8_2 = A5_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L8_2 = A1_2
    L9_2 = L20_1
    L10_2 = "generator_bad_fuel"
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2(L10_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L8_2 = L18_1
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L10_2 = A1_2
    L11_2 = L20_1
    L12_2 = L9_2
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L10_2 = Main
  L10_2 = L10_2.AllowChange
  L11_2 = A0_2
  L12_2 = 500
  L10_2 = L10_2(L11_2, L12_2)
  if not L10_2 then
    L10_2 = A1_2
    L11_2 = L20_1
    L12_2 = "generator_busy"
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L10_2 = A2_2
  L11_2 = ":"
  L12_2 = A3_2
  L13_2 = ":"
  L14_2 = A4_2
  L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
  L11_2 = L1_1
  L11_2 = L11_2[L10_2]
  if L11_2 then
    L11_2 = A1_2
    L12_2 = L20_1
    L13_2 = "generator_busy"
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L11_2 = L1_1
  L11_2[L10_2] = true
  L11_2 = L5_1
  L11_2 = L11_2()
  if L11_2 then
    L11_2 = Electricity
    if L11_2 then
      L11_2 = Electricity
      L11_2 = L11_2.Reconcile
      L12_2 = A2_2
      L13_2 = true
      L11_2(L12_2, L13_2)
  end
  else
    L11_2 = L16_1
    L12_2 = L8_2
    L13_2 = true
    L11_2(L12_2, L13_2)
  end
  L11_2 = L18_1
  L12_2 = A0_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A4_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  if L11_2 ~= L8_2 then
    L12_2 = L1_1
    L12_2[L10_2] = nil
    L12_2 = A1_2
    L13_2 = L20_1
    L14_2 = "generator_invalid"
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L12_2 = L8_1
  L12_2 = L12_2()
  L13_2 = L8_2.state
  L13_2 = L13_2.fuelSeconds
  L12_2 = L12_2 - L13_2
  L13_2 = math
  L13_2 = L13_2.floor
  L14_2 = L12_2 / L7_2
  L13_2 = L13_2(L14_2)
  if A6_2 > L13_2 then
    L13_2 = L1_1
    L13_2[L10_2] = nil
    L13_2 = A1_2
    L14_2 = L20_1
    L15_2 = "generator_capacity"
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2)
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L13_2 = GetPlayerFromId
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  if L13_2 then
    L14_2 = GetItemAmount
    L15_2 = L13_2
    L16_2 = A5_2
    L14_2 = L14_2(L15_2, L16_2)
    if not (A6_2 > L14_2) then
      goto lbl_152
    end
  end
  L14_2 = L1_1
  L14_2[L10_2] = nil
  L14_2 = A1_2
  L15_2 = L20_1
  L16_2 = "generator_no_fuel"
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L15_2(L16_2)
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  do return end
  ::lbl_152::
  L14_2 = pcall
  L15_2 = TryRemoveItem
  L16_2 = L13_2
  L17_2 = A5_2
  L18_2 = A6_2
  L14_2, L15_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  if not L14_2 or not L15_2 then
    L16_2 = L1_1
    L16_2[L10_2] = nil
    L16_2 = A1_2
    L17_2 = L20_1
    L18_2 = "generator_no_fuel"
    L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2)
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
    return
  end
  L16_2 = L8_2.state
  L16_2 = L16_2.running
  if L16_2 then
    L16_2 = L8_2.state
    L16_2 = L16_2.fuelSeconds
    L16_2 = L16_2 > 0
  end
  L17_2 = L8_2.state
  L18_2 = math
  L18_2 = L18_2.min
  L19_2 = L8_1
  L19_2 = L19_2()
  L20_2 = L8_2.state
  L20_2 = L20_2.fuelSeconds
  L21_2 = L7_2 * A6_2
  L20_2 = L20_2 + L21_2
  L18_2 = L18_2(L19_2, L20_2)
  L17_2.fuelSeconds = L18_2
  L17_2 = L8_2.state
  L18_2 = os
  L18_2 = L18_2.time
  L18_2 = L18_2()
  L17_2.lastFuelAt = L18_2
  L17_2 = L15_1
  L18_2 = L8_2
  L19_2 = A0_2
  L17_2(L18_2, L19_2)
  L17_2 = L1_1
  L17_2[L10_2] = nil
  L17_2 = L8_2.state
  L17_2 = L17_2.running
  if L17_2 then
    L17_2 = L8_2.state
    L17_2 = L17_2.fuelSeconds
    L17_2 = L17_2 > 0
  end
  if L16_2 ~= L17_2 then
    L17_2 = Utilities
    L17_2 = L17_2.Sync
    L18_2 = A2_2
    L17_2(L18_2)
  end
  L17_2 = A1_2
  L18_2 = {}
  L18_2.ok = true
  L19_2 = L19_1
  L20_2 = L8_2
  L21_2 = L13_2
  L19_2 = L19_2(L20_2, L21_2)
  L18_2.data = L19_2
  L17_2(L18_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterCallback
L22_1 = "tk_housing:setGeneratorRunning"
function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = type
  L7_2 = A5_2
  L6_2 = L6_2(L7_2)
  if "boolean" ~= L6_2 then
    L6_2 = A1_2
    L7_2 = L20_1
    L8_2 = "generator_invalid"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L6_2 = L18_1
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L8_2 = A1_2
    L9_2 = L20_1
    L10_2 = L7_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L8_2 = Main
  L8_2 = L8_2.AllowChange
  L9_2 = A0_2
  L10_2 = 500
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = A1_2
    L9_2 = L20_1
    L10_2 = "generator_busy"
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L8_2 = L5_1
  L8_2 = L8_2()
  if L8_2 then
    L8_2 = Electricity
    if L8_2 then
      L8_2 = Electricity
      L8_2 = L8_2.Reconcile
      L9_2 = A2_2
      L10_2 = true
      L8_2(L9_2, L10_2)
  end
  else
    L8_2 = L16_1
    L9_2 = L6_2
    L10_2 = true
    L8_2(L9_2, L10_2)
  end
  L8_2 = L18_1
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if L8_2 ~= L6_2 then
    L8_2 = A1_2
    L9_2 = L20_1
    L10_2 = "generator_invalid"
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  if A5_2 then
    L8_2 = L6_2.state
    L8_2 = L8_2.fuelSeconds
    if L8_2 <= 0 then
      L8_2 = A1_2
      L9_2 = L20_1
      L10_2 = "generator_empty"
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      return
    end
  end
  L8_2 = L6_2.state
  L8_2 = L8_2.running
  if L8_2 then
    L8_2 = L6_2.state
    L8_2 = L8_2.fuelSeconds
    L8_2 = L8_2 > 0
  end
  L9_2 = L6_2.state
  L9_2.running = A5_2
  L9_2 = L6_2.state
  L10_2 = os
  L10_2 = L10_2.time
  L10_2 = L10_2()
  L9_2.lastFuelAt = L10_2
  L9_2 = L15_1
  L10_2 = L6_2
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
  L9_2 = Utilities
  L9_2 = L9_2.OnGeneratorStateChange
  L10_2 = A2_2
  L11_2 = L8_2
  L12_2 = L6_2.state
  L12_2 = L12_2.running
  if L12_2 then
    L12_2 = L6_2.state
    L12_2 = L12_2.fuelSeconds
    L12_2 = L12_2 > 0
  end
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Utilities
  L9_2 = L9_2.Sync
  L10_2 = A2_2
  L9_2(L10_2)
  L9_2 = A1_2
  L10_2 = {}
  L10_2.ok = true
  L11_2 = L19_1
  L12_2 = L6_2
  L13_2 = GetPlayerFromId
  L14_2 = A0_2
  L13_2, L14_2 = L13_2(L14_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.data = L11_2
  L9_2(L10_2)
end
L21_1(L22_1, L23_1)
L21_1 = CreateThread
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  while true do
    L0_2 = Wait
    L1_2 = 15000
    L0_2(L1_2)
    L0_2 = L7_1
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = pairs
      L1_2 = L0_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = pairs
        L7_2 = L5_2
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = L5_1
          L12_2 = L12_2()
          if not L12_2 then
            L12_2 = L11_2.state
            L12_2 = L12_2.fuelSeconds
            L13_2 = L16_1
            L14_2 = L11_2
            L15_2 = false
            L13_2, L14_2 = L13_2(L14_2, L15_2)
            if L14_2 then
              L15_2 = L15_1
              L16_2 = L11_2
              L15_2(L16_2)
            else
              L15_2 = L11_2.state
              L15_2 = L15_2.fuelSeconds
              if L15_2 ~= L12_2 then
                L11_2.dirty = true
              end
            end
          end
          L12_2 = L11_2.saving
          if L12_2 then
            L12_2 = GetGameTimer
            L12_2 = L12_2()
            L13_2 = L11_2.savingAt
            L12_2 = L12_2 - L13_2
            L13_2 = 30000
            if L12_2 > L13_2 then
              L11_2.saving = false
              L11_2.savingAt = nil
              L11_2.dirty = true
            end
          end
          L12_2 = math
          L12_2 = L12_2.max
          L13_2 = 1
          L14_2 = math
          L14_2 = L14_2.floor
          L15_2 = Config
          L15_2 = L15_2.Electricity
          if L15_2 then
            L15_2 = L15_2.saveInterval
          end
          if not L15_2 then
            L15_2 = 60000
          end
          L15_2 = L15_2 / 1000
          L14_2, L15_2, L16_2 = L14_2(L15_2)
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L13_2 = L11_2.dirty
          if L13_2 then
            L13_2 = L11_2.saving
            if not L13_2 then
              L13_2 = L11_2.lastPowerSave
              if L13_2 then
                L13_2 = os
                L13_2 = L13_2.time
                L13_2 = L13_2()
                L14_2 = L11_2.lastPowerSave
                L13_2 = L13_2 - L14_2
                if not (L12_2 <= L13_2) then
                  goto lbl_92
                end
              end
              L13_2 = os
              L13_2 = L13_2.time
              L13_2 = L13_2()
              L11_2.lastPowerSave = L13_2
              L13_2 = L15_1
              L14_2 = L11_2
              L13_2(L14_2)
            end
          end
          ::lbl_92::
        end
      end
    end
  end
end
L21_1(L22_1)
