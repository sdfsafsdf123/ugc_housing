local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
InteriorStyle = L0_1
L0_1 = InteriorStyle
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = type
  L3_2 = L1_2.interiorStyle
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    L1_2.interiorStyle = L2_2
  end
  L2_2 = L1_2.interiorStyle
  return L2_2
end
L0_1.Get = L1_1
L0_1 = InteriorStyle
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = type
    L3_2 = L1_2.interiorStyle
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = PropertyDb
  L2_2 = L2_2.UpdateInteriorStyle
  L3_2 = A0_2
  L4_2 = L1_2.interiorStyle
  L2_2(L3_2, L4_2)
end
L0_1.Save = L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  if "garage" == A1_2 then
    L2_2 = Config
    L2_2 = L2_2.GarageInteriors
    L3_2 = A0_2.garageInterior
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = L2_2.customization
    end
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.HouseInteriors
  L3_2 = A0_2.houseInterior
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = L2_2.customization
  end
  return L2_2
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L6_2 = L6_2.id
    if L6_2 == A1_2 then
      L6_2 = A0_2[L5_2]
      return L6_2
    end
  end
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2.options
  if not L3_2 then
    L3_2 = {}
  end
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.options
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.id
    if L6_2 == A1_2 then
      L6_2 = A0_2.options
      L6_2 = L6_2[L5_2]
      return L6_2
    end
  end
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.type
  if "toggle" == L2_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L2_2 = "boolean" == L2_2
    return L2_2
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = "string" == L2_2
  return L2_2
end
L4_1 = RegisterCallback
L5_1 = "tk_housing:getInteriorStyle"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = A1_2
  L5_2 = nil
  L4_2(L5_2)
  do return end
  ::lbl_16::
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A1_2
    L6_2 = nil
    L5_2(L6_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L4_2
  L8_2 = A2_2
  L9_2 = "furnish"
  L10_2 = L5_2.permissions
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    return
  end
  L6_2 = L0_1
  L7_2 = L5_2
  L8_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L8_2 = Utils
  L8_2 = L8_2.GetInteriorStyleSelections
  L9_2 = L6_2
  L10_2 = InteriorStyle
  L10_2 = L10_2.Get
  L11_2 = A2_2
  L10_2, L11_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCallback
L5_1 = "tk_housing:applyInteriorStyle"
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_19
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = false
  L6_2.error = "invalid"
  L5_2(L6_2)
  do return end
  ::lbl_19::
  L5_2 = Config
  L5_2 = L5_2.IPLCustomization
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "invalid"
    L5_2(L6_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L0_1
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = type
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if "table" ~= L7_2 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L8_2.error = "invalid"
    L7_2(L8_2)
    return
  end
  L7_2 = GetPlayerFromId
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L8_2 = Permissions
    L8_2 = L8_2.HasPermission
    L9_2 = L7_2
    L10_2 = A2_2
    L11_2 = "furnish"
    L12_2 = L5_2.permissions
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    if L8_2 then
      goto lbl_74
    end
  end
  L8_2 = A1_2
  L9_2 = {}
  L9_2.ok = false
  L9_2.error = "invalid"
  L8_2(L9_2)
  do return end
  ::lbl_74::
  L8_2 = type
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  if "table" ~= L8_2 then
    L8_2 = A1_2
    L9_2 = {}
    L9_2.ok = false
    L9_2.error = "invalid"
    L8_2(L9_2)
    return
  end
  L8_2 = pairs
  L9_2 = A3_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = type
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if "string" == L14_2 then
      L14_2 = L1_1
      L15_2 = L6_2
      L16_2 = L12_2
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        L15_2 = L3_1
        L16_2 = L14_2
        L17_2 = L13_2
        L15_2 = L15_2(L16_2, L17_2)
        if not L15_2 then
          L15_2 = A1_2
          L16_2 = {}
          L16_2.ok = false
          L16_2.error = "invalid"
          L15_2(L16_2)
          return
        end
      end
    end
  end
  L8_2 = InteriorStyle
  L8_2 = L8_2.Get
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L9_2 = 0
  L10_2 = Config
  L10_2 = L10_2.IPLCustomization
  L10_2 = L10_2.charge
  L10_2 = Config
  L10_2 = L10_2.IPLCustomization
  L10_2 = L10_2.freeForOwner
  if L10_2 then
    L10_2 = Permissions
    L10_2 = L10_2.DoesPlayerOwnHouse
    L11_2 = L7_2
    L12_2 = A2_2
    L10_2 = false == L10_2 or L10_2
  end
  if not L10_2 then
    L11_2 = Utils
    L11_2 = L11_2.GetInteriorStyleSelections
    L12_2 = L6_2
    L13_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = pairs
    L13_2 = A3_2
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
    for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
      L18_2 = L1_1
      L19_2 = L6_2
      L20_2 = L16_2
      L18_2 = L18_2(L19_2, L20_2)
      if L18_2 then
        L19_2 = L11_2[L16_2]
        if L19_2 ~= L17_2 then
          L19_2 = L18_2.price
          if not L19_2 then
            L19_2 = Config
            L19_2 = L19_2.IPLCustomization
            L19_2 = L19_2.defaultPrice
            if not L19_2 then
              L19_2 = 0
            end
          end
          L9_2 = L9_2 + L19_2
        end
      end
    end
  end
  if L9_2 > 0 then
    L11_2 = Config
    L11_2 = L11_2.IPLCustomization
    L11_2 = L11_2.account
    if not L11_2 then
      L11_2 = "bank"
    end
    L12_2 = GetAccountMoney
    L13_2 = L7_2
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    if L9_2 > L12_2 then
      L12_2 = Notify
      L13_2 = A0_2
      L14_2 = _U
      L15_2 = "interior_style_cannot_afford"
      L14_2 = L14_2(L15_2)
      L15_2 = "error"
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = A1_2
      L13_2 = {}
      L13_2.ok = false
      L13_2.error = "notEnoughMoney"
      L12_2(L13_2)
      return
    end
    L12_2 = RemoveAccountMoney
    L13_2 = L7_2
    L14_2 = L11_2
    L15_2 = L9_2
    L12_2(L13_2, L14_2, L15_2)
  end
  L11_2 = pairs
  L12_2 = A3_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L1_1
    L18_2 = L6_2
    L19_2 = L15_2
    L17_2 = L17_2(L18_2, L19_2)
    if L17_2 then
      L8_2[L15_2] = L16_2
    end
  end
  L11_2 = InteriorStyle
  L11_2 = L11_2.Save
  L12_2 = A2_2
  L11_2(L12_2)
  L11_2 = Main
  L11_2 = L11_2.ClearExportCache
  L12_2 = A2_2
  L11_2(L12_2)
  L11_2 = TriggerClientEvent
  L12_2 = "tk_housing:updateInteriorStyle"
  L13_2 = -1
  L14_2 = {}
  L14_2.propertyId = A2_2
  L14_2.style = L8_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = Notify
  L12_2 = A0_2
  L13_2 = _U
  L14_2 = "interior_style_applied"
  L13_2 = L13_2(L14_2)
  L14_2 = "success"
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = A1_2
  L12_2 = {}
  L12_2.ok = true
  L12_2.charged = L9_2
  L11_2(L12_2)
end
L4_1(L5_1, L6_1)
