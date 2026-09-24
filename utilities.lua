local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1
L0_1 = {}
Utilities = L0_1
L0_1 = {}
L1_1 = "electricity"
L2_1 = "water"
L3_1 = "internet"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
function L1_1()
  local L0_2, L1_2
  L0_2 = type
  L1_2 = Config
  L1_2 = L1_2.Bills
  L1_2 = L1_2.gracePeriod
  L0_2 = L0_2(L1_2)
  if "number" == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Bills
    L0_2 = L0_2.gracePeriod
    if L0_2 then
      goto lbl_14
    end
  end
  L0_2 = 0
  ::lbl_14::
  return L0_2
end
function L2_1()
  local L0_2, L1_2
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = L1_1
  L1_2 = L1_2()
  L1_2 = L1_2 / 1000
  return L0_2(L1_2)
end
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = type
  L1_2 = Config
  L1_2 = L1_2.Rent
  L1_2 = L1_2.gracePeriod
  L0_2 = L0_2(L1_2)
  if "number" == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Rent
    L0_2 = L0_2.gracePeriod
    if L0_2 then
      goto lbl_14
    end
  end
  L0_2 = 0
  ::lbl_14::
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L0_2 / 1000
  return L1_2(L2_2)
end
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2 or nil
  if A0_2 then
    L2_2 = A0_2.bills
    if L2_2 then
      L2_2 = L2_2[A1_2]
    end
  end
  return L2_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = A0_2.amountOwed
    if not L1_2 then
      L1_2 = 0
    end
    if not (L1_2 <= 0) then
      goto lbl_11
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_11::
  L1_2 = A0_2.dueAt
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.service
  if "rent" == L1_2 then
    L1_2 = L3_1
    L1_2 = L1_2()
    if L1_2 then
      goto lbl_25
    end
  end
  L1_2 = L2_1
  L1_2 = L1_2()
  ::lbl_25::
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = A0_2.dueAt
  L3_2 = L3_2 + L1_2
  L2_2 = L2_2 > L3_2
  return L2_2
end
L6_1 = Utilities
L6_1.IsBillOverdue = L5_1
L6_1 = Utilities
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.IsMotelType
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.propertyType
  end
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_2.owner
  end
  L2_2 = Utils
  L2_2 = L2_2.ParseOwner
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.type
  end
  if "business" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.RealEstateBusiness
    if L3_2 then
      L3_2 = L3_2.enabled
    end
    L3_2 = true == L3_2
    return L3_2
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.type
  end
  if "job" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.JobOwnedProperties
    if L3_2 then
      L3_2 = L3_2.enabled
    end
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.JobOwnedProperties
      L3_2 = L3_2.billing
      L3_2 = true == L3_2
    end
    return L3_2
  end
  L3_2 = type
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_2 = "string" == L3_2 and "" ~= L1_2
  return L3_2
end
L6_1.IsBilled = L7_1
L6_1 = Utilities
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if "electricity" == A1_2 then
    L2_2 = Config
    L2_2 = L2_2.Electricity
    if L2_2 then
      L2_2 = L2_2.mode
    end
    if "advanced" == L2_2 then
      L2_2 = Electricity
      if L2_2 then
        L2_2 = Electricity
        L2_2 = L2_2.IsPowered
        L3_2 = A0_2
        return L2_2(L3_2)
      end
    end
  end
  L2_2 = nil
  L3_2 = Config
  L3_2 = L3_2.Bills
  L3_2 = L3_2.enable
  if not L3_2 then
    if "electricity" == A1_2 then
      L3_2 = Config
      L3_2 = L3_2.Generator
      if L3_2 then
        L3_2 = L3_2.enable
      end
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Generator
        L3_2 = L3_2.requireGenerator
        if L3_2 then
          L3_2 = Generator
          if L3_2 then
            L3_2 = Generator
            L3_2 = L3_2.IsPowered
            L4_2 = A0_2
            return L3_2(L4_2)
          end
        end
      end
    end
    L3_2 = true
    return L3_2
  else
    L3_2 = Config
    L3_2 = L3_2.Bills
    L3_2 = L3_2.services
    if L3_2 then
      L3_2 = L3_2[A1_2]
      if L3_2 then
        L3_2 = L3_2.enable
      end
    end
    if not L3_2 then
      L2_2 = false
    else
      L3_2 = L4_1
      L4_2 = Main
      L4_2 = L4_2.GetProperty
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2.connected
      L4_2 = L3_2.amountOwed
      if not L4_2 then
        L4_2 = 0
      end
      L4_2 = L5_1
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L2_2 = nil ~= L3_2 and L2_2
    end
  end
  if "electricity" == A1_2 then
    L3_2 = Config
    L3_2 = L3_2.Generator
    if L3_2 then
      L3_2 = L3_2.enable
    end
    if L3_2 then
      L3_2 = Generator
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Generator
        L3_2 = L3_2.requireGenerator
        if L3_2 then
          L3_2 = Generator
          L3_2 = L3_2.IsPowered
          L4_2 = A0_2
          return L3_2(L4_2)
        end
        L3_2 = L2_2 or L3_2
        if not L2_2 then
          L3_2 = Generator
          L3_2 = L3_2.IsPowered
          L4_2 = A0_2
          L3_2 = L3_2(L4_2)
        end
        return L3_2
      end
    end
  end
  return L2_2
end
L6_1.IsServiceActive = L7_1
L6_1 = Utilities
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Generator
  if L1_2 then
    L1_2 = L1_2.requireGenerator
  end
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Bills
  L1_2 = L1_2.enable
  if L1_2 then
    L1_2 = Utilities
    L1_2 = L1_2.IsBilled
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_23
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_23::
  L1_2 = Config
  L1_2 = L1_2.Bills
  L1_2 = L1_2.services
  if L1_2 then
    L1_2 = L1_2.electricity
    if L1_2 then
      L1_2 = L1_2.enable
    end
  end
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L4_1
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "electricity"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.connected
  L2_2 = L1_2.amountOwed
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L5_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = nil ~= L1_2 and L2_2
  return L2_2
end
L6_1.IsGridAvailable = L7_1
L6_1 = Utilities
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Config
  L1_2 = L1_2.Electricity
  if L1_2 then
    L1_2 = L1_2.mode
  end
  L1_2 = "advanced" == L1_2
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.enable
  if L2_2 then
    L2_2 = Utilities
    L2_2 = L2_2.IsBilled
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_68
    end
  end
  L2_2 = true
  if L1_2 then
    L3_2 = Electricity
    L3_2 = L3_2.IsPowered
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = Config
    L3_2 = L3_2.Generator
    if L3_2 then
      L3_2 = L3_2.enable
    end
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.Generator
      L3_2 = L3_2.requireGenerator
      if L3_2 then
        L3_2 = Generator
        if L3_2 then
          L3_2 = Generator
          L3_2 = L3_2.IsPowered
          L4_2 = A0_2
          L3_2 = L3_2(L4_2)
          L2_2 = L3_2
        end
      end
    end
  end
  L3_2 = {}
  L3_2.electricity = L2_2
  L3_2.water = true
  L3_2.internet = true
  do return L3_2 end
  ::lbl_68::
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Utilities
    L9_2 = L9_2.IsServiceActive
    L10_2 = A0_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L2_2[L8_2] = L9_2
  end
  return L2_2
end
L6_1.GetStatus = L7_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Electricity
  if L1_2 then
    L1_2 = L1_2.mode
  end
  if "advanced" == L1_2 then
    L1_2 = Electricity
    if L1_2 then
      L1_2 = Electricity
      L1_2 = L1_2.Reconcile
      L2_2 = A0_2
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.services
  if L2_2 then
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = L2_2.interval
    end
  end
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 / 1000
  L1_2 = L1_2(L2_2)
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = {}
  L3_2.service = A0_2
  L3_2.connected = true
  L3_2.amountOwed = 0
  L3_2.lastCharge = L2_2
  L3_2.lastPaid = nil
  L4_2 = L2_2 + L1_2
  L3_2.dueAt = L4_2
  return L3_2
end
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.services
  if L2_2 then
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = L2_2.interval
    end
  end
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 / 1000
  return L1_2(L2_2)
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 or A0_2 <= 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = 86400000
  L2_2 = 3600000
  L3_2 = 60000
  L4_2 = 7 * L1_2
  L4_2 = A0_2 % L4_2
  if 0 == L4_2 then
    L4_2 = 7 * L1_2
    L4_2 = A0_2 // L4_2
    if 1 == L4_2 then
      L5_2 = _U
      L6_2 = "interval_week"
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_34
      end
    end
    L5_2 = _U
    L6_2 = "interval_weeks"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    ::lbl_34::
    return L5_2
  end
  L4_2 = A0_2 % L1_2
  if 0 == L4_2 then
    L4_2 = A0_2 // L1_2
    if 1 == L4_2 then
      L5_2 = _U
      L6_2 = "interval_day"
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_52
      end
    end
    L5_2 = _U
    L6_2 = "interval_days"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    ::lbl_52::
    return L5_2
  end
  L4_2 = A0_2 % L2_2
  if 0 == L4_2 then
    L4_2 = A0_2 // L2_2
    if 1 == L4_2 then
      L5_2 = _U
      L6_2 = "interval_hour"
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_70
      end
    end
    L5_2 = _U
    L6_2 = "interval_hours"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    ::lbl_70::
    return L5_2
  end
  L4_2 = A0_2 % L3_2
  if 0 == L4_2 then
    L4_2 = A0_2 // L3_2
    if 1 == L4_2 then
      L5_2 = _U
      L6_2 = "interval_minute"
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_88
      end
    end
    L5_2 = _U
    L6_2 = "interval_minutes"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    ::lbl_88::
    return L5_2
  end
  L4_2 = _U
  L5_2 = "interval_hours_short"
  L6_2 = A0_2 // L2_2
  return L4_2(L5_2, L6_2)
end
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = L9_1
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.services
  if L2_2 then
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = L2_2.interval
    end
  end
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.services
  if L2_2 then
    L2_2 = L2_2[A1_2]
  end
  if not L2_2 then
    L3_2 = 0
    return L3_2
  end
  L3_2 = L2_2.costModel
  if "percent" == L3_2 then
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = A0_2.price
    if not L4_2 then
      L4_2 = 0
    end
    L5_2 = L2_2.amount
    if not L5_2 then
      L5_2 = 0
    end
    L4_2 = L4_2 * L5_2
    L4_2 = L4_2 / 100
    return L3_2(L4_2)
  end
  L3_2 = L2_2.amount
  if not L3_2 then
    L3_2 = 0
  end
  return L3_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Main
  L2_2 = L2_2.GetPropertyPlayers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L3_2[L9_2] = true
  end
  L4_2 = pairs
  L5_2 = Main
  L5_2 = L5_2.GetYardPlayers
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2 = L3_2[L8_2]
    if not L9_2 then
      L3_2[L8_2] = true
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L8_2
    end
  end
  L4_2 = A1_2.owner
  if L4_2 then
    L4_2 = GetPlayerFromIdentifier
    L5_2 = A1_2.owner
    L4_2 = L4_2(L5_2)
  end
  if L4_2 then
    L5_2 = GetSource
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L3_2[L5_2]
    if not L6_2 then
      L6_2 = #L2_2
      L6_2 = L6_2 + 1
      L2_2[L6_2] = L5_2
    end
  end
  return L2_2
end
L13_1 = {}
L14_1 = {}
L15_1 = "electricity"
L16_1 = "water"
L17_1 = "internet"
L18_1 = "locked"
L19_1 = "rentLocked"
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = L14_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2[L7_2]
    L9_2 = A1_2[L7_2]
    if L8_2 ~= L9_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
L16_1 = Utilities
function L17_1(A0_2)
  local L1_2
  L1_2 = L13_1
  L1_2[A0_2] = nil
end
L16_1.ClearLastSync = L17_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.utilities
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = {}
  L4_2 = L2_2.electricity
  L3_2.electricity = L4_2
  L4_2 = L2_2.water
  L3_2.water = L4_2
  L4_2 = L2_2.internet
  L3_2.internet = L4_2
  L4_2 = L1_2.billsLocked
  if not L4_2 then
    L4_2 = false
  end
  L3_2.locked = L4_2
  L4_2 = L1_2.rentLocked
  if not L4_2 then
    L4_2 = false
  end
  L3_2.rentLocked = L4_2
  L4_2 = L13_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = L15_1
    L5_2 = L13_1
    L5_2 = L5_2[A0_2]
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      return
    end
  end
  L4_2 = L13_1
  L4_2[A0_2] = L3_2
  L4_2 = {}
  L4_2.propertyId = A0_2
  L5_2 = L1_2.utilities
  L4_2.utilities = L5_2
  L5_2 = L3_2.locked
  L4_2.locked = L5_2
  L5_2 = L3_2.rentLocked
  L4_2.rentLocked = L5_2
  L5_2 = ipairs
  L6_2 = L12_1
  L7_2 = A0_2
  L8_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = TriggerClientEvent
    L12_2 = "tk_housing:updateUtilities"
    L13_2 = L10_2
    L14_2 = L4_2
    L11_2(L12_2, L13_2, L14_2)
  end
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = Utilities
  L2_2 = L2_2.GetStatus
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.utilities = L2_2
end
L18_1 = Utilities
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Main
  L1_2 = L1_2.ClearExportCache
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L16_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L18_1.Sync = L19_1
L18_1 = Utilities
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Config
  L1_2 = L1_2.Bills
  L1_2 = L1_2.enable
  if not L1_2 then
    return
  end
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Utilities
    L2_2 = L2_2.IsBilled
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = BillsDb
  L4_2 = L4_2.GetBills
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.service
    L10_2 = {}
    L11_2 = L8_2.service
    L10_2.service = L11_2
    L11_2 = L8_2.connected
    L10_2.connected = L11_2
    L11_2 = L8_2.amount_owed
    if not L11_2 then
      L11_2 = 0
    end
    L10_2.amountOwed = L11_2
    L11_2 = L8_2.last_charge
    L10_2.lastCharge = L11_2
    L11_2 = L8_2.last_paid
    L10_2.lastPaid = L11_2
    L11_2 = L8_2.due_at
    L10_2.dueAt = L11_2
    L2_2[L9_2] = L10_2
  end
  L3_2 = ipairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Config
    L9_2 = L9_2.Bills
    L9_2 = L9_2.services
    if L9_2 then
      L9_2 = L9_2[L8_2]
      if L9_2 then
        L9_2 = L9_2.enable
      end
    end
    if L9_2 then
      L9_2 = L2_2[L8_2]
      if not L9_2 then
        L9_2 = L7_1
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L2_2[L8_2] = L9_2
        L10_2 = BillsDb
        L10_2 = L10_2.UpsertBill
        L11_2 = A0_2
        L12_2 = L8_2
        L13_2 = L9_2
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
  L1_2.bills = L2_2
  L3_2 = L17_1
  L4_2 = A0_2
  L3_2(L4_2)
end
L18_1.LoadBills = L19_1
L18_1 = Utilities
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = Config
  L0_2 = L0_2.Bills
  L0_2 = L0_2.enable
  if not L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Generator
    if L0_2 then
      L0_2 = L0_2.enable
    end
    if L0_2 then
      L0_2 = Config
      L0_2 = L0_2.Generator
      L0_2 = L0_2.requireGenerator
      if L0_2 then
        L0_2 = pairs
        L1_2 = Main
        L1_2 = L1_2.GetProperties
        L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L1_2()
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        for L4_2 in L0_2, L1_2, L2_2, L3_2 do
          L5_2 = L17_1
          L6_2 = L4_2
          L5_2(L6_2)
        end
      end
    end
    return
  end
  L0_2 = BillsDb
  L0_2 = L0_2.GetAllBills
  L0_2 = L0_2()
  L1_2 = pairs
  L2_2 = Main
  L2_2 = L2_2.GetProperties
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Utilities
    L7_2 = L7_2.IsBilled
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = {}
      L8_2 = pairs
      L9_2 = L0_2[L5_2]
      if not L9_2 then
        L9_2 = {}
      end
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = {}
        L14_2.service = L12_2
        L15_2 = L13_2.connected
        L14_2.connected = L15_2
        L15_2 = L13_2.amount_owed
        if not L15_2 then
          L15_2 = 0
        end
        L14_2.amountOwed = L15_2
        L15_2 = L13_2.last_charge
        L14_2.lastCharge = L15_2
        L15_2 = L13_2.last_paid
        L14_2.lastPaid = L15_2
        L15_2 = L13_2.due_at
        L14_2.dueAt = L15_2
        L7_2[L12_2] = L14_2
      end
      L8_2 = ipairs
      L9_2 = L0_1
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = Config
        L14_2 = L14_2.Bills
        L14_2 = L14_2.services
        if L14_2 then
          L14_2 = L14_2[L13_2]
          if L14_2 then
            L14_2 = L14_2.enable
          end
        end
        if L14_2 then
          L14_2 = L7_2[L13_2]
          if not L14_2 then
            L14_2 = L7_1
            L15_2 = L13_2
            L14_2 = L14_2(L15_2)
            L7_2[L13_2] = L14_2
            L15_2 = BillsDb
            L15_2 = L15_2.UpsertBill
            L16_2 = L5_2
            L17_2 = L13_2
            L18_2 = L14_2
            L15_2(L16_2, L17_2, L18_2)
          end
        end
      end
      L6_2.bills = L7_2
      L8_2 = L17_1
      L9_2 = L5_2
      L8_2(L9_2)
    else
      L7_2 = Config
      L7_2 = L7_2.Generator
      if L7_2 then
        L7_2 = L7_2.enable
      end
      if L7_2 then
        L7_2 = Config
        L7_2 = L7_2.Generator
        L7_2 = L7_2.requireGenerator
        if L7_2 then
          L7_2 = L17_1
          L8_2 = L5_2
          L7_2(L8_2)
        end
      end
    end
  end
end
L18_1.PrimeBills = L19_1
L18_1 = Utilities
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Config
  L1_2 = L1_2.Bills
  L1_2 = L1_2.enable
  if not L1_2 then
    return
  end
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = Utils
  L2_2 = L2_2.IsMotelType
  L3_2 = L1_2.propertyType
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = L1_2.bills
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.bills = L2_2
  L2_2 = ipairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Config
    L8_2 = L8_2.Bills
    L8_2 = L8_2.services
    if L8_2 then
      L8_2 = L8_2[L7_2]
      if L8_2 then
        L8_2 = L8_2.enable
      end
    end
    if L8_2 then
      L8_2 = L1_2.bills
      L8_2 = L8_2[L7_2]
      if not L8_2 then
        L8_2 = L7_1
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = L1_2.bills
        L9_2[L7_2] = L8_2
        L9_2 = BillsDb
        L9_2 = L9_2.UpsertBill
        L10_2 = A0_2
        L11_2 = L7_2
        L12_2 = L8_2
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  L2_2 = L17_1
  L3_2 = A0_2
  L2_2(L3_2)
end
L18_1.BootstrapBills = L19_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = type
  L3_2 = A0_2.bills
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.bills
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.amountOwed
      if not L8_2 then
        L8_2 = 0
      end
      L1_2 = L1_2 + L8_2
    end
  end
  return L1_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = type
  L3_2 = A0_2.bills
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.bills
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if "rent" ~= L6_2 then
        L8_2 = L7_2.amountOwed
        if not L8_2 then
          L8_2 = 0
        end
        L1_2 = L1_2 + L8_2
      end
    end
  end
  return L1_2
end
function L20_1(A0_2)
  local L1_2
  A0_2.billsLocked = false
end
L21_1 = Utilities
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Permissions
    L4_2 = L4_2.IsOwnerOrManager
    L5_2 = L3_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_23
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_23::
  L4_2 = L6_1
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = L19_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 <= 0 then
    L5_2 = false
    return L5_2
  end
  L5_2 = GetAccountMoney
  L6_2 = L3_2
  L7_2 = "bank"
  L5_2 = L5_2(L6_2, L7_2)
  if L4_2 > L5_2 then
    L5_2 = Notify
    L6_2 = A0_2
    L7_2 = _U
    L8_2 = "bills_cannot_afford"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = false
    return L5_2
  end
  L5_2 = RemoveAccountMoney
  L6_2 = L3_2
  L7_2 = "bank"
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L6_2 = pairs
  L7_2 = L2_2.bills
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if "rent" ~= L10_2 then
      L12_2 = L11_2.amountOwed
      if not L12_2 then
        L12_2 = 0
      end
      if L12_2 > 0 then
        L12_2 = BillsDb
        L12_2 = L12_2.AddHistory
        L13_2 = A1_2
        L14_2 = L10_2
        L15_2 = L11_2.amountOwed
        L16_2 = L5_2
        L12_2(L13_2, L14_2, L15_2, L16_2)
        L11_2.amountOwed = 0
        L11_2.lastPaid = L5_2
        L12_2 = L8_1
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L12_2 = L5_2 + L12_2
        L11_2.dueAt = L12_2
        L12_2 = BillsDb
        L12_2 = L12_2.UpsertBill
        L13_2 = A1_2
        L14_2 = L10_2
        L15_2 = L11_2
        L12_2(L13_2, L14_2, L15_2)
      end
    end
  end
  L6_2 = L20_1
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = L17_1
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = Main
  L6_2 = L6_2.ClearExportCache
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = L16_1
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = Notify
  L7_2 = A0_2
  L8_2 = _U
  L9_2 = "bills_paid"
  L8_2 = L8_2(L9_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = true
  return L6_2
end
L21_1.PayAll = L22_1
L21_1 = Utilities
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = Permissions
    L5_2 = L5_2.IsOwnerOrManager
    L6_2 = L4_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_23
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_23::
  if "electricity" == A2_2 then
    L5_2 = L6_1
    L6_2 = A1_2
    L5_2(L6_2)
  end
  L5_2 = L3_2.bills
  if L5_2 then
    L5_2 = L5_2[A2_2]
  end
  if L5_2 then
    L6_2 = L5_2.amountOwed
    if not L6_2 then
      L6_2 = 0
    end
    if not (L6_2 <= 0) then
      goto lbl_42
    end
  end
  L6_2 = false
  do return L6_2 end
  ::lbl_42::
  L6_2 = L5_2.amountOwed
  L7_2 = GetAccountMoney
  L8_2 = L4_2
  L9_2 = "bank"
  L7_2 = L7_2(L8_2, L9_2)
  if L6_2 > L7_2 then
    L7_2 = Notify
    L8_2 = A0_2
    L9_2 = _U
    L10_2 = "bills_cannot_afford"
    L9_2 = L9_2(L10_2)
    L10_2 = "error"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = false
    return L7_2
  end
  L7_2 = RemoveAccountMoney
  L8_2 = L4_2
  L9_2 = "bank"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = os
  L7_2 = L7_2.time
  L7_2 = L7_2()
  L8_2 = BillsDb
  L8_2 = L8_2.AddHistory
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = L6_2
  L12_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L5_2.amountOwed = 0
  L5_2.lastPaid = L7_2
  if "rent" == A2_2 then
    L5_2.dueAt = nil
    L3_2.rentLocked = nil
  else
    L8_2 = L8_1
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    L8_2 = L7_2 + L8_2
    L5_2.dueAt = L8_2
    L8_2 = L19_1
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    if L8_2 <= 0 then
      L8_2 = L20_1
      L9_2 = L3_2
      L8_2(L9_2)
    end
  end
  L8_2 = BillsDb
  L8_2 = L8_2.UpsertBill
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = L5_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L17_1
  L9_2 = A1_2
  L8_2(L9_2)
  L8_2 = Main
  L8_2 = L8_2.ClearExportCache
  L9_2 = A1_2
  L8_2(L9_2)
  L8_2 = L16_1
  L9_2 = A1_2
  L8_2(L9_2)
  if "rent" == A2_2 then
    L8_2 = Notify
    L9_2 = A0_2
    L10_2 = _U
    L11_2 = "rent_paid"
    L12_2 = Utils
    L12_2 = L12_2.GroupDigits
    L13_2 = L6_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = "success"
    L8_2(L9_2, L10_2, L11_2)
  else
    L8_2 = Notify
    L9_2 = A0_2
    L10_2 = _U
    L11_2 = "bill_paid"
    L12_2 = Config
    L12_2 = L12_2.Bills
    L12_2 = L12_2.services
    if L12_2 then
      L12_2 = L12_2[A2_2]
      if L12_2 then
        L12_2 = L12_2.label
      end
    end
    if not L12_2 then
      L12_2 = A2_2
    end
    L13_2 = Utils
    L13_2 = L13_2.GroupDigits
    L14_2 = L6_2
    L13_2, L14_2 = L13_2(L14_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = "success"
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = true
  return L8_2
end
L21_1.PayService = L22_1
L21_1 = Utilities
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L6_1
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = L1_2.billsLocked
  L2_2 = true == L2_2
  L3_2 = L18_1
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 <= 0 and not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = type
  L5_2 = L1_2.bills
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = pairs
    L5_2 = L1_2.bills
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.amountOwed
      if not L10_2 then
        L10_2 = 0
      end
      if L10_2 > 0 then
        L10_2 = BillsDb
        L10_2 = L10_2.AddHistory
        L11_2 = A0_2
        L12_2 = L8_2
        L13_2 = L9_2.amountOwed
        L14_2 = L3_2
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L9_2.amountOwed = 0
        L9_2.lastPaid = L3_2
        if "rent" == L8_2 then
          L9_2.dueAt = nil
        else
          L10_2 = L8_1
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L10_2 = L3_2 + L10_2
          L9_2.dueAt = L10_2
        end
        L10_2 = BillsDb
        L10_2 = L10_2.UpsertBill
        L11_2 = A0_2
        L12_2 = L8_2
        L13_2 = L9_2
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
  L4_2 = L20_1
  L5_2 = L1_2
  L4_2(L5_2)
  L1_2.rentLocked = nil
  L4_2 = L17_1
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Main
  L4_2 = L4_2.ClearExportCache
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = L16_1
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = true
  return L4_2
end
L21_1.AdminClearBills = L22_1
L21_1 = Utilities
function L22_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = Config
  L4_2 = L4_2.Bills
  L4_2 = L4_2.allowToggle
  if false == L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = Config
  L5_2 = L5_2.Bills
  L5_2 = L5_2.services
  if L5_2 then
    L5_2 = L5_2[A2_2]
    if L5_2 then
      L5_2 = L5_2.enable
    end
  end
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = Permissions
    L6_2 = L6_2.IsOwnerOrManager
    L7_2 = L5_2
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_43
    end
  end
  L6_2 = false
  do return L6_2 end
  ::lbl_43::
  if "electricity" == A2_2 then
    L6_2 = L6_1
    L7_2 = A1_2
    L6_2(L7_2)
  end
  L6_2 = L4_2.bills
  if not L6_2 then
    L6_2 = {}
  end
  L4_2.bills = L6_2
  L6_2 = L4_2.bills
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    L6_2 = L7_1
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
  end
  L6_2.connected = A3_2
  if A3_2 then
    L7_2 = os
    L7_2 = L7_2.time
    L7_2 = L7_2()
    L6_2.lastCharge = L7_2
  end
  L7_2 = L4_2.bills
  L7_2[A2_2] = L6_2
  L7_2 = BillsDb
  L7_2 = L7_2.UpsertBill
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L17_1
  L8_2 = A1_2
  L7_2(L8_2)
  L7_2 = Main
  L7_2 = L7_2.ClearExportCache
  L8_2 = A1_2
  L7_2(L8_2)
  L7_2 = L16_1
  L8_2 = A1_2
  L7_2(L8_2)
  L7_2 = true
  return L7_2
end
L21_1.SetConnected = L22_1
L21_1 = Utilities
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "number" ~= L2_2 or A1_2 <= 0 then
    return
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L2_2.bills
  if not L3_2 then
    L3_2 = Utilities
    L3_2 = L3_2.LoadBills
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = L2_2.bills
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.bills = L3_2
  L3_2 = L2_2.bills
  L3_2 = L3_2.rent
  if not L3_2 then
    L4_2 = {}
    L4_2.service = "rent"
    L4_2.connected = true
    L4_2.amountOwed = 0
    L5_2 = os
    L5_2 = L5_2.time
    L5_2 = L5_2()
    L4_2.lastCharge = L5_2
    L4_2.lastPaid = nil
    L4_2.dueAt = nil
    L3_2 = L4_2
    L4_2 = L2_2.bills
    L4_2.rent = L3_2
  end
  L4_2 = L3_2.amountOwed
  if not L4_2 then
    L4_2 = 0
  end
  L4_2 = L4_2 + A1_2
  L3_2.amountOwed = L4_2
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L3_2.lastCharge = L4_2
  L4_2 = L3_2.dueAt
  if not L4_2 then
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = Config
    L6_2 = L6_2.Rent
    L6_2 = L6_2.interval
    L6_2 = L6_2 / 1000
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 + L5_2
  end
  L3_2.dueAt = L4_2
  L4_2 = BillsDb
  L4_2 = L4_2.UpsertBill
  L5_2 = A0_2
  L6_2 = "rent"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L17_1
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Main
  L4_2 = L4_2.ClearExportCache
  L5_2 = A0_2
  L4_2(L5_2)
end
L21_1.AccrueRent = L22_1
L21_1 = Utilities
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.bills
    if L2_2 then
      L2_2 = L2_2.rent
    end
  end
  return L1_2(L2_2)
end
L21_1.IsRentOverdue = L22_1
L21_1 = Utilities
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.enable
  if not L2_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.services
  if L2_2 then
    L2_2 = L2_2.water
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.enable
  end
  if not L3_2 then
    return
  end
  L3_2 = L2_2.uses
  if L3_2 then
    L3_2 = L3_2[A1_2]
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or L3_2 <= 0 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_1
  L6_2 = L4_2
  L7_2 = "water"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L5_2.connected
    if L6_2 then
      goto lbl_45
    end
  end
  do return end
  ::lbl_45::
  L6_2 = L5_2.amountOwed
  if not L6_2 then
    L6_2 = 0
  end
  L6_2 = L6_2 + L3_2
  L5_2.amountOwed = L6_2
  L6_2 = L5_2.dueAt
  if not L6_2 then
    L6_2 = os
    L6_2 = L6_2.time
    L6_2 = L6_2()
    L7_2 = L8_1
    L8_2 = "water"
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 + L7_2
    L5_2.dueAt = L6_2
  end
  L6_2 = BillsDb
  L6_2 = L6_2.UpsertBill
  L7_2 = A0_2
  L8_2 = "water"
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L21_1.AddWaterUse = L22_1
L21_1 = Utilities
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.enable
  if not L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.services
  if L2_2 then
    L2_2 = L2_2.electricity
    if L2_2 then
      L2_2 = L2_2.enable
    end
  end
  if not L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  if not (A1_2 <= 0) then
    L2_2 = Utilities
    L2_2 = L2_2.IsBilled
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_41
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_41::
  L2_2 = Config
  L2_2 = L2_2.Electricity
  if L2_2 then
    L2_2 = L2_2.mode
  end
  if "advanced" ~= L2_2 then
    L2_2 = Generator
    if L2_2 then
      L2_2 = L2_2.IsPowered
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
    end
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L4_2 = L2_2
  L5_2 = "electricity"
  L3_2 = L3_2(L4_2, L5_2)
  if not L2_2 or not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L2_2.owner
  L5_2 = Utils
  L5_2 = L5_2.ParseOwner
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L7_2 = L5_2 or L7_2
  if L5_2 then
    L7_2 = L5_2.type
  end
  if "business" == L7_2 then
    L7_2 = Business
    if L7_2 then
      L7_2 = Business
      L7_2 = L7_2.GetBusiness
      L8_2 = L5_2.id
      L7_2 = L7_2(L8_2)
    end
    L6_2 = L7_2 or L6_2
    if L7_2 then
      L8_2 = Business
      L8_2 = L8_2.RemoveMoney
      L9_2 = L7_2
      L10_2 = A1_2
      L11_2 = "bill"
      L12_2 = nil
      L13_2 = "%s - %s"
      L14_2 = L13_2
      L13_2 = L13_2.format
      L15_2 = L2_2.name
      if not L15_2 then
        L15_2 = L2_2.address
        if not L15_2 then
          L15_2 = A0_2
        end
      end
      L16_2 = Config
      L16_2 = L16_2.Bills
      L16_2 = L16_2.services
      L16_2 = L16_2.electricity
      L16_2 = L16_2.label
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2, L15_2, L16_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L6_2 = true == L8_2
    end
  else
    L7_2 = Config
    L7_2 = L7_2.Bills
    L7_2 = L7_2.paymentMode
    if "automatic" == L7_2 then
      L7_2 = Utils
      L7_2 = L7_2.IsEntityOwner
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = PayBill
        L8_2 = L4_2
        L9_2 = A1_2
        L7_2 = L7_2(L8_2, L9_2)
        L6_2 = true == L7_2
      end
    end
  end
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 == L2_2 then
    L8_2 = L7_2.owner
    if L8_2 == L4_2 then
      L8_2 = L4_1
      L9_2 = L7_2
      L10_2 = "electricity"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 == L3_2 then
        goto lbl_155
      end
    end
  end
  L8_2 = true
  do return L8_2 end
  ::lbl_155::
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L9_2 = PowerAccounting
  L9_2 = L9_2.ApplyBillResult
  L10_2 = L3_2
  L11_2 = L6_2
  L12_2 = A1_2
  L13_2 = L8_2
  L14_2 = L8_1
  L15_2 = "electricity"
  L14_2, L15_2, L16_2 = L14_2(L15_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L6_2 then
    L9_2 = BillsDb
    L9_2 = L9_2.AddHistory
    L10_2 = A0_2
    L11_2 = "electricity"
    L12_2 = A1_2
    L13_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L9_2 = BillsDb
  L9_2 = L9_2.UpsertBill
  L10_2 = A0_2
  L11_2 = "electricity"
  L12_2 = L3_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = true
  return L9_2
end
L21_1.AddElectricityUse = L22_1
L21_1 = Utilities
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Config
  L3_2 = L3_2.Electricity
  if L3_2 then
    L3_2 = L3_2.mode
  end
  if "advanced" ~= L3_2 and A1_2 ~= A2_2 then
    L3_2 = Config
    L3_2 = L3_2.Bills
    L3_2 = L3_2.enable
    if L3_2 then
      L3_2 = Utilities
      L3_2 = L3_2.IsBilled
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_22
      end
    end
  end
  do return end
  ::lbl_22::
  L3_2 = L4_1
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "electricity"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L3_2.lastCharge = L4_2
  L4_2 = BillsDb
  L4_2 = L4_2.UpsertBill
  L5_2 = A0_2
  L6_2 = "electricity"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L21_1.OnGeneratorStateChange = L22_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = Config
  L2_2 = L2_2.Bills
  L2_2 = L2_2.onNonPayment
  if "repossess" == L2_2 then
    L2_2 = A1_2.owner
    L3_2 = A1_2.name
    if not L3_2 then
      L3_2 = A1_2.address
    end
    L4_2 = Properties
    L4_2 = L4_2.RemovePropertyOwner
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = Webhook
    L5_2 = _U
    L6_2 = "webhook_action"
    L7_2 = "Server"
    L8_2 = "Property Repossessed - Unpaid Bills"
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = {}
    L10_2.propertyId = A0_2
    L10_2.name = L3_2
    L11_2 = {}
    L11_2.indent = true
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = Utils
    L4_2 = L4_2.IsEntityOwner
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = GetPlayerFromIdentifier
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = Notify
        L6_2 = GetSource
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        L7_2 = _U
        L8_2 = "bills_repossessed"
        L7_2 = L7_2(L8_2)
        L8_2 = "error"
        L5_2(L6_2, L7_2, L8_2)
      else
        L5_2 = Properties
        L5_2 = L5_2.SaveLostProperty
        L6_2 = L2_2
        L7_2 = "bills"
        L8_2 = L3_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
    L4_2 = true
    return L4_2
  end
  L2_2 = A1_2.billsLocked
  if not L2_2 then
    A1_2.billsLocked = true
    L2_2 = A1_2.name
    if not L2_2 then
      L2_2 = A1_2.address
    end
    L3_2 = Webhook
    L4_2 = _U
    L5_2 = "webhook_action"
    L6_2 = "Server"
    L7_2 = "Property Locked - Unpaid Bills"
    L8_2 = json
    L8_2 = L8_2.encode
    L9_2 = {}
    L9_2.propertyId = A0_2
    L9_2.name = L2_2
    L10_2 = {}
    L10_2.indent = true
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = true
    return L3_2
  end
  L2_2 = false
  return L2_2
end
L22_1 = Utilities
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.owner
    if L2_2 then
      L2_2 = Main
      L2_2 = L2_2.IsPropertyLoaded
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L1_2.bills
      if not L3_2 then
        L3_2 = Utilities
        L3_2 = L3_2.LoadBills
        L4_2 = A0_2
        L3_2(L4_2)
      end
      L3_2 = L1_2.owner
      L4_2 = Utils
      L4_2 = L4_2.ParseOwner
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = GetPlayerFromIdentifier
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      L6_2 = false
      L7_2 = false
      L8_2 = {}
      L9_2 = ipairs
      L10_2 = L0_1
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = Config
        L15_2 = L15_2.Bills
        L15_2 = L15_2.services
        if L15_2 then
          L15_2 = L15_2[L14_2]
        end
        L16_2 = L1_2.bills
        if L16_2 then
          L16_2 = L16_2[L14_2]
        end
        L17_2 = L15_2 or L17_2
        if L15_2 then
          L17_2 = L15_2.enable
        end
        if L17_2 and L16_2 then
          L17_2 = L16_2.connected
          if L17_2 then
            L17_2 = L8_1
            L18_2 = L14_2
            L17_2 = L17_2(L18_2)
            L18_2 = L16_2.lastCharge
            if L18_2 then
              L18_2 = os
              L18_2 = L18_2.time
              L18_2 = L18_2()
              L19_2 = L16_2.lastCharge
              L18_2 = L18_2 - L19_2
              if L18_2 then
                goto lbl_72
              end
            end
            L18_2 = L17_2
            ::lbl_72::
            L19_2 = L17_2 > 0 and L17_2 <= L18_2
            if not (L18_2 < 0) then
              if not (L17_2 > 0) then
                goto lbl_93
              end
              L20_2 = L17_2 * 10
              if not (L18_2 > L20_2) then
                goto lbl_93
              end
            end
            L20_2 = os
            L20_2 = L20_2.time
            L20_2 = L20_2()
            L16_2.lastCharge = L20_2
            L6_2 = true
            L8_2[L14_2] = true
            goto lbl_339
            ::lbl_93::
            if L19_2 and "electricity" == L14_2 then
              L20_2 = Config
              L20_2 = L20_2.Electricity
              if L20_2 then
                L20_2 = L20_2.mode
              end
              if "advanced" == L20_2 then
                L20_2 = L6_1
                L21_2 = A0_2
                L20_2(L21_2)
                L20_2 = os
                L20_2 = L20_2.time
                L20_2 = L20_2()
                L16_2.lastCharge = L20_2
                L6_2 = true
                L8_2[L14_2] = true
            end
            else
              if L19_2 and "electricity" == L14_2 then
                L20_2 = Generator
                if L20_2 then
                  L20_2 = L20_2.IsPowered
                  L21_2 = A0_2
                  L20_2 = L20_2(L21_2)
                end
                if L20_2 then
                  L20_2 = os
                  L20_2 = L20_2.time
                  L20_2 = L20_2()
                  L16_2.lastCharge = L20_2
                  L6_2 = true
                  L8_2[L14_2] = true
              end
              elseif L19_2 then
                L20_2 = L11_1
                L21_2 = L1_2
                L22_2 = L14_2
                L20_2 = L20_2(L21_2, L22_2)
                if L20_2 <= 0 then
                  L21_2 = os
                  L21_2 = L21_2.time
                  L21_2 = L21_2()
                  L16_2.lastCharge = L21_2
                  L6_2 = true
                  L8_2[L14_2] = true
                else
                  L21_2 = L4_2 or L21_2
                  if L4_2 then
                    L21_2 = L4_2.type
                  end
                  if "business" == L21_2 then
                    L21_2 = Business
                    L21_2 = L21_2.GetBusiness
                    L22_2 = L4_2.id
                    L21_2 = L21_2(L22_2)
                    if L21_2 then
                      L22_2 = Business
                      L22_2 = L22_2.RemoveMoney
                      L23_2 = L21_2
                      L24_2 = L20_2
                      L25_2 = "bill"
                      L26_2 = nil
                      L27_2 = "%s - %s"
                      L28_2 = L27_2
                      L27_2 = L27_2.format
                      L29_2 = L1_2.name
                      if not L29_2 then
                        L29_2 = L1_2.address
                        if not L29_2 then
                          L29_2 = A0_2
                        end
                      end
                      L30_2 = L15_2.label
                      if not L30_2 then
                        L30_2 = L14_2
                      end
                      L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2, L29_2, L30_2)
                      L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                      if L22_2 then
                        L22_2 = os
                        L22_2 = L22_2.time
                        L22_2 = L22_2()
                        L16_2.lastCharge = L22_2
                        L16_2.lastPaid = L22_2
                        L23_2 = L22_2 + L17_2
                        L16_2.dueAt = L23_2
                        L23_2 = BillsDb
                        L23_2 = L23_2.AddHistory
                        L24_2 = A0_2
                        L25_2 = L14_2
                        L26_2 = L20_2
                        L27_2 = L22_2
                        L23_2(L24_2, L25_2, L26_2, L27_2)
                    end
                    else
                      L22_2 = L16_2.amountOwed
                      if not L22_2 then
                        L22_2 = 0
                      end
                      L22_2 = L22_2 + L20_2
                      L16_2.amountOwed = L22_2
                      L22_2 = L16_2.dueAt
                      if not L22_2 then
                        L22_2 = os
                        L22_2 = L22_2.time
                        L22_2 = L22_2()
                        L22_2 = L22_2 + L17_2
                      end
                      L16_2.dueAt = L22_2
                      L22_2 = os
                      L22_2 = L22_2.time
                      L22_2 = L22_2()
                      L16_2.lastCharge = L22_2
                      if L21_2 then
                        L22_2 = Business
                        L22_2 = L22_2.NotifyBosses
                        L23_2 = L21_2
                        L24_2 = _U
                        L25_2 = "business_bill_missed"
                        L26_2 = L15_2.label
                        if not L26_2 then
                          L26_2 = L14_2
                        end
                        L27_2 = Utils
                        L27_2 = L27_2.GroupDigits
                        L28_2 = L20_2
                        L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2)
                        L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                        L25_2 = "error"
                        L22_2(L23_2, L24_2, L25_2)
                      end
                    end
                    L6_2 = true
                    L7_2 = true
                    L8_2[L14_2] = true
                  else
                    L21_2 = Config
                    L21_2 = L21_2.Bills
                    L21_2 = L21_2.paymentMode
                    if "manual" ~= L21_2 then
                      L21_2 = Utils
                      L21_2 = L21_2.IsEntityOwner
                      L22_2 = L3_2
                      L21_2 = L21_2(L22_2)
                      if not L21_2 then
                        goto lbl_275
                      end
                    end
                    L21_2 = L16_2.amountOwed
                    if not L21_2 then
                      L21_2 = 0
                    end
                    L21_2 = L21_2 + L20_2
                    L16_2.amountOwed = L21_2
                    L21_2 = L16_2.dueAt
                    if not L21_2 then
                      L21_2 = os
                      L21_2 = L21_2.time
                      L21_2 = L21_2()
                      L21_2 = L21_2 + L17_2
                    end
                    L16_2.dueAt = L21_2
                    L21_2 = os
                    L21_2 = L21_2.time
                    L21_2 = L21_2()
                    L16_2.lastCharge = L21_2
                    L6_2 = true
                    L7_2 = true
                    L8_2[L14_2] = true
                    goto lbl_339
                    ::lbl_275::
                    L21_2 = PayBill
                    L22_2 = L3_2
                    L23_2 = L20_2
                    L21_2 = L21_2(L22_2, L23_2)
                    if L21_2 then
                      L21_2 = os
                      L21_2 = L21_2.time
                      L21_2 = L21_2()
                      L16_2.lastCharge = L21_2
                      L16_2.lastPaid = L21_2
                      L22_2 = L21_2 + L17_2
                      L16_2.dueAt = L22_2
                      L22_2 = BillsDb
                      L22_2 = L22_2.AddHistory
                      L23_2 = A0_2
                      L24_2 = L14_2
                      L25_2 = L20_2
                      L26_2 = L21_2
                      L22_2(L23_2, L24_2, L25_2, L26_2)
                      if L5_2 then
                        L22_2 = Notify
                        L23_2 = GetSource
                        L24_2 = L5_2
                        L23_2 = L23_2(L24_2)
                        L24_2 = _U
                        L25_2 = "bill_charged"
                        L26_2 = L15_2.label
                        if not L26_2 then
                          L26_2 = L14_2
                        end
                        L27_2 = Utils
                        L27_2 = L27_2.GroupDigits
                        L28_2 = L20_2
                        L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2)
                        L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                        L25_2 = "inform"
                        L22_2(L23_2, L24_2, L25_2)
                      end
                    else
                      L21_2 = L16_2.amountOwed
                      if not L21_2 then
                        L21_2 = 0
                      end
                      L21_2 = L21_2 + L20_2
                      L16_2.amountOwed = L21_2
                      L21_2 = L16_2.dueAt
                      if not L21_2 then
                        L21_2 = os
                        L21_2 = L21_2.time
                        L21_2 = L21_2()
                        L21_2 = L21_2 + L17_2
                      end
                      L16_2.dueAt = L21_2
                      L21_2 = os
                      L21_2 = L21_2.time
                      L21_2 = L21_2()
                      L16_2.lastCharge = L21_2
                    end
                    L6_2 = true
                    L7_2 = true
                    L8_2[L14_2] = true
                  end
                end
              end
            end
          end
        end
        ::lbl_339::
      end
      L9_2 = false
      L10_2 = type
      L11_2 = L1_2.bills
      L10_2 = L10_2(L11_2)
      if "table" == L10_2 then
        L10_2 = pairs
        L11_2 = L1_2.bills
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
        for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
          if "rent" ~= L14_2 then
            L16_2 = L5_1
            L17_2 = L15_2
            L16_2 = L16_2(L17_2)
            if L16_2 then
              L9_2 = true
              break
            end
          end
        end
      end
      if L9_2 then
        L10_2 = L21_1
        L11_2 = A0_2
        L12_2 = L1_2
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          L6_2 = true
          L7_2 = true
        end
      end
      if L6_2 then
        L10_2 = Main
        L10_2 = L10_2.GetProperty
        L11_2 = A0_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = L10_2.bills
        end
        if L10_2 then
          L10_2 = pairs
          L11_2 = L8_2
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
          for L14_2 in L10_2, L11_2, L12_2, L13_2 do
            L15_2 = Main
            L15_2 = L15_2.GetProperty
            L16_2 = A0_2
            L15_2 = L15_2(L16_2)
            if L15_2 then
              L15_2 = L15_2.bills
              if L15_2 then
                L15_2 = L15_2[L14_2]
              end
            end
            if L15_2 then
              L16_2 = BillsDb
              L16_2 = L16_2.UpsertBill
              L17_2 = A0_2
              L18_2 = L14_2
              L19_2 = L15_2
              L16_2(L17_2, L18_2, L19_2)
            end
          end
        end
        L10_2 = Main
        L10_2 = L10_2.ClearExportCache
        L11_2 = A0_2
        L10_2(L11_2)
      end
      if L7_2 then
        L10_2 = L17_1
        L11_2 = A0_2
        L10_2(L11_2)
        L10_2 = L16_1
        L11_2 = A0_2
        L10_2(L11_2)
      end
      if not L2_2 then
        L10_2 = Main
        L10_2 = L10_2.IsPropertyLoaded
        L11_2 = A0_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = Main
          L10_2 = L10_2.ScheduleEviction
          L11_2 = A0_2
          L10_2(L11_2)
        end
      end
    end
  end
end
L22_1.ChargeBills = L23_1
L22_1 = 25
L23_1 = 0
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 3600000
  L1_2 = ipairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Config
    L7_2 = L7_2.Bills
    L7_2 = L7_2.services
    if L7_2 then
      L7_2 = L7_2[L6_2]
    end
    L8_2 = L7_2 or L8_2
    if L7_2 then
      L8_2 = L7_2.enable
    end
    if L8_2 then
      L8_2 = type
      L9_2 = L7_2.interval
      L8_2 = L8_2(L9_2)
      if "number" == L8_2 then
        L8_2 = L7_2.interval
        if L8_2 > 0 then
          L8_2 = math
          L8_2 = L8_2.min
          L9_2 = L0_2
          L10_2 = L7_2.interval
          L8_2 = L8_2(L9_2, L10_2)
          L0_2 = L8_2
        end
      end
    end
  end
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    repeat
      L0_3 = Wait
      L1_3 = 100
      L0_3(L1_3)
      L0_3 = Main
      L0_3 = L0_3.ready
    until L0_3
    while true do
      L0_3 = {}
      L1_3 = pairs
      L2_3 = Main
      L2_3 = L2_3.GetProperties
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3()
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      for L5_3 in L1_3, L2_3, L3_3, L4_3 do
        L6_3 = Utilities
        L6_3 = L6_3.IsBilled
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = #L0_3
          L6_3 = L6_3 + 1
          L0_3[L6_3] = L5_3
        end
      end
      L1_3 = ipairs
      L2_3 = L0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = Utilities
        L7_3 = L7_3.ChargeBills
        L8_3 = L6_3
        L7_3(L8_3)
        L7_3 = L22_1
        L7_3 = L5_3 % L7_3
        if 0 == L7_3 then
          L7_3 = Wait
          L8_3 = 0
          L7_3(L8_3)
        end
      end
      L1_3 = os
      L1_3 = L1_3.time
      L1_3 = L1_3()
      L2_3 = L23_1
      L1_3 = L1_3 - L2_3
      L2_3 = 3600
      if L1_3 >= L2_3 then
        L1_3 = os
        L1_3 = L1_3.time
        L1_3 = L1_3()
        L23_1 = L1_3
        L1_3 = BillsDb
        L1_3 = L1_3.PruneHistory
        L2_3 = Config
        L2_3 = L2_3.Bills
        L2_3 = L2_3.historyDays
        L1_3(L2_3)
      end
      L1_3 = Wait
      L2_3 = L0_2
      L1_3(L2_3)
    end
  end
  L1_2(L2_2)
end
L25_1 = Utilities
function L26_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Bills
  L0_2 = L0_2.enable
  if not L0_2 then
    return
  end
  L0_2 = L24_1
  L0_2()
end
L25_1.StartLoop = L26_1
L25_1 = RegisterCallback
L26_1 = "tk_housing:getBills"
function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_16::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Permissions
    L4_2 = L4_2.IsOwnerOrManager
    L5_2 = L3_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_32
    end
  end
  L4_2 = A1_2
  L5_2 = nil
  L4_2(L5_2)
  do return end
  ::lbl_32::
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = 0
  L7_2 = ipairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L4_2.bills
    if L13_2 then
      L13_2 = L13_2[L12_2]
    end
    if L13_2 then
      L14_2 = Config
      L14_2 = L14_2.Bills
      L14_2 = L14_2.services
      if L14_2 then
        L14_2 = L14_2[L12_2]
      end
      L15_2 = L14_2 or L15_2
      if L14_2 then
        L15_2 = L14_2.label
      end
      if not L15_2 then
        L15_2 = L12_2
      end
      L16_2 = nil
      L17_2 = L13_2.connected
      if not L17_2 then
        L16_2 = "disconnected"
      else
        L17_2 = L5_1
        L18_2 = L13_2
        L17_2 = L17_2(L18_2)
        if L17_2 then
          L16_2 = "overdue"
        else
          L16_2 = "active"
        end
      end
      L17_2 = L14_2 or L17_2
      if L14_2 then
        L17_2 = L14_2.uses
      end
      if nil ~= L17_2 then
        L17_2 = true
        if L17_2 then
          goto lbl_88
        end
      end
      L17_2 = false
      ::lbl_88::
      L18_2 = "electricity" == L12_2
      L19_2 = nil
      if L17_2 then
        L20_2 = {}
        L19_2 = L20_2
        L20_2 = pairs
        L21_2 = L14_2.uses
        L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
        for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
          L26_2 = #L19_2
          L26_2 = L26_2 + 1
          L27_2 = {}
          L29_2 = L24_2
          L28_2 = L24_2.sub
          L30_2 = 1
          L31_2 = 1
          L28_2 = L28_2(L29_2, L30_2, L31_2)
          L29_2 = L28_2
          L28_2 = L28_2.upper
          L28_2 = L28_2(L29_2)
          L30_2 = L24_2
          L29_2 = L24_2.sub
          L31_2 = 2
          L29_2 = L29_2(L30_2, L31_2)
          L28_2 = L28_2 .. L29_2
          L27_2.label = L28_2
          L27_2.cost = L25_2
          L19_2[L26_2] = L27_2
        end
      end
      L20_2 = #L5_2
      L20_2 = L20_2 + 1
      L21_2 = {}
      L21_2.service = L12_2
      L21_2.label = L15_2
      L22_2 = L13_2.connected
      L21_2.connected = L22_2
      L22_2 = L13_2.amountOwed
      if not L22_2 then
        L22_2 = 0
      end
      L21_2.amountOwed = L22_2
      L22_2 = L13_2.lastPaid
      L21_2.lastPaid = L22_2
      L22_2 = L13_2.dueAt
      L21_2.dueAt = L22_2
      L21_2.status = L16_2
      if L18_2 then
        L22_2 = Config
        L22_2 = L22_2.Electricity
        L22_2 = L22_2.pricePerKwh
        if L22_2 then
          goto lbl_160
        end
      end
      L22_2 = L11_1
      L23_2 = L4_2
      L24_2 = L12_2
      L22_2 = L22_2(L23_2, L24_2)
      ::lbl_160::
      L21_2.rate = L22_2
      if L18_2 then
        L22_2 = "kwh"
        if L22_2 then
          goto lbl_172
        end
      end
      L22_2 = L14_2 or L22_2
      if L14_2 then
        L22_2 = L14_2.costModel
      end
      if not L22_2 then
        L22_2 = "flat"
      end
      ::lbl_172::
      L21_2.costModel = L22_2
      L22_2 = L18_2 or L22_2
      if not L18_2 then
        L22_2 = L17_2
      end
      L21_2.usageBased = L22_2
      if L18_2 then
        L22_2 = "kWh"
        if L22_2 then
          goto lbl_185
        end
      end
      L22_2 = L10_1
      L23_2 = L12_2
      L22_2 = L22_2(L23_2)
      ::lbl_185::
      L21_2.intervalLabel = L22_2
      L21_2.perUse = L19_2
      L5_2[L20_2] = L21_2
      L20_2 = L13_2.amountOwed
      if not L20_2 then
        L20_2 = 0
      end
      L6_2 = L6_2 + L20_2
    end
  end
  L7_2 = nil
  L8_2 = L4_2.lastRentTime
  if L8_2 then
    L8_2 = L4_2.rent
    if not L8_2 then
      L8_2 = 0
    end
    if L8_2 > 0 then
      L8_2 = Utils
      L8_2 = L8_2.IsMotelType
      L9_2 = L4_2.propertyType
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = Utils
        L8_2 = L8_2.IsEntityOwner
        L9_2 = L4_2.owner
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          L8_2 = L4_2.bills
          if L8_2 then
            L8_2 = L8_2.rent
          end
          L9_2 = {}
          L10_2 = L4_2.rent
          L9_2.rate = L10_2
          L10_2 = L9_1
          L11_2 = Config
          L11_2 = L11_2.Rent
          L11_2 = L11_2.interval
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = ""
          end
          L9_2.intervalLabel = L10_2
          L10_2 = L8_2 or L10_2
          if L8_2 then
            L10_2 = L8_2.amountOwed
          end
          if not L10_2 then
            L10_2 = 0
          end
          L9_2.amountOwed = L10_2
          L10_2 = L4_2.lastRentTime
          L11_2 = math
          L11_2 = L11_2.floor
          L12_2 = Config
          L12_2 = L12_2.Rent
          L12_2 = L12_2.interval
          L12_2 = L12_2 / 1000
          L11_2 = L11_2(L12_2)
          L10_2 = L10_2 + L11_2
          L9_2.nextChargeAt = L10_2
          L10_2 = L8_2 or L10_2
          if L8_2 then
            L10_2 = L8_2.dueAt
          end
          L9_2.dueAt = L10_2
          L10_2 = L8_2 or L10_2
          if L8_2 then
            L10_2 = L8_2.dueAt
          end
          if L10_2 then
            L10_2 = L8_2.dueAt
            L11_2 = L3_1
            L11_2 = L11_2()
            L10_2 = L10_2 + L11_2
            if L10_2 then
              goto lbl_272
            end
          end
          L10_2 = nil
          ::lbl_272::
          L9_2.deadlineAt = L10_2
          L10_2 = L5_1
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = "overdue"
            if L10_2 then
              goto lbl_282
            end
          end
          L10_2 = "active"
          ::lbl_282::
          L9_2.status = L10_2
          L10_2 = Config
          L10_2 = L10_2.Bills
          L10_2 = L10_2.enable
          if L10_2 then
            L10_2 = Config
            L10_2 = L10_2.Rent
            L10_2 = L10_2.paymentMode
            if "manual" == L10_2 then
              L10_2 = "manual"
              if L10_2 then
                goto lbl_297
              end
            end
          end
          L10_2 = "automatic"
          ::lbl_297::
          L9_2.paymentMode = L10_2
          L10_2 = Config
          L10_2 = L10_2.Rent
          L10_2 = L10_2.onNonPayment
          L9_2.onNonPayment = L10_2
          L10_2 = L4_2.rentLocked
          if not L10_2 then
            L10_2 = false
          end
          L9_2.locked = L10_2
          L10_2 = L3_1
          L10_2 = L10_2()
          L9_2.gracePeriod = L10_2
          L7_2 = L9_2
        end
      end
    end
  end
  L8_2 = Electricity
  if L8_2 then
    L8_2 = Electricity
    L8_2 = L8_2.GetPropertyData
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_321
    end
  end
  L8_2 = nil
  ::lbl_321::
  if L8_2 then
    L8_2.canManage = true
  end
  L9_2 = A1_2
  L10_2 = {}
  L10_2.services = L5_2
  L10_2.electricity = L8_2
  L10_2.rent = L7_2
  L11_2 = L4_2.billsLocked
  if not L11_2 then
    L11_2 = false
  end
  L10_2.locked = L11_2
  L10_2.totalOwed = L6_2
  L11_2 = Config
  L11_2 = L11_2.Bills
  L11_2 = L11_2.paymentMode
  L10_2.paymentMode = L11_2
  L11_2 = Config
  L11_2 = L11_2.Bills
  L11_2 = L11_2.allowToggle
  L11_2 = false ~= L11_2
  L10_2.allowToggle = L11_2
  L11_2 = Config
  L11_2 = L11_2.Bills
  L11_2 = L11_2.onNonPayment
  L10_2.onNonPayment = L11_2
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = Config
  L12_2 = L12_2.Bills
  L12_2 = L12_2.gracePeriod
  L12_2 = L12_2 / 1000
  L11_2 = L11_2(L12_2)
  L10_2.gracePeriod = L11_2
  L9_2(L10_2)
end
L25_1(L26_1, L27_1)
L25_1 = RegisterCallback
L26_1 = "tk_housing:getBillHistory"
function L27_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
  if L4_2 then
    L5_2 = Permissions
    L5_2 = L5_2.IsOwnerOrManager
    L6_2 = L4_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_32
    end
  end
  L5_2 = A1_2
  L6_2 = nil
  L5_2(L6_2)
  do return end
  ::lbl_32::
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = A3_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_44
      A3_2 = L5_2 or A3_2
    end
  end
  A3_2 = 20
  ::lbl_44::
  if not (A3_2 >= 1) or not (A3_2 <= 100) then
    A3_2 = 20
  end
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = BillsDb
  L7_2 = L7_2.GetHistory
  L8_2 = A2_2
  L9_2 = A3_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2)
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = #L5_2
    L12_2 = L12_2 + 1
    L13_2 = {}
    L14_2 = L11_2.service
    L13_2.service = L14_2
    L14_2 = L11_2.amount
    L13_2.amount = L14_2
    L14_2 = L11_2.paid_at
    L13_2.paidAt = L14_2
    L5_2[L12_2] = L13_2
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L25_1(L26_1, L27_1)
L25_1 = RegisterNetEvent
L26_1 = "tk_housing:payBills"
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A0_2.propertyId
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  ::lbl_11::
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_23
    end
  end
  do return end
  ::lbl_23::
  L3_2 = GetPlayerFromId
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = Permissions
  L4_2 = L4_2.IsOwnerOrManager
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = Permissions
    L4_2 = L4_2.DenyCheater
    L5_2 = L1_2
    L6_2 = L3_2
    L7_2 = "payBills"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = Utilities
  L4_2 = L4_2.PayAll
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L25_1(L26_1, L27_1)
L25_1 = RegisterNetEvent
L26_1 = "tk_housing:payBill"
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.IsOwnerOrManager
  L6_2 = L4_2
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = Permissions
    L5_2 = L5_2.DenyCheater
    L6_2 = L1_2
    L7_2 = L4_2
    L8_2 = "payBill"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.LoadPropertyData
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.bills
  if L5_2 then
    L5_2 = L5_2[L3_2]
  end
  if not L5_2 then
    return
  end
  L5_2 = Utilities
  L5_2 = L5_2.PayService
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L25_1(L26_1, L27_1)
L25_1 = RegisterNetEvent
L26_1 = "tk_housing:toggleUtility"
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2 and L2_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "table" == L3_2 and L3_2
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = "table" == L4_2 and L4_2
  L5_2 = Config
  L5_2 = L5_2.Bills
  L5_2 = L5_2.allowToggle
  if false == L5_2 then
    return
  end
  L5_2 = type
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_47
    end
  end
  do return end
  ::lbl_47::
  L5_2 = type
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Bills
    L5_2 = L5_2.services
    if L5_2 then
      L5_2 = L5_2[L3_2]
      if L5_2 then
        L5_2 = L5_2.enable
      end
    end
    if L5_2 then
      goto lbl_64
    end
  end
  do return end
  ::lbl_64::
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "boolean" ~= L5_2 then
    return
  end
  L5_2 = GetPlayerFromId
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = Permissions
  L6_2 = L6_2.IsOwnerOrManager
  L7_2 = L5_2
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = Permissions
    L6_2 = L6_2.DenyCheater
    L7_2 = L1_2
    L8_2 = L5_2
    L9_2 = "toggleUtility"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = Main
  L6_2 = L6_2.LoadPropertyData
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = Utilities
  L6_2 = L6_2.SetConnected
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L25_1(L26_1, L27_1)
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.furniture
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = Main
      L10_2 = L10_2.GetFurnitureIndexById
      L11_2 = L9_2
      L12_2 = A1_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L10_2 or L11_2
      if L10_2 then
        L11_2 = L9_2[L10_2]
      end
      if L11_2 then
        L12_2 = Utils
        L12_2 = L12_2.GetEntryKindWithHandler
        L13_2 = L11_2
        L14_2 = "water"
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 == A2_2 then
          L12_2 = true
          return L12_2
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L26_1 = {}
L27_1 = 1000
L28_1 = RegisterNetEvent
L29_1 = "tk_housing:useWater"
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.GetPropertyAccess
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= A0_2 then
    return
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L26_1
  L5_2 = L5_2[L3_2]
  if L5_2 then
    L5_2 = L26_1
    L5_2 = L5_2[L3_2]
    L5_2 = L4_2 - L5_2
    L6_2 = L27_1
    if L5_2 < L6_2 then
      return
    end
  end
  L5_2 = L26_1
  L5_2[L3_2] = L4_2
  L5_2 = L25_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    return
  end
  L5_2 = Utilities
  L5_2 = L5_2.AddWaterUse
  L6_2 = A0_2
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
end
L28_1(L29_1, L30_1)
L28_1 = AddEventHandler
L29_1 = "playerDropped"
function L30_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L26_1
  L0_2[L1_2] = nil
end
L28_1(L29_1, L30_1)
