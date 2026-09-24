local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
Contracts = L0_1
L0_1 = Contracts
L1_1 = {}
L0_1.sessions = L1_1
L0_1 = 0
L1_1 = math
L1_1 = L1_1.min
L2_1 = math
L2_1 = L2_1.max
L3_1 = Config
L3_1 = L3_1.Contracts
if L3_1 then
  L3_1 = L3_1.timeout
end
if not L3_1 then
  L3_1 = 120
end
L4_1 = 30
L2_1 = L2_1(L3_1, L4_1)
L3_1 = 600
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "data:image/png;base64,"
L3_1 = 150000
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.owner
  L1_2 = nil ~= L1_2
  return L1_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Utils
  L2_2 = L2_2.ParseOwner
  L3_2 = A0_2.owner
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.type
  end
  if "business" == L3_2 then
    L3_2 = L2_2.id
    if L3_2 == A1_2 then
      L3_2 = "owned"
      return L3_2
    end
  end
  L3_2 = L4_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2.businessId
    if L3_2 == A1_2 then
      L3_2 = "initial"
      return L3_2
    end
  end
  L3_2 = nil
  return L3_2
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.sellerSrc
  if L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = A1_2
    L5_2 = A0_2.sellerSrc
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.buyerSrc
  if L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = A1_2
    L5_2 = A0_2.buyerSrc
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Contracts
  L2_2 = L2_2.sessions
  L3_2 = A0_2.id
  L2_2[L3_2] = nil
  L2_2 = L6_1
  L3_2 = A0_2
  L4_2 = "tk_housing:contractClose"
  L5_2 = {}
  L6_2 = A0_2.id
  L5_2.sessionId = L6_2
  L5_2.reason = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Contracts
  L1_2 = L1_2.sessions
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L1_2.expiresAt
  if L2_2 >= L3_2 then
    L2_2 = L7_1
    L3_2 = L1_2
    L4_2 = "expired"
    L2_2(L3_2, L4_2)
    L2_2 = nil
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = L1_2.propertyId
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  if not L2_2 then
    L3_2 = true
  else
    L4_2 = L1_2.kind
    if "realtor" == L4_2 then
      L4_2 = L5_1
      L5_2 = L2_2
      L6_2 = L1_2.businessId
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L1_2.saleCase
      L3_2 = L4_2 ~= L5_2
    else
      L4_2 = L2_2.owner
      if not L4_2 then
        L4_2 = ""
      end
      L5_2 = L1_2.ownerAtStart
      if not L5_2 then
        L5_2 = ""
      end
      L3_2 = L4_2 ~= L5_2
    end
  end
  if L3_2 then
    L4_2 = L7_1
    L5_2 = L1_2
    L6_2 = "cancelled"
    L4_2(L5_2, L6_2)
    L4_2 = nil
    return L4_2
  end
  return L1_2
end
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = pairs
  L5_2 = Contracts
  L5_2 = L5_2.sessions
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.expiresAt
    if L3_2 >= L10_2 then
      L10_2 = L7_1
      L11_2 = L9_2
      L12_2 = "expired"
      L10_2(L11_2, L12_2)
    else
      L10_2 = L9_2.propertyId
      if L10_2 == A0_2 then
        L10_2 = true
        return L10_2
      else
        if A1_2 then
          L10_2 = L9_2.sellerSrc
          if L10_2 ~= A1_2 then
            L10_2 = L9_2.buyerSrc
            if L10_2 ~= A1_2 then
              goto lbl_34
            end
          end
          L10_2 = true
          return L10_2
        ::lbl_34::
        elseif A2_2 then
          L10_2 = L9_2.sellerSrc
          if L10_2 ~= A2_2 then
            L10_2 = L9_2.buyerSrc
            if L10_2 ~= A2_2 then
              goto lbl_44
            end
          end
          L10_2 = true
          return L10_2
        end
      end
    end
    ::lbl_44::
  end
  L4_2 = false
  return L4_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.MaxProperties
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetProperties
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.owner
    if L8_2 == A0_2 then
      L8_2 = Utils
      L8_2 = L8_2.IsMotelType
      L9_2 = L7_2.propertyType
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  L2_2 = Config
  L2_2 = L2_2.MaxProperties
  L2_2 = L1_2 >= L2_2
  return L2_2
end
function L11_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = Config
    L1_2 = L1_2.RealEstateBusiness
    if L1_2 then
      L1_2 = L1_2.enabled
    end
    if L1_2 then
      L1_2 = Business
      if L1_2 then
        goto lbl_15
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_15::
  L1_2 = Business
  L1_2 = L1_2.GetBusiness
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_2.label
  end
  return L1_2
end
L12_1 = nil
L13_1 = Config
L13_1 = L13_1.RealEstateBusiness
if L13_1 then
  L13_1 = L13_1.enabled
end
if L13_1 then
  function L13_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
    L1_2 = Main
    L1_2 = L1_2.GetProperty
    L2_2 = A0_2.propertyId
    L1_2 = L1_2(L2_2)
    L2_2 = Business
    L2_2 = L2_2.GetBusiness
    L3_2 = A0_2.businessId
    L2_2 = L2_2(L3_2)
    L3_2 = GetPlayerFromId
    L4_2 = A0_2.buyerSrc
    L3_2 = L3_2(L4_2)
    L4_2 = GetPlayerFromId
    L5_2 = A0_2.sellerSrc
    L4_2 = L4_2(L5_2)
    L5_2 = L1_2 or L5_2
    if L1_2 then
      L5_2 = L5_1
      L6_2 = L1_2
      L7_2 = A0_2.businessId
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = A0_2.saleCase
      L5_2 = L5_2 == L6_2
    end
    L6_2 = A0_2.saleCase
    if "owned" == L6_2 then
      L6_2 = {}
      L6_2.owner = nil
      if L6_2 then
        goto lbl_60
      end
    end
    L6_2 = L1_2
    ::lbl_60::
    if L5_2 then
      L7_2 = PurchaseProperty
      L8_2 = A0_2.buyerSrc
      L9_2 = A0_2.price
      L10_2 = A0_2.propertyId
      L11_2 = L6_2
      L12_2 = "bank"
      L13_2 = "price"
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      if L7_2 then
        goto lbl_82
      end
    end
    L7_2 = L6_1
    L8_2 = A0_2
    L9_2 = "tk_housing:contractClose"
    L10_2 = {}
    L11_2 = A0_2.id
    L10_2.sessionId = L11_2
    L10_2.reason = "failed"
    L7_2(L8_2, L9_2, L10_2)
    do return end
    ::lbl_82::
    L7_2 = nil
    L8_2 = A0_2.saleCase
    if "owned" == L8_2 then
      L8_2 = Business
      L8_2 = L8_2.ResolveRevenue
      L9_2 = L2_2
      L8_2 = L8_2(L9_2)
      L9_2 = math
      L9_2 = L9_2.floor
      L10_2 = A0_2.price
      L11_2 = L8_2.initialSale
      L11_2 = L11_2.realtorPercent
      L10_2 = L10_2 * L11_2
      L10_2 = L10_2 / 100
      L9_2 = L9_2(L10_2)
      if L9_2 > 0 then
        L10_2 = AddAccountMoney
        L11_2 = L4_2
        L12_2 = "bank"
        L13_2 = L9_2
        L10_2(L11_2, L12_2, L13_2)
      end
      L10_2 = A0_2.price
      L10_2 = L10_2 - L9_2
      L11_2 = L1_2.name
      if not L11_2 then
        L11_2 = L1_2.address
      end
      L12_2 = Business
      L12_2 = L12_2.SaleBreakdown
      L13_2 = A0_2.price
      L14_2 = {}
      L15_2 = {}
      L15_2.role = "business"
      L15_2.amount = L10_2
      L16_2 = {}
      L16_2.role = "realtor"
      L16_2.amount = L9_2
      L14_2[1] = L15_2
      L14_2[2] = L16_2
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = Business
      L13_2 = L13_2.AddMoney
      L14_2 = L2_2
      L15_2 = L10_2
      L16_2 = "sale"
      L17_2 = A0_2.sellerIdentifier
      L18_2 = L11_2
      L19_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      if L10_2 > 0 then
        L13_2 = Business
        L13_2 = L13_2.NotifySale
        L14_2 = L2_2
        L15_2 = L11_2
        L16_2 = L10_2
        L13_2(L14_2, L15_2, L16_2)
      end
      L13_2 = {}
      L13_2.realtor = L9_2
      L7_2 = L13_2
    else
      L8_2 = Business
      L8_2 = L8_2.RouteInitialSale
      L9_2 = L2_2
      L10_2 = A0_2.price
      L11_2 = A0_2.sellerIdentifier
      L12_2 = L1_2.name
      if not L12_2 then
        L12_2 = L1_2.address
      end
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2 = L8_2
    end
    L8_2 = Properties
    L8_2 = L8_2.SetHouseOwned
    L9_2 = A0_2.buyerSrc
    L10_2 = A0_2.propertyId
    L11_2 = false
    L12_2 = A0_2.price
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = L6_1
    L9_2 = A0_2
    L10_2 = "tk_housing:contractClose"
    L11_2 = {}
    L12_2 = A0_2.id
    L11_2.sessionId = L12_2
    L11_2.reason = "completed"
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Webhook
    L9_2 = _U
    L10_2 = "webhook_action"
    L11_2 = "Server"
    L12_2 = "Realtor Sale Complete"
    L13_2 = json
    L13_2 = L13_2.encode
    L14_2 = {}
    L15_2 = A0_2.propertyId
    L14_2.propertyId = L15_2
    L15_2 = A0_2.businessId
    L14_2.businessId = L15_2
    L15_2 = A0_2.price
    L14_2.price = L15_2
    L15_2 = A0_2.buyerIdentifier
    L14_2.buyer = L15_2
    L15_2 = A0_2.sellerIdentifier
    L14_2.seller = L15_2
    L15_2 = {}
    L15_2.indent = true
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2, L15_2)
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L8_2 = Notify
    L9_2 = A0_2.sellerSrc
    L10_2 = _U
    L11_2 = "business_contract_sold"
    L12_2 = Utils
    L12_2 = L12_2.GroupDigits
    L13_2 = L7_2.realtor
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L11_2 = "success"
    L8_2(L9_2, L10_2, L11_2)
  end
  L12_1 = L13_1
  L13_1 = RegisterCallback
  L14_1 = "tk_housing:contractStart"
  function L15_1(A0_2, A1_2, A2_2, A3_2)
    local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
    L4_2 = Config
    L4_2 = L4_2.RealEstateBusiness
    L4_2 = L4_2.saleChannels
    if "instant" == L4_2 then
      L4_2 = A1_2
      L5_2 = {}
      L5_2.ok = false
      L4_2(L5_2)
      return
    end
    L4_2 = Utils
    L4_2 = L4_2.IsFiniteNumber
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.IsFiniteNumber
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_30
      end
    end
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L4_2(L5_2)
    do return end
    ::lbl_30::
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    A2_2 = L4_2
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = A3_2
    L4_2 = L4_2(L5_2)
    A3_2 = L4_2
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = Utils
      L5_2 = L5_2.IsMotelType
      L6_2 = L4_2.propertyType
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        goto lbl_58
      end
    end
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L5_2(L6_2)
    do return end
    ::lbl_58::
    L5_2 = Business
    L5_2 = L5_2.CanSellProperty
    L6_2 = GetPlayerFromId
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if not L5_2 then
      L6_2 = Webhook
      L7_2 = _U
      L8_2 = "webhook_cheater"
      L9_2 = Utils
      L9_2 = L9_2.GetIdentifiers
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L10_2 = "Contract started without realtor permission"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L6_2 = A1_2
      L7_2 = {}
      L7_2.ok = false
      L8_2 = _U
      L9_2 = "business_no_permission"
      L8_2 = L8_2(L9_2)
      L7_2.message = L8_2
      L6_2(L7_2)
      return
    end
    L6_2 = L5_1
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L7_2 = A1_2
      L8_2 = {}
      L8_2.ok = false
      L9_2 = _U
      L10_2 = "business_contract_not_for_sale"
      L9_2 = L9_2(L10_2)
      L8_2.message = L9_2
      L7_2(L8_2)
      return
    end
    if A3_2 ~= A0_2 then
      L7_2 = GetPlayerFromId
      L8_2 = A3_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_110
      end
    end
    L7_2 = nil
    ::lbl_110::
    if not L7_2 then
      L8_2 = A1_2
      L9_2 = {}
      L9_2.ok = false
      L10_2 = _U
      L11_2 = "business_target_offline"
      L10_2 = L10_2(L11_2)
      L9_2.message = L10_2
      L8_2(L9_2)
      return
    end
    L8_2 = GetEntityCoords
    L9_2 = GetPlayerPed
    L10_2 = A0_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2 = GetEntityCoords
    L10_2 = GetPlayerPed
    L11_2 = A3_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = L8_2 - L9_2
    L8_2 = #L8_2
    if L8_2 > 5.0 then
      L8_2 = Webhook
      L9_2 = _U
      L10_2 = "webhook_cheater"
      L11_2 = Utils
      L11_2 = L11_2.GetIdentifiers
      L12_2 = A0_2
      L11_2 = L11_2(L12_2)
      L12_2 = "Contract started from too far"
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L8_2 = A1_2
      L9_2 = {}
      L9_2.ok = false
      L10_2 = _U
      L11_2 = "business_contract_too_far"
      L10_2 = L10_2(L11_2)
      L9_2.message = L10_2
      L8_2(L9_2)
      return
    end
    L8_2 = GetIdentifier
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L10_1
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = A1_2
      L10_2 = {}
      L10_2.ok = false
      L11_2 = _U
      L12_2 = "business_contract_buyer_max"
      L11_2 = L11_2(L12_2)
      L10_2.message = L11_2
      L9_2(L10_2)
      return
    end
    L9_2 = L4_2.listingPrice
    if not L9_2 then
      L9_2 = L4_2.price
    end
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "number" ~= L10_2 or L9_2 <= 0 then
      L10_2 = A1_2
      L11_2 = {}
      L11_2.ok = false
      L10_2(L11_2)
      return
    end
    L10_2 = GetAccountMoney
    L11_2 = L7_2
    L12_2 = "bank"
    L10_2 = L10_2(L11_2, L12_2)
    if L9_2 > L10_2 then
      L10_2 = A1_2
      L11_2 = {}
      L11_2.ok = false
      L12_2 = _U
      L13_2 = "business_contract_buyer_cannot_afford"
      L12_2 = L12_2(L13_2)
      L11_2.message = L12_2
      L10_2(L11_2)
      return
    end
    L10_2 = L9_1
    L11_2 = A2_2
    L12_2 = A0_2
    L13_2 = A3_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if L10_2 then
      L10_2 = A1_2
      L11_2 = {}
      L11_2.ok = false
      L12_2 = _U
      L13_2 = "business_contract_in_progress"
      L12_2 = L12_2(L13_2)
      L11_2.message = L12_2
      L10_2(L11_2)
      return
    end
    L10_2 = Business
    L10_2 = L10_2.GetBusiness
    L11_2 = L5_2
    L10_2 = L10_2(L11_2)
    L11_2 = L0_1
    L11_2 = L11_2 + 1
    L0_1 = L11_2
    L11_2 = {}
    L12_2 = L0_1
    L11_2.id = L12_2
    L11_2.kind = "realtor"
    L11_2.propertyId = A2_2
    L11_2.businessId = L5_2
    L11_2.saleCase = L6_2
    L11_2.sellerSrc = A0_2
    L12_2 = GetIdentifier
    L13_2 = GetPlayerFromId
    L14_2 = A0_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2.sellerIdentifier = L12_2
    L11_2.buyerSrc = A3_2
    L11_2.buyerIdentifier = L8_2
    L11_2.price = L9_2
    L11_2.sellerSigned = false
    L11_2.buyerSigned = false
    L12_2 = os
    L12_2 = L12_2.time
    L12_2 = L12_2()
    L13_2 = L1_1
    L12_2 = L12_2 + L13_2
    L11_2.expiresAt = L12_2
    L12_2 = Contracts
    L12_2 = L12_2.sessions
    L13_2 = L11_2.id
    L12_2[L13_2] = L11_2
    L12_2 = Business
    L12_2 = L12_2.ResolveRevenue
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    L13_2 = {}
    L14_2 = L12_2.initialSale
    L14_2 = L14_2.realtorPercent
    L13_2.realtorPercent = L14_2
    L14_2 = L12_2.initialSale
    L14_2 = L14_2.businessPercent
    L13_2.businessPercent = L14_2
    if "owned" == L6_2 then
      L14_2 = L13_2.realtorPercent
      L15_2 = 100
      L14_2 = L15_2 - L14_2
      L13_2.businessPercent = L14_2
    end
    L14_2 = {}
    L15_2 = L11_2.id
    L14_2.sessionId = L15_2
    L14_2.kind = "realtor"
    L15_2 = L10_2.label
    L14_2.letterhead = L15_2
    L15_2 = {}
    L15_2.id = A2_2
    L16_2 = L4_2.name
    L15_2.name = L16_2
    L16_2 = L4_2.address
    L15_2.address = L16_2
    L16_2 = L4_2.propertyType
    L15_2.propertyType = L16_2
    L14_2.property = L15_2
    L14_2.price = L9_2
    L14_2.commission = L13_2
    L15_2 = {}
    L16_2 = L10_2.label
    L15_2.name = L16_2
    L16_2 = GetCharName
    L17_2 = L11_2.sellerIdentifier
    L16_2 = L16_2(L17_2)
    L15_2.agent = L16_2
    L15_2.signs = true
    L14_2.seller = L15_2
    L15_2 = {}
    L16_2 = GetCharName
    L17_2 = L8_2
    L16_2 = L16_2(L17_2)
    L15_2.name = L16_2
    L15_2.signs = true
    L14_2.buyer = L15_2
    L15_2 = os
    L15_2 = L15_2.date
    L16_2 = "%d.%m.%Y"
    L15_2 = L15_2(L16_2)
    L14_2.date = L15_2
    L15_2 = L11_2.expiresAt
    L14_2.expiresAt = L15_2
    L14_2.seat = "seller"
    L15_2 = TriggerClientEvent
    L16_2 = "tk_housing:contractOpen"
    L17_2 = A0_2
    L18_2 = L14_2
    L15_2(L16_2, L17_2, L18_2)
    L14_2.seat = "buyer"
    L15_2 = TriggerClientEvent
    L16_2 = "tk_housing:contractOpen"
    L17_2 = A3_2
    L18_2 = L14_2
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = A1_2
    L16_2 = {}
    L16_2.ok = true
    L15_2(L16_2)
  end
  L13_1(L14_1, L15_1)
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.kind
  if "sellBack" == L1_2 then
    L1_2 = Properties
    L1_2 = L1_2.SellHouse
    L2_2 = A0_2.sellerSrc
    L3_2 = A0_2.propertyId
    L4_2 = true
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2.kind
  if "transfer" == L1_2 then
    L1_2 = Properties
    L1_2 = L1_2.TransferOwnership
    L2_2 = A0_2.sellerSrc
    L3_2 = A0_2.propertyId
    L4_2 = A0_2.targetId
    L5_2 = true
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = Properties
  L1_2 = L1_2.PurchaseHouse
  L2_2 = A0_2.buyerSrc
  L3_2 = A0_2.propertyId
  L4_2 = A0_2.purchaseType
  L5_2 = A0_2.isFromPropertyList
  L6_2 = true
  return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Contracts
  L1_2 = L1_2.sessions
  L2_2 = A0_2.id
  L1_2[L2_2] = nil
  L1_2 = A0_2.kind
  if "realtor" == L1_2 then
    L1_2 = L12_1
    L2_2 = A0_2
    L1_2(L2_2)
    return
  end
  L1_2 = nil
  L2_2 = A0_2.kind
  if "business" == L2_2 then
    L2_2 = pcall
    L3_2 = Business
    L3_2 = L3_2.BuyProperty
    L4_2 = A0_2.buyerSrc
    L5_2 = A0_2.propertyId
    L6_2 = true
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L4_2 = Utils
      L4_2 = L4_2.Warn
      L5_2 = "Completing a signed contract failed"
      L6_2 = A0_2.kind
      L7_2 = A0_2.propertyId
      L8_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L1_2 = L2_2 or L1_2
    if L2_2 then
      L4_2 = L3_2.ok
      L1_2 = true == L4_2
    end
  else
    L2_2 = Properties
    L2_2 = L2_2.saleInFlight
    L3_2 = A0_2.propertyId
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L1_2 = false
    else
      L2_2 = Properties
      L2_2 = L2_2.saleInFlight
      L3_2 = A0_2.propertyId
      L2_2[L3_2] = true
      L2_2 = pcall
      L3_2 = L13_1
      L4_2 = A0_2
      L2_2, L3_2 = L2_2(L3_2, L4_2)
      L4_2 = Properties
      L4_2 = L4_2.saleInFlight
      L5_2 = A0_2.propertyId
      L4_2[L5_2] = nil
      if not L2_2 then
        L4_2 = Utils
        L4_2 = L4_2.Warn
        L5_2 = "Completing a signed contract failed"
        L6_2 = A0_2.kind
        L7_2 = A0_2.propertyId
        L8_2 = L3_2
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      L1_2 = L2_2 or L1_2
      L1_2 = L2_2 and true == L3_2
    end
  end
  L2_2 = L6_1
  L3_2 = A0_2
  L4_2 = "tk_housing:contractClose"
  L5_2 = {}
  L6_2 = A0_2.id
  L5_2.sessionId = L6_2
  if L1_2 then
    L6_2 = "completed"
    if L6_2 then
      goto lbl_88
    end
  end
  L6_2 = "failed"
  ::lbl_88::
  L5_2.reason = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1 = RegisterCallback
L16_1 = "tk_housing:contractSign"
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Utils
  L4_2 = L4_2.IsFiniteNumber
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L4_2(L5_2)
    return
  end
  L4_2 = type
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = #A3_2
    L5_2 = L3_1
    if not (L4_2 > L5_2) then
      L5_2 = A3_2
      L4_2 = A3_2.sub
      L6_2 = 1
      L7_2 = L2_1
      L7_2 = #L7_2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = L2_1
      if L4_2 == L5_2 then
        goto lbl_46
      end
    end
  end
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_cheater"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Contract signed with invalid signature"
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = false
  L4_2(L5_2)
  do return end
  ::lbl_46::
  L4_2 = L8_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L7_2 = _U
    L8_2 = "contract_gone"
    L7_2 = L7_2(L8_2)
    L6_2.message = L7_2
    L5_2(L6_2)
    return
  end
  L5_2 = L4_2.sellerSrc
  if A0_2 == L5_2 then
    L5_2 = L4_2.sellerSigned
    if not L5_2 then
      L4_2.sellerSigned = true
      L4_2.sellerSignature = A3_2
  end
  else
    L5_2 = L4_2.buyerSrc
    if A0_2 == L5_2 then
      L5_2 = L4_2.buyerSigned
      if not L5_2 then
        L4_2.buyerSigned = true
        L4_2.buyerSignature = A3_2
    end
    else
      L5_2 = L4_2.sellerSrc
      if A0_2 ~= L5_2 then
        L5_2 = L4_2.buyerSrc
        if A0_2 ~= L5_2 then
          L5_2 = Webhook
          L6_2 = _U
          L7_2 = "webhook_cheater"
          L8_2 = Utils
          L8_2 = L8_2.GetIdentifiers
          L9_2 = A0_2
          L8_2 = L8_2(L9_2)
          L9_2 = "Contract signed from wrong seat"
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
          L5_2(L6_2, L7_2, L8_2, L9_2)
        end
      end
      L5_2 = A1_2
      L6_2 = {}
      L6_2.ok = false
      L5_2(L6_2)
      return
    end
  end
  L5_2 = L6_1
  L6_2 = L4_2
  L7_2 = "tk_housing:contractUpdate"
  L8_2 = {}
  L9_2 = L4_2.id
  L8_2.sessionId = L9_2
  L9_2 = L4_2.sellerSigned
  L8_2.sellerSigned = L9_2
  L9_2 = L4_2.buyerSigned
  L8_2.buyerSigned = L9_2
  L9_2 = L4_2.sellerSignature
  L8_2.sellerSignature = L9_2
  L9_2 = L4_2.buyerSignature
  L8_2.buyerSignature = L9_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L4_2.sellerSrc
  if L5_2 then
    L5_2 = L4_2.sellerSigned
    if not L5_2 then
      goto lbl_132
    end
  end
  L5_2 = L4_2.buyerSrc
  if L5_2 then
    L5_2 = L4_2.buyerSigned
    if not L5_2 then
      goto lbl_132
    end
  end
  L5_2 = L14_1
  L6_2 = L4_2
  L5_2(L6_2)
  ::lbl_132::
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterCallback
L16_1 = "tk_housing:contractDecline"
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Utils
  L3_2 = L3_2.IsFiniteNumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = L8_1
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.sellerSrc
  if A0_2 ~= L4_2 then
    L4_2 = L3_2.buyerSrc
    if A0_2 ~= L4_2 then
      L4_2 = Webhook
      L5_2 = _U
      L6_2 = "webhook_cheater"
      L7_2 = Utils
      L7_2 = L7_2.GetIdentifiers
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      L8_2 = "Contract declined by non-party"
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = A1_2
      L5_2 = {}
      L5_2.ok = false
      L4_2(L5_2)
      return
    end
  end
  L4_2 = L7_1
  L5_2 = L3_2
  L6_2 = "declined"
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = Contracts
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = Utils
  L2_2 = L2_2.ContractEnabled
  L3_2 = A1_2.kind
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2.propertyId
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = nil
  L4_2 = nil
  L5_2 = A1_2.kind
  if "sellBack" == L5_2 then
    L3_2 = A0_2
  else
    L5_2 = A1_2.kind
    if "transfer" == L5_2 then
      L3_2 = A0_2
      L4_2 = A1_2.targetId
      L5_2 = GetPlayerFromId
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = Notify
        L6_2 = A0_2
        L7_2 = _U
        L8_2 = "contract_target_gone"
        L7_2 = L7_2(L8_2)
        L8_2 = "error"
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = true
        return L5_2
      end
    else
      L4_2 = A0_2
    end
  end
  L5_2 = L9_1
  L6_2 = A1_2.propertyId
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 then
    L5_2 = Notify
    L6_2 = A0_2
    L7_2 = _U
    L8_2 = "contract_in_progress"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = true
    return L5_2
  end
  L5_2 = Utils
  L5_2 = L5_2.ParseOwner
  L6_2 = L2_2.owner
  L5_2 = L5_2(L6_2)
  L6_2 = Config
  L6_2 = L6_2.Contracts
  L6_2 = L6_2.sellerName
  if not L6_2 then
    L6_2 = _U
    L7_2 = "contract_seller_default"
    L6_2 = L6_2(L7_2)
  end
  L7_2 = L11_1
  L8_2 = L5_2 or L8_2
  if L5_2 then
    L8_2 = L5_2.type
  end
  if "business" == L8_2 then
    L8_2 = L5_2.id
    if L8_2 then
      goto lbl_82
    end
  end
  L8_2 = L2_2.businessId
  ::lbl_82::
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = L6_2
  end
  L8_2 = nil
  L9_2 = L5_2 or L9_2
  if L5_2 then
    L9_2 = L5_2.type
  end
  if "player" == L9_2 then
    L9_2 = GetCharName
    L10_2 = L5_2.id
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2 or L8_2
    if not L9_2 then
      L9_2 = _U
      L10_2 = "contract_seller_unknown"
      L9_2 = L9_2(L10_2)
      L8_2 = L9_2
    end
  elseif L5_2 then
    L9_2 = Properties
    L9_2 = L9_2.GetOwnerLabel
    L10_2 = L2_2.owner
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
  else
    L9_2 = L11_1
    L10_2 = L2_2.businessId
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
  end
  L9_2 = GetPlayerFromId
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L10_2 = true
    return L10_2
  end
  L10_2 = GetCharName
  L11_2 = GetIdentifier
  L12_2 = L9_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = {}
  L12_2 = L8_2 or L12_2
  if not L8_2 then
    L12_2 = L6_2
  end
  L11_2.name = L12_2
  L12_2 = nil ~= L3_2
  L11_2.signs = L12_2
  L12_2 = {}
  L12_2.name = L10_2
  L13_2 = nil ~= L4_2
  L12_2.signs = L13_2
  L13_2 = A1_2.kind
  if "motel" == L13_2 then
    L11_2.name = L7_2
  else
    L13_2 = A1_2.kind
    if "sellBack" == L13_2 then
      L11_2.name = L10_2
      L12_2.name = L7_2
    else
      L13_2 = A1_2.kind
      if "transfer" == L13_2 then
        L11_2.name = L10_2
        L13_2 = GetCharName
        L14_2 = GetIdentifier
        L15_2 = GetPlayerFromId
        L16_2 = L4_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L12_2.name = L13_2
      else
        L13_2 = A1_2.kind
        if "business" == L13_2 then
          L13_2 = L11_1
          L14_2 = A1_2.businessId
          L13_2 = L13_2(L14_2)
          if not L13_2 then
            L13_2 = L7_2
          end
          L12_2.name = L13_2
          L12_2.agent = L10_2
        end
      end
    end
  end
  L13_2 = L0_1
  L13_2 = L13_2 + 1
  L0_1 = L13_2
  L13_2 = {}
  L14_2 = L0_1
  L13_2.id = L14_2
  L14_2 = A1_2.kind
  L13_2.kind = L14_2
  L14_2 = A1_2.propertyId
  L13_2.propertyId = L14_2
  L14_2 = A1_2.businessId
  L13_2.businessId = L14_2
  L14_2 = L2_2.owner
  L13_2.ownerAtStart = L14_2
  L14_2 = A1_2.purchaseType
  L13_2.purchaseType = L14_2
  L14_2 = A1_2.isFromPropertyList
  L13_2.isFromPropertyList = L14_2
  L14_2 = A1_2.targetId
  L13_2.targetId = L14_2
  L13_2.sellerSrc = L3_2
  L13_2.buyerSrc = L4_2
  L14_2 = A1_2.price
  L13_2.price = L14_2
  L13_2.sellerSigned = false
  L13_2.buyerSigned = false
  L14_2 = os
  L14_2 = L14_2.time
  L14_2 = L14_2()
  L15_2 = L1_1
  L14_2 = L14_2 + L15_2
  L13_2.expiresAt = L14_2
  L14_2 = Contracts
  L14_2 = L14_2.sessions
  L15_2 = L13_2.id
  L14_2[L15_2] = L13_2
  L14_2 = {}
  L15_2 = L13_2.id
  L14_2.sessionId = L15_2
  L15_2 = L13_2.kind
  L14_2.kind = L15_2
  L14_2.letterhead = L7_2
  L15_2 = {}
  L16_2 = L2_2.id
  if not L16_2 then
    L16_2 = A1_2.propertyId
  end
  L15_2.id = L16_2
  L16_2 = L2_2.name
  L15_2.name = L16_2
  L16_2 = L2_2.address
  L15_2.address = L16_2
  L16_2 = L2_2.propertyType
  L15_2.propertyType = L16_2
  L14_2.property = L15_2
  L15_2 = A1_2.price
  L14_2.price = L15_2
  L14_2.seller = L11_2
  L14_2.buyer = L12_2
  L15_2 = A1_2.finance
  L14_2.finance = L15_2
  L15_2 = A1_2.kind
  if "rent" == L15_2 then
    L15_2 = Config
    L15_2 = L15_2.Rent
    L15_2 = L15_2.interval
    if L15_2 then
      goto lbl_255
    end
  end
  L15_2 = nil
  ::lbl_255::
  L14_2.rentInterval = L15_2
  L15_2 = A1_2.kind
  if "motel" == L15_2 then
    L15_2 = Config
    L15_2 = L15_2.Motel
    L15_2 = L15_2.duration
    if L15_2 then
      goto lbl_265
    end
  end
  L15_2 = nil
  ::lbl_265::
  L14_2.stayMinutes = L15_2
  L15_2 = os
  L15_2 = L15_2.date
  L16_2 = "%d.%m.%Y"
  L15_2 = L15_2(L16_2)
  L14_2.date = L15_2
  L15_2 = L13_2.expiresAt
  L14_2.expiresAt = L15_2
  if L3_2 then
    L14_2.seat = "seller"
    L15_2 = TriggerClientEvent
    L16_2 = "tk_housing:contractOpen"
    L17_2 = L3_2
    L18_2 = L14_2
    L15_2(L16_2, L17_2, L18_2)
  end
  if L4_2 then
    L14_2.seat = "buyer"
    L15_2 = TriggerClientEvent
    L16_2 = "tk_housing:contractOpen"
    L17_2 = L4_2
    L18_2 = L14_2
    L15_2(L16_2, L17_2, L18_2)
  end
  L15_2 = Utils
  L15_2 = L15_2.Debug
  L16_2 = "contract opened"
  L17_2 = L13_2.kind
  L18_2 = L13_2.propertyId
  L19_2 = L3_2
  L20_2 = L4_2
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L15_2 = true
  return L15_2
end
L15_1.Open = L16_1
L15_1 = AddEventHandler
L16_1 = "playerDropped"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = next
  L2_2 = Contracts
  L2_2 = L2_2.sessions
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = Contracts
  L2_2 = L2_2.sessions
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.sellerSrc
    if L7_2 ~= L0_2 then
      L7_2 = L6_2.buyerSrc
      if L7_2 ~= L0_2 then
        goto lbl_24
      end
    end
    L7_2 = L7_1
    L8_2 = L6_2
    L9_2 = "cancelled"
    L7_2(L8_2, L9_2)
    ::lbl_24::
  end
end
L15_1(L16_1, L17_1)
L15_1 = CreateThread
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = Wait
    L1_2 = 10000
    L0_2(L1_2)
    L0_2 = os
    L0_2 = L0_2.time
    L0_2 = L0_2()
    L1_2 = pairs
    L2_2 = Contracts
    L2_2 = L2_2.sessions
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.expiresAt
      if L0_2 >= L7_2 then
        L7_2 = L7_1
        L8_2 = L6_2
        L9_2 = "expired"
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L15_1(L16_1)
