local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
Cooking = L0_1
L0_1 = {}
L1_1 = 0
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.furnitureType
  L3_2 = ":"
  L4_2 = A0_2.furnitureId
  L2_2 = L2_2 .. L3_2 .. L4_2
  L4_2 = A0_2.propertyId
  L3_2 = L2_1
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    L3_2 = {}
  end
  if not A1_2 then
    L4_2 = L3_2[L2_2]
    L5_2 = A0_2.cookId
    if L4_2 ~= L5_2 then
      return
    end
  end
  L4_2 = Electricity
  if L4_2 then
    L4_2 = Electricity
    L4_2 = L4_2.Invalidate
    L5_2 = A0_2.propertyId
    L4_2(L5_2)
  end
  if A1_2 then
    L4_2 = A0_2.cookId
    if L4_2 then
      goto lbl_32
    end
  end
  L4_2 = nil
  ::lbl_32::
  L3_2[L2_2] = L4_2
  L5_2 = A0_2.propertyId
  L4_2 = L2_1
  L6_2 = next
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L6_2 = L3_2 or L6_2
  if not L6_2 or not L3_2 then
    L6_2 = nil
  end
  L4_2[L5_2] = L6_2
end
L4_1 = Cooking
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = A1_2
    L5_2 = ":"
    L6_2 = A2_2
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2 = L3_2[L4_2]
  end
  L3_2 = nil ~= L3_2
  return L3_2
end
L4_1.IsDeviceActive = L5_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.furniture
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = Main
      L9_2 = L9_2.GetFurnitureIndexById
      L10_2 = L8_2
      L11_2 = A1_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L9_2 or L10_2
      if L9_2 then
        L10_2 = L8_2[L9_2]
      end
      L11_2 = L10_2 or L11_2
      if L10_2 then
        L11_2 = Utils
        L11_2 = L11_2.GetEntryKindWithHandler
        L12_2 = L10_2
        L13_2 = "cook"
        L11_2 = L11_2(L12_2, L13_2)
      end
      if L11_2 then
        L12_2 = L11_2
        L13_2 = L7_2
        return L12_2, L13_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = AddItem
    L9_2 = A0_2
    L10_2 = L7_2.name
    L11_2 = L7_2.amount
    L8_2(L9_2, L10_2, L11_2)
  end
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Electricity
  if L3_2 then
    L3_2 = Electricity
    L3_2 = L3_2.IsDevicePowered
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
  end
  if nil ~= L3_2 then
    return L3_2
  end
  L4_2 = Utilities
  if L4_2 then
    L4_2 = L4_2.GetStatus
  end
  if L4_2 then
    L4_2 = Utilities
    L4_2 = L4_2.GetStatus
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.electricity
    return L4_2
  end
  L4_2 = true
  return L4_2
end
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_14::
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "string" ~= L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = Main
  L3_2 = L3_2.GetPropertyAccess
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= A1_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = Main
  L3_2 = L3_2.LoadPropertyData
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = L4_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = A1_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
L8_1 = RegisterCallback
L9_1 = "tk_housing:getCookingContext"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L5_2 = Config
  L5_2 = L5_2.Cooking
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = L7_1
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L8_2 = A1_2
    L9_2 = {}
    L8_2(L9_2)
    return
  end
  L8_2 = GetPlayerFromId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = A1_2
    L10_2 = {}
    L9_2(L10_2)
    return
  end
  L9_2 = {}
  L10_2 = ipairs
  L11_2 = Config
  L11_2 = L11_2.Cooking
  L11_2 = L11_2.recipes
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.type
    if L16_2 == L6_2 then
      L16_2 = {}
      L17_2 = true
      L18_2 = ipairs
      L19_2 = L15_2.ingredients
      L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
      for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
        L24_2 = GetItemAmount
        L25_2 = L8_2
        L26_2 = L23_2.name
        L24_2 = L24_2(L25_2, L26_2)
        L25_2 = L23_2.amount
        if L24_2 < L25_2 then
          L17_2 = false
        end
        L25_2 = #L16_2
        L25_2 = L25_2 + 1
        L26_2 = {}
        L27_2 = L23_2.name
        L26_2.name = L27_2
        L27_2 = L23_2.label
        if not L27_2 then
          L27_2 = GetItemLabel
          L28_2 = L23_2.name
          L27_2 = L27_2(L28_2)
        end
        L26_2.label = L27_2
        L27_2 = L23_2.amount
        L26_2.need = L27_2
        L26_2.have = L24_2
        L16_2[L25_2] = L26_2
      end
      L18_2 = {}
      L19_2 = ipairs
      L20_2 = L15_2.results
      L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
      for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
        L25_2 = #L18_2
        L25_2 = L25_2 + 1
        L26_2 = {}
        L27_2 = L24_2.name
        L26_2.name = L27_2
        L27_2 = L24_2.label
        if not L27_2 then
          L27_2 = GetItemLabel
          L28_2 = L24_2.name
          L27_2 = L27_2(L28_2)
        end
        L26_2.label = L27_2
        L27_2 = L24_2.amount
        L26_2.amount = L27_2
        L18_2[L25_2] = L26_2
      end
      L19_2 = #L9_2
      L19_2 = L19_2 + 1
      L20_2 = {}
      L20_2.index = L14_2
      L21_2 = L15_2.label
      L20_2.label = L21_2
      L21_2 = L15_2.duration
      L20_2.duration = L21_2
      L20_2.ingredients = L16_2
      L20_2.results = L18_2
      L20_2.affordable = L17_2
      L9_2[L19_2] = L20_2
    end
  end
  L10_2 = A1_2
  L11_2 = {}
  L11_2.cookType = L6_2
  L11_2.recipes = L9_2
  L12_2 = L6_1
  L13_2 = L5_2
  L14_2 = L7_2
  L15_2 = A4_2
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L12_2 = false ~= L12_2
  L11_2.powered = L12_2
  L10_2(L11_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:startCooking"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Cooking
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    return
  end
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if "number" ~= L5_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  if L5_2 then
    return
  end
  L5_2 = L7_1
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    return
  end
  L8_2 = L6_1
  L9_2 = L5_2
  L10_2 = L7_2
  L11_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if not L8_2 then
    L8_2 = Notify
    L9_2 = L4_2
    L10_2 = _U
    L11_2 = "device_no_power"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L8_2 = Config
  L8_2 = L8_2.Cooking
  L8_2 = L8_2.recipes
  L8_2 = L8_2[A3_2]
  if L8_2 then
    L9_2 = L8_2.type
    if L9_2 == L6_2 then
      goto lbl_54
    end
  end
  do return end
  ::lbl_54::
  L9_2 = GetPlayerFromId
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    return
  end
  L10_2 = ipairs
  L11_2 = L8_2.ingredients
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = GetItemAmount
    L17_2 = L9_2
    L18_2 = L15_2.name
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = L15_2.amount
    if L16_2 < L17_2 then
      L16_2 = Notify
      L17_2 = L4_2
      L18_2 = _U
      L19_2 = "cooking_missing_ingredients"
      L18_2 = L18_2(L19_2)
      L19_2 = "error"
      L16_2(L17_2, L18_2, L19_2)
      return
    end
  end
  L10_2 = {}
  L11_2 = ipairs
  L12_2 = L8_2.ingredients
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = RemoveItem
    L18_2 = L9_2
    L19_2 = L16_2.name
    L20_2 = L16_2.amount
    L17_2(L18_2, L19_2, L20_2)
    L17_2 = #L10_2
    L17_2 = L17_2 + 1
    L18_2 = {}
    L19_2 = L16_2.name
    L18_2.name = L19_2
    L19_2 = L16_2.amount
    L18_2.amount = L19_2
    L10_2[L17_2] = L18_2
  end
  L11_2 = L1_1
  L11_2 = L11_2 + 1
  L1_1 = L11_2
  L11_2 = L1_1
  L12_2 = L0_1
  L13_2 = {}
  L13_2.cookId = L11_2
  L13_2.index = A3_2
  L13_2.propertyId = L5_2
  L13_2.furnitureType = L7_2
  L13_2.furnitureId = A2_2
  L14_2 = GetIdentifier
  L15_2 = L9_2
  L14_2 = L14_2(L15_2)
  L13_2.identifier = L14_2
  L13_2.ingredients = L10_2
  L14_2 = L8_2.results
  L13_2.results = L14_2
  L13_2.cancelled = false
  L12_2[L4_2] = L13_2
  L12_2 = L3_1
  L13_2 = L0_1
  L13_2 = L13_2[L4_2]
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = Notify
  L13_2 = L4_2
  L14_2 = _U
  L15_2 = "cooking_started"
  L16_2 = L8_2.label
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = "inform"
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = TriggerClientEvent
  L13_2 = "tk_housing:cookingStarted"
  L14_2 = L4_2
  L15_2 = {}
  L16_2 = L8_2.duration
  L15_2.duration = L16_2
  L16_2 = L8_2.anim
  L15_2.anim = L16_2
  L16_2 = L8_2.prop
  L15_2.prop = L16_2
  L16_2 = L8_2.label
  L15_2.label = L16_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = SetTimeout
  L13_2 = L8_2.duration
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = L4_2
    L0_3 = L0_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = L0_3.cookId
      L2_3 = L11_2
      if L1_3 == L2_3 then
        L1_3 = L0_3.cancelled
        if not L1_3 then
          goto lbl_14
        end
      end
    end
    do return end
    ::lbl_14::
    L1_3 = L3_1
    L2_3 = L0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = GetPlayerFromId
    L2_3 = L4_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L3_3 = L4_2
      L2_3 = L0_1
      L2_3[L3_3] = nil
      return
    end
    L2_3 = true
    L3_3 = ipairs
    L4_3 = L0_3.results
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = CanCarryItem
      L10_3 = L1_3
      L11_3 = L8_3.name
      L12_3 = L8_3.amount
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      if not L9_3 then
        L2_3 = false
        break
      end
    end
    if L2_3 then
      L3_3 = ipairs
      L4_3 = L0_3.results
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = AddItem
        L10_3 = L1_3
        L11_3 = L8_3.name
        L12_3 = L8_3.amount
        L9_3(L10_3, L11_3, L12_3)
      end
      L3_3 = Notify
      L4_3 = L4_2
      L5_3 = _U
      L6_3 = "cooking_complete"
      L5_3 = L5_3(L6_3)
      L6_3 = "success"
      L3_3(L4_3, L5_3, L6_3)
    else
      L3_3 = L5_1
      L4_3 = L1_3
      L5_3 = L0_3.ingredients
      L3_3(L4_3, L5_3)
      L3_3 = Notify
      L4_3 = L4_2
      L5_3 = _U
      L6_3 = "cooking_inventory_full"
      L5_3 = L5_3(L6_3)
      L6_3 = "error"
      L3_3(L4_3, L5_3, L6_3)
    end
    L4_3 = L4_2
    L3_3 = L0_1
    L3_3[L4_3] = nil
  end
  L12_2(L13_2, L14_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "tk_housing:cancelCooking"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = Config
  L1_2 = L1_2.Cooking
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L2_2 = L1_2.cancelled
    if not L2_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L1_2.cancelled = true
  L2_2 = L3_1
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = GetPlayerFromId
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L5_1
    L4_2 = L2_2
    L5_2 = L1_2.ingredients
    L3_2(L4_2, L5_2)
    L3_2 = Notify
    L4_2 = L0_2
    L5_2 = _U
    L6_2 = "cooking_cancelled"
    L5_2 = L5_2(L6_2)
    L6_2 = "inform"
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L0_1
  L3_2[L0_2] = nil
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = "tk_housing-lostIngredients-"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = pcall
  L4_2 = json
  L4_2 = L4_2.decode
  L5_2 = GetResourceKvpString
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = "[]"
  end
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if "table" == L5_2 then
      goto lbl_24
    end
  end
  L5_2 = {}
  L4_2 = L5_2
  ::lbl_24::
  L5_2 = #L4_2
  L5_2 = L5_2 + 1
  L4_2[L5_2] = A1_2
  while true do
    L5_2 = #L4_2
    if not (L5_2 > 10) then
      break
    end
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = L4_2
    L7_2 = 1
    L5_2(L6_2, L7_2)
  end
  L5_2 = SetResourceKvp
  L6_2 = L2_2
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = L4_2
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
end
L9_1 = Cooking
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = "tk_housing-lostIngredients-"
  L3_2 = A1_2
  L2_2 = L2_2 .. L3_2
  L3_2 = GetResourceKvpString
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = DeleteResourceKvp
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = pcall
  L5_2 = json
  L5_2 = L5_2.decode
  L6_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      goto lbl_26
    end
  end
  do return end
  ::lbl_26::
  L6_2 = GetPlayerFromId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L7_2 = false
  L8_2 = ipairs
  L9_2 = L5_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = ipairs
    L15_2 = type
    L16_2 = L13_2
    L15_2 = L15_2(L16_2)
    L15_2 = L13_2 or L15_2
    if "table" ~= L15_2 or not L13_2 then
      L15_2 = {}
    end
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
    for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
      L20_2 = type
      L21_2 = L19_2 or L21_2
      if L19_2 then
        L21_2 = L19_2.name
      end
      L20_2 = L20_2(L21_2)
      if "string" == L20_2 then
        L20_2 = type
        L21_2 = L19_2 or L21_2
        if L19_2 then
          L21_2 = L19_2.amount
        end
        L20_2 = L20_2(L21_2)
        if "number" == L20_2 then
          L20_2 = AddItem
          L21_2 = L6_2
          L22_2 = L19_2.name
          L23_2 = L19_2.amount
          L20_2(L21_2, L22_2, L23_2)
          L7_2 = true
        end
      end
    end
  end
  if L7_2 then
    L8_2 = Notify
    L9_2 = A0_2
    L10_2 = _U
    L11_2 = "cooking_ingredients_returned"
    L10_2 = L10_2(L11_2)
    L11_2 = "inform"
    L8_2(L9_2, L10_2, L11_2)
  end
end
L9_1.SendLostIngredients = L10_1
L9_1 = AddEventHandler
L10_1 = "playerDropped"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L2_2 = L1_2.cancelled
    if not L2_2 then
      L2_2 = L3_1
      L3_2 = L1_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = L8_1
      L3_2 = L1_2.identifier
      L4_2 = L1_2.ingredients
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = L0_1
  L2_2[L0_2] = nil
end
L9_1(L10_1, L11_1)
