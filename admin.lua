local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = {}
Admin = L0_1
L0_1 = 64
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Webhook
  L3_2 = _U
  L4_2 = "webhook_cheater"
  L5_2 = Utils
  L5_2 = L5_2.GetIdentifiers
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.IsMotelType
  L2_2 = A0_2.propertyType
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2.owner
    if nil ~= L1_2 then
      L1_2 = A0_2.owner
      if "" ~= L1_2 then
        L1_2 = "motel"
        return L1_2
      end
    end
  end
  L1_2 = A0_2.owner
  if nil ~= L1_2 then
    L1_2 = A0_2.owner
    if "" ~= L1_2 then
      L1_2 = "owned"
      return L1_2
    end
  end
  L1_2 = A0_2.price
  if nil ~= L1_2 then
    L1_2 = "for_sale"
    return L1_2
  end
  L1_2 = A0_2.rent
  if nil ~= L1_2 then
    L1_2 = "for_rent"
    return L1_2
  end
  L1_2 = "locked"
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.doors
  if L1_2 then
    L1_2 = L1_2.house
    if L1_2 then
      L1_2 = L1_2[1]
    end
  end
  if not L1_2 then
    L1_2 = A0_2.doors
    if L1_2 then
      L1_2 = L1_2.garage
      if L1_2 then
        L1_2 = L1_2[1]
      end
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.coords
  end
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L4_2 = L2_2.x
  L3_2.x = L4_2
  L4_2 = L2_2.y
  L3_2.y = L4_2
  L4_2 = L2_2.z
  L3_2.z = L4_2
  L4_2 = L2_2.w
  L3_2.w = L4_2
  return L3_2
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetProperties
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.owner
    if nil ~= L9_2 and "" ~= L9_2 then
      L10_2 = L2_2[L9_2]
      if not L10_2 then
        L10_2 = Utils
        L10_2 = L10_2.IsEntityOwner
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L2_2[L9_2] = true
          L10_2 = #L1_2
          L10_2 = L10_2 + 1
          L1_2[L10_2] = L9_2
        end
      end
    end
  end
  L3_2 = GetCharNames
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = Main
  L5_2 = L5_2.GetProperties
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.owner
    if nil ~= L10_2 then
      L10_2 = L9_2.owner
      if "" ~= L10_2 then
        L10_2 = L9_2.owner
        if L10_2 then
          goto lbl_54
        end
      end
    end
    L10_2 = nil
    ::lbl_54::
    L11_2 = #L0_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L12_2.id = L8_2
    L13_2 = L9_2.name
    L12_2.name = L13_2
    L13_2 = L9_2.address
    L12_2.address = L13_2
    L13_2 = L9_2.propertyType
    L12_2.propertyType = L13_2
    L13_2 = L4_1
    L14_2 = L9_2
    L13_2 = L13_2(L14_2)
    L12_2.coords = L13_2
    L13_2 = L9_2.price
    L12_2.price = L13_2
    L13_2 = L9_2.rent
    L12_2.rent = L13_2
    L13_2 = L9_2.listingPrice
    L12_2.listingPrice = L13_2
    L12_2.owner = L10_2
    if L10_2 then
      L13_2 = L3_2[L10_2]
      if L13_2 then
        goto lbl_86
      end
      L13_2 = L9_2.ownerLabel
      if L13_2 then
        goto lbl_86
      end
    end
    L13_2 = nil
    ::lbl_86::
    L12_2.ownerName = L13_2
    if L10_2 then
      L13_2 = Utils
      L13_2 = L13_2.ParseOwner
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      L13_2 = L13_2.type
      if L13_2 then
        goto lbl_97
      end
    end
    L13_2 = nil
    ::lbl_97::
    L12_2.ownerKind = L13_2
    L13_2 = L2_1
    L14_2 = L9_2
    L13_2 = L13_2(L14_2)
    L12_2.status = L13_2
    L13_2 = L9_2.mortgage
    L13_2 = nil ~= L13_2
    L12_2.hasMortgage = L13_2
    L13_2 = L9_2.mortgageLocked
    L13_2 = true == L13_2
    L12_2.mortgageLocked = L13_2
    L13_2 = L9_2.billsLocked
    L13_2 = true == L13_2
    L12_2.billsLocked = L13_2
    L13_2 = L9_2.rentLocked
    L13_2 = true == L13_2
    L12_2.rentLocked = L13_2
    L13_2 = L9_2.security
    L13_2 = nil ~= L13_2
    L12_2.securityArmed = L13_2
    L13_2 = L9_2.security
    if L13_2 then
      L13_2 = L13_2.state
      if L13_2 then
        L13_2 = L13_2.triggered
      end
    end
    L13_2 = true == L13_2
    L12_2.alarmTriggered = L13_2
    L13_2 = L9_2.apartmentId
    L12_2.apartmentId = L13_2
    L13_2 = L9_2.houseInterior
    L12_2.houseInterior = L13_2
    L13_2 = L9_2.garageInterior
    L12_2.garageInterior = L13_2
    L13_2 = L9_2.maxStorages
    L12_2.maxStorages = L13_2
    L13_2 = L9_2.maxFurniture
    L12_2.maxFurniture = L13_2
    L13_2 = L3_1
    L14_2 = L9_2.permissions
    L13_2 = L13_2(L14_2)
    L12_2.keyholderCount = L13_2
    L13_2 = L9_2.image
    L12_2.image = L13_2
    L0_2[L11_2] = L12_2
  end
  return L0_2
end
L6_1 = Config
L6_1 = L6_1.Commands
L6_1 = L6_1.adminPanel
if L6_1 then
  L6_1 = Config
  L6_1 = L6_1.Commands
  L6_1 = L6_1.adminPanel
  if "" ~= L6_1 then
    L6_1 = RegisterCommand
    L7_1 = Config
    L7_1 = L7_1.Commands
    L7_1 = L7_1.adminPanel
    function L8_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2
      if 0 == A0_2 then
        return
      end
      L1_2 = IsAdmin
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = Notify
        L2_2 = A0_2
        L3_2 = _U
        L4_2 = "admin_no_permission"
        L3_2 = L3_2(L4_2)
        L4_2 = "error"
        L1_2(L2_2, L3_2, L4_2)
        return
      end
      L1_2 = TriggerClientEvent
      L2_2 = "tk_housing:openAdminPanel"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
    L9_1 = false
    L6_1(L7_1, L8_1, L9_1)
  end
end
L6_1 = RegisterCallback
L7_1 = "tk_housing:getAdminPropertyList"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = IsAdmin
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = {}
    L2_2(L3_2)
    return
  end
  L2_2 = A1_2
  L3_2 = L5_1
  L3_2 = L3_2()
  L2_2(L3_2)
end
L6_1(L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 or not A0_2 then
    L1_2 = {}
    A0_2 = L1_2
  end
  L1_2 = {}
  L2_2 = A0_2.furnish
  L2_2 = true == L2_2
  L1_2.furnish = L2_2
  L2_2 = A0_2.changeCode
  L2_2 = true == L2_2
  L1_2.changeCode = L2_2
  L2_2 = A0_2.lock
  L2_2 = true == L2_2
  L1_2.lock = L2_2
  L2_2 = A0_2.managePermissions
  L2_2 = true == L2_2
  L1_2.managePermissions = L2_2
  L2_2 = A0_2.manageSecurity
  L2_2 = true == L2_2
  L1_2.manageSecurity = L2_2
  L2_2 = A0_2.viewCamera
  L2_2 = true == L2_2
  L1_2.viewCamera = L2_2
  L2_2 = A0_2.sell
  L2_2 = true == L2_2
  L1_2.sell = L2_2
  L2_2 = A0_2.transfer
  L2_2 = true == L2_2
  L1_2.transfer = L2_2
  return L1_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^job:(.+):%d+$"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return L1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^job:(.+)$"
  return L2_2(L3_2, L4_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return L1_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_1
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.identifier = L6_2
    if L8_2 then
      L11_2 = Utils
      L11_2 = L11_2.GetJobLabel
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        goto lbl_36
      end
    end
    L11_2 = GetCharName
    L12_2 = L6_2
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = L6_2
    end
    ::lbl_36::
    L10_2.name = L11_2
    if L8_2 then
      L11_2 = L7_2.grade
      if L11_2 then
        goto lbl_46
      end
      L11_2 = 0
      if L11_2 then
        goto lbl_46
      end
    end
    L11_2 = nil
    ::lbl_46::
    L10_2.grade = L11_2
    L11_2 = L6_1
    L12_2 = L7_2
    L11_2 = L11_2(L12_2)
    L10_2.permissions = L11_2
    L1_2[L9_2] = L10_2
  end
  return L1_2
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = type
  L2_2 = A0_2.bills
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = false
  L4_2 = pairs
  L5_2 = A0_2.bills
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Utilities
    L10_2 = L10_2.IsBillOverdue
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L3_2 = true
    end
    L11_2 = L9_2.amountOwed
    if not L11_2 then
      L11_2 = 0
    end
    L2_2 = L2_2 + L11_2
    L11_2 = #L1_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L12_2.service = L8_2
    L13_2 = L9_2.amountOwed
    if not L13_2 then
      L13_2 = 0
    end
    L12_2.owed = L13_2
    L13_2 = L9_2.connected
    L13_2 = true == L13_2
    L12_2.connected = L13_2
    L12_2.overdue = L10_2
    L1_2[L11_2] = L12_2
  end
  L4_2 = {}
  L4_2.owed = L2_2
  L4_2.overdue = L3_2
  L4_2.services = L1_2
  return L4_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A1_2.security
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Security
  L2_2 = L2_2.Get
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = type
  L4_2 = L2_2.alarm
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = L2_2.alarm
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = {}
  ::lbl_22::
  L4_2 = nil
  L5_2 = L2_2.state
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = L5_2.triggered
  end
  if L6_2 then
    L6_2 = L5_2.lastTriggered
    if L6_2 then
      L6_2 = {}
      L7_2 = L5_2.lastTriggered
      L6_2.at = L7_2
      L7_2 = L5_2.lastType
      L6_2.type = L7_2
      L7_2 = L5_2.lastBy
      if L7_2 then
        L7_2 = GetCharName
        L8_2 = L5_2.lastBy
        L7_2 = L7_2(L8_2)
        if L7_2 then
          goto lbl_50
        end
        L7_2 = L5_2.lastBy
        if L7_2 then
          goto lbl_50
        end
      end
      L7_2 = nil
      ::lbl_50::
      L6_2.by = L7_2
      L4_2 = L6_2
    end
  end
  L6_2 = {}
  L7_2 = L2_2.camera
  if L7_2 then
    L7_2 = L7_2.installed
  end
  L7_2 = true == L7_2
  L6_2.cameraInstalled = L7_2
  L7_2 = {}
  L8_2 = L3_2.installed
  L8_2 = true == L8_2
  L7_2.installed = L8_2
  L8_2 = L3_2.installed
  if L8_2 then
    L8_2 = L3_2.tier
    if L8_2 then
      goto lbl_78
    end
  end
  L8_2 = nil
  ::lbl_78::
  L7_2.tier = L8_2
  L8_2 = L3_2.armed
  L8_2 = true == L8_2
  L7_2.armed = L8_2
  L8_2 = L3_2.siren
  L8_2 = true == L8_2
  L7_2.siren = L8_2
  L6_2.alarm = L7_2
  L6_2.lastTrigger = L4_2
  return L6_2
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.mortgage
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2 = L1_2.balance
  L2_2.balance = L3_2
  L3_2 = L1_2.lastPaymentTime
  if not L3_2 then
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L1_2.interval
  L5_2 = L5_2 / 1000
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 + L4_2
  L2_2.nextDue = L3_2
  L3_2 = Config
  L3_2 = L3_2.Mortgage
  if L3_2 then
    L3_2 = L3_2.paymentMode
  end
  L2_2.paymentMode = L3_2
  return L2_2
end
L12_1 = RegisterCallback
L13_1 = "tk_housing:getAdminPropertyDetail"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = IsAdmin
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = L3_2.owner
  if nil ~= L4_2 then
    L4_2 = L3_2.owner
    if "" ~= L4_2 then
      L4_2 = L3_2.owner
      if L4_2 then
        goto lbl_43
      end
    end
  end
  L4_2 = nil
  ::lbl_43::
  if L4_2 then
    L5_2 = Utils
    L5_2 = L5_2.ParseOwner
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.type
    if L5_2 then
      goto lbl_53
    end
  end
  L5_2 = nil
  ::lbl_53::
  L6_2 = nil
  if L4_2 and "player" == L5_2 then
    L7_2 = GetPlayerFromIdentifier
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = nil ~= L7_2
  end
  L7_2 = {}
  L8_2 = L8_1
  L9_2 = L3_2.permissions
  L8_2 = L8_2(L9_2)
  L7_2.keyholders = L8_2
  L7_2.ownerOnline = L6_2
  L7_2.ownerKind = L5_2
  L8_2 = L3_2.ownerLabel
  L7_2.ownerLabel = L8_2
  L8_2 = L3_2.lastRentTime
  L7_2.lastActivity = L8_2
  L8_2 = L9_1
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2.bills = L8_2
  L8_2 = L3_2.utilities
  L7_2.utilities = L8_2
  L8_2 = L10_1
  L9_2 = A2_2
  L10_2 = L3_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.security = L8_2
  L8_2 = L11_1
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2.mortgage = L8_2
  L8_2 = {}
  L9_2 = L3_2.doors
  if L9_2 then
    L9_2 = L9_2.house
  end
  if L9_2 then
    L9_2 = L3_2.doors
    L9_2 = L9_2.house
    L9_2 = #L9_2
    if L9_2 then
      goto lbl_106
    end
  end
  L9_2 = 0
  ::lbl_106::
  L8_2.house = L9_2
  L9_2 = L3_2.doors
  if L9_2 then
    L9_2 = L9_2.garage
  end
  if L9_2 then
    L9_2 = L3_2.doors
    L9_2 = L9_2.garage
    L9_2 = #L9_2
    if L9_2 then
      goto lbl_119
    end
  end
  L9_2 = 0
  ::lbl_119::
  L8_2.garage = L9_2
  L7_2.doors = L8_2
  L8_2 = VehicleDb
  L8_2 = L8_2.CountForProperty
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L7_2.vehicleCount = L8_2
  L8_2 = FurnitureDb
  L8_2 = L8_2.CountForProperty
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L7_2.furnitureCount = L8_2
  L8_2 = A1_2
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = Main
  L8_2 = L8_2.ScheduleEviction
  L9_2 = A2_2
  L8_2(L9_2)
end
L12_1(L13_1, L14_1)
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return L2_2
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if "interior" == A1_2 then
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L11_2 = L8_2.label
      if not L11_2 then
        L11_2 = L7_2
      end
      L10_2.value = L11_2
      L11_2 = L8_2.label
      if not L11_2 then
        L11_2 = L7_2
      end
      L10_2.label = L11_2
      L11_2 = L8_2.coords
      L10_2.coords = L11_2
      L11_2 = L8_2.centroid
      L10_2.centroid = L11_2
      L11_2 = L8_2.model
      L10_2.model = L11_2
      L11_2 = L8_2.propertyType
      L10_2.propertyType = L11_2
      L11_2 = L8_2.second
      L10_2.second = L11_2
      L2_2[L9_2] = L10_2
    else
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L11_2 = L8_2.label
      if not L11_2 then
        L11_2 = L7_2
      end
      L10_2.value = L11_2
      L11_2 = L8_2.label
      if not L11_2 then
        L11_2 = L7_2
      end
      L10_2.label = L11_2
      L11_2 = L8_2.coords
      L10_2.coords = L11_2
      L10_2.type = A1_2
      L11_2 = L8_2.exitIndex
      L10_2.exitIndex = L11_2
      L2_2[L9_2] = L10_2
    end
  end
  return L2_2
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetProperties
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.apartmentId
    if L8_2 == A0_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L14_1 = RegisterCallback
L15_1 = "tk_housing:getAdminPropertyEditData"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = IsAdmin
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = {}
  L4_2.propertyId = A2_2
  L5_2 = L3_2.name
  L4_2.houseName = L5_2
  L5_2 = L3_2.propertyType
  L4_2.propertyType = L5_2
  L5_2 = L3_2.price
  L4_2.price = L5_2
  L5_2 = L3_2.rent
  L4_2.rent = L5_2
  L5_2 = L13_1
  L6_2 = L3_2.apartmentId
  L5_2 = L5_2(L6_2)
  L4_2.apartmentCount = L5_2
  L5_2 = L3_2.maxStorages
  L4_2.maxStorages = L5_2
  L5_2 = L3_2.maxFurniture
  L4_2.maxFurniture = L5_2
  L5_2 = L3_2.image
  L4_2.image = L5_2
  L5_2 = L3_2.mortgageTerms
  L4_2.mortgageTerms = L5_2
  L5_2 = L3_2.houseInterior
  L4_2.selectedHouseInterior = L5_2
  L5_2 = L3_2.garageInterior
  L4_2.selectedGarageInterior = L5_2
  L5_2 = L12_1
  L6_2 = L3_2.doors
  if L6_2 then
    L6_2 = L6_2.house
  end
  L7_2 = "house"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.houseEntrances = L5_2
  L5_2 = L12_1
  L6_2 = L3_2.doors
  if L6_2 then
    L6_2 = L6_2.garage
  end
  L7_2 = "garage"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.garageEntrances = L5_2
  L5_2 = L12_1
  L6_2 = L3_2.interior
  if L6_2 then
    L6_2 = L6_2.doors
  end
  L7_2 = "interior"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.interiorDoors = L5_2
  L5_2 = L3_2.yard
  if L5_2 then
    L5_2 = L5_2.points
  end
  L4_2.yardPoints = L5_2
  L5_2 = L3_2.yard
  if L5_2 then
    L5_2 = L5_2.height
  end
  L4_2.yardHeight = L5_2
  L5_2 = L3_2.interior
  if not L5_2 then
    L5_2 = {}
    L6_2 = {}
    L5_2.house = L6_2
    L6_2 = {}
    L5_2.garage = L6_2
  end
  L4_2.interiors = L5_2
  L5_2 = {}
  L4_2.doorLinks = L5_2
  L5_2 = L3_2.houseInterior
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.HouseInteriors
    L6_2 = L3_2.houseInterior
    L5_2 = L5_2[L6_2]
  end
  L6_2 = L3_2.garageInterior
  if L6_2 then
    L6_2 = Config
    L6_2 = L6_2.GarageInteriors
    L7_2 = L3_2.garageInterior
    L6_2 = L6_2[L7_2]
  end
  L7_2 = type
  L8_2 = L3_2.doorLinks
  L7_2 = L7_2(L8_2)
  if "table" == L7_2 and L5_2 and L6_2 then
    L7_2 = pairs
    L8_2 = L3_2.doorLinks
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L5_2.exits
      if L13_2 then
        L14_2 = L12_2.houseExitIndex
        L13_2 = L13_2[L14_2]
      end
      L14_2 = L6_2.exits
      if L14_2 then
        L15_2 = L12_2.garageExitIndex
        L14_2 = L14_2[L15_2]
      end
      if L13_2 and L14_2 then
        L15_2 = L4_2.doorLinks
        L16_2 = L4_2.doorLinks
        L16_2 = #L16_2
        L16_2 = L16_2 + 1
        L17_2 = {}
        L18_2 = L13_2.label
        L17_2.houseDoor = L18_2
        L18_2 = L14_2.label
        L17_2.garageDoor = L18_2
        L15_2[L16_2] = L17_2
      end
    end
  end
  L7_2 = A1_2
  L8_2 = L4_2
  L7_2(L8_2)
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%s+"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%s+$"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if "" == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.sub
  L4_2 = 1
  L5_2 = L0_1
  return L2_2(L3_2, L4_2, L5_2)
end
L15_1 = RegisterNetEvent
L16_1 = "tk_housing:adminEditProperty"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin edit property without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = A0_2.propertyId
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_31
    end
  end
  do return end
  ::lbl_31::
  L3_2 = {}
  L4_2 = A0_2.price
  if nil ~= L4_2 then
    L4_2 = type
    L5_2 = A0_2.price
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = A0_2.price
      if not (L4_2 < 0) then
        goto lbl_45
      end
    end
    do return end
    ::lbl_45::
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = A0_2.price
    L4_2 = L4_2(L5_2)
    L3_2.price = L4_2
  end
  L4_2 = A0_2.name
  if nil ~= L4_2 then
    L4_2 = L14_1
    L5_2 = A0_2.name
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = false
    end
    L3_2.name = L4_2
  end
  L4_2 = A0_2.address
  if nil ~= L4_2 then
    L4_2 = L14_1
    L5_2 = A0_2.address
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      return
    end
    L3_2.address = L4_2
  end
  L4_2 = A0_2.propertyType
  if nil ~= L4_2 then
    L4_2 = type
    L5_2 = A0_2.propertyType
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.GetPropertyType
      L5_2 = A0_2.propertyType
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.id
      L5_2 = A0_2.propertyType
      if L4_2 == L5_2 then
        L4_2 = A0_2.propertyType
        L3_2.propertyType = L4_2
      end
    end
  end
  L4_2 = A0_2.rent
  if false == L4_2 then
    L3_2.rent = false
  else
    L4_2 = A0_2.rent
    if nil ~= L4_2 then
      L4_2 = type
      L5_2 = A0_2.rent
      L4_2 = L4_2(L5_2)
      if "number" == L4_2 then
        L4_2 = A0_2.rent
        if not (L4_2 < 0) then
          goto lbl_105
        end
      end
      do return end
      ::lbl_105::
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = A0_2.rent
      L4_2 = L4_2(L5_2)
      L3_2.rent = L4_2
    end
  end
  L4_2 = A0_2.maxStorages
  if false == L4_2 then
    L3_2.maxStorages = false
  else
    L4_2 = A0_2.maxStorages
    if nil ~= L4_2 then
      L4_2 = type
      L5_2 = A0_2.maxStorages
      L4_2 = L4_2(L5_2)
      if "number" == L4_2 then
        L4_2 = A0_2.maxStorages
        if not (L4_2 < 0) then
          goto lbl_127
        end
      end
      do return end
      ::lbl_127::
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = A0_2.maxStorages
      L4_2 = L4_2(L5_2)
      L3_2.maxStorages = L4_2
    end
  end
  L4_2 = A0_2.maxFurniture
  if false == L4_2 then
    L3_2.maxFurniture = false
  else
    L4_2 = A0_2.maxFurniture
    if nil ~= L4_2 then
      L4_2 = type
      L5_2 = A0_2.maxFurniture
      L4_2 = L4_2(L5_2)
      if "number" == L4_2 then
        L4_2 = A0_2.maxFurniture
        if not (L4_2 < 0) then
          goto lbl_149
        end
      end
      do return end
      ::lbl_149::
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = A0_2.maxFurniture
      L4_2 = L4_2(L5_2)
      L3_2.maxFurniture = L4_2
    end
  end
  L4_2 = A0_2.mortgageTerms
  if false == L4_2 then
    L3_2.mortgageTerms = false
  else
    L4_2 = A0_2.mortgageTerms
    if nil ~= L4_2 then
      L4_2 = NormalizeMortgageTerms
      L5_2 = A0_2.mortgageTerms
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L3_2.mortgageTerms = L4_2
      end
    end
  end
  L4_2 = next
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = Properties
  L4_2 = L4_2.AdminSetFields
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = Notify
    L5_2 = L1_2
    L6_2 = _U
    L7_2 = "action_failed"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "admin_property_updated"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Admin Edit Property"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.propertyId = L2_2
  L10_2.fields = L3_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L15_1(L16_1, L17_1)
function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = exports
  L4_2 = L4_2.tk_housing
  L5_2 = L4_2
  L4_2 = L4_2.setPropertyOwner
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2.owner
  if L4_2 ~= A3_2 then
    L4_2 = Notify
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "action_failed"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = true
  return L4_2
end
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminSetOwner"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin set property owner without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = A0_2.propertyId
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_31
    end
  end
  do return end
  ::lbl_31::
  L3_2 = A0_2.owner
  L4_2 = A0_2.ownerType
  if not L4_2 then
    L4_2 = "player"
  end
  if "player" ~= L4_2 and "business" ~= L4_2 and "job" ~= L4_2 then
    return
  end
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = "player" == L4_2 and (nil == L3_2 or "" == L3_2)
  if not L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.IsMotelType
    L8_2 = L5_2.propertyType
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = Notify
      L8_2 = L1_2
      L9_2 = _U
      L10_2 = "admin_motel_no_transfer"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  if "business" == L4_2 then
    L7_2 = Business
    if not L7_2 then
      return
    end
    L7_2 = type
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    if "number" == L7_2 then
      L7_2 = Business
      L7_2 = L7_2.GetBusiness
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_89
      end
    end
    do return end
    ::lbl_89::
    L7_2 = L5_2.mortgage
    if L7_2 then
      L7_2 = Notify
      L8_2 = L1_2
      L9_2 = _U
      L10_2 = "admin_mortgage_business_no_assign"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L7_2(L8_2, L9_2, L10_2)
      return
    end
    L7_2 = L15_1
    L8_2 = L1_2
    L9_2 = L5_2
    L10_2 = L2_2
    L11_2 = Utils
    L11_2 = L11_2.EntityOwner
    L12_2 = "business"
    L13_2 = L3_2
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    if not L7_2 then
      return
    end
    L7_2 = Notify
    L8_2 = L1_2
    L9_2 = _U
    L10_2 = "admin_owner_set_business"
    L9_2 = L9_2(L10_2)
    L10_2 = "success"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = Webhook
    L8_2 = _U
    L9_2 = "webhook_action"
    L10_2 = Utils
    L10_2 = L10_2.GetIdentifiers
    L11_2 = L1_2
    L10_2 = L10_2(L11_2)
    L11_2 = "Admin Set Property Owner"
    L12_2 = json
    L12_2 = L12_2.encode
    L13_2 = {}
    L13_2.propertyId = L2_2
    L13_2.ownerType = "business"
    L13_2.owner = L3_2
    L14_2 = {}
    L14_2.indent = true
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2)
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    return
  end
  if "job" == L4_2 then
    L7_2 = Config
    L7_2 = L7_2.JobOwnedProperties
    if L7_2 then
      L7_2 = L7_2.enabled
    end
    if not L7_2 then
      return
    end
    L7_2 = type
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    if "string" == L7_2 and "" ~= L3_2 then
      L7_2 = #L3_2
      if not (L7_2 > 40) then
        goto lbl_163
      end
    end
    do return end
    ::lbl_163::
    L7_2 = L5_2.mortgage
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.JobOwnedProperties
      L7_2 = L7_2.mortgage
      if not L7_2 then
        L7_2 = Notify
        L8_2 = L1_2
        L9_2 = _U
        L10_2 = "admin_mortgage_job_no_assign"
        L9_2 = L9_2(L10_2)
        L10_2 = "error"
        L7_2(L8_2, L9_2, L10_2)
        return
      end
    end
    L7_2 = L15_1
    L8_2 = L1_2
    L9_2 = L5_2
    L10_2 = L2_2
    L11_2 = Utils
    L11_2 = L11_2.EntityOwner
    L12_2 = "job"
    L14_2 = L3_2
    L13_2 = L3_2.lower
    L13_2, L14_2, L15_2 = L13_2(L14_2)
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    if not L7_2 then
      return
    end
    L7_2 = Notify
    L8_2 = L1_2
    L9_2 = _U
    L10_2 = "admin_owner_set_job"
    L9_2 = L9_2(L10_2)
    L10_2 = "success"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = Webhook
    L8_2 = _U
    L9_2 = "webhook_action"
    L10_2 = Utils
    L10_2 = L10_2.GetIdentifiers
    L11_2 = L1_2
    L10_2 = L10_2(L11_2)
    L11_2 = "Admin Set Property Owner"
    L12_2 = json
    L12_2 = L12_2.encode
    L13_2 = {}
    L13_2.propertyId = L2_2
    L13_2.ownerType = "job"
    L15_2 = L3_2
    L14_2 = L3_2.lower
    L14_2 = L14_2(L15_2)
    L13_2.owner = L14_2
    L14_2 = {}
    L14_2.indent = true
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2)
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    return
  end
  L7_2 = type
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  if "string" == L7_2 and "" ~= L3_2 then
    L8_2 = L3_2
    L7_2 = L3_2.match
    L9_2 = "^%d+$"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = GetPlayerFromId
      L8_2 = tonumber
      L9_2 = L3_2
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      if not L7_2 then
        L8_2 = Notify
        L9_2 = L1_2
        L10_2 = _U
        L11_2 = "admin_target_offline"
        L10_2 = L10_2(L11_2)
        L11_2 = "error"
        L8_2(L9_2, L10_2, L11_2)
        return
      end
      L8_2 = GetIdentifier
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L3_2 = L8_2
    end
    L7_2 = L15_1
    L8_2 = L1_2
    L9_2 = L5_2
    L10_2 = L2_2
    L11_2 = L3_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      return
    end
  elseif nil == L3_2 or "" == L3_2 then
    L7_2 = Properties
    L7_2 = L7_2.RemovePropertyOwner
    L8_2 = L2_2
    L7_2(L8_2)
  else
    return
  end
  L7_2 = Notify
  L8_2 = L1_2
  L9_2 = _U
  L10_2 = "admin_owner_set"
  L9_2 = L9_2(L10_2)
  L10_2 = "success"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Webhook
  L8_2 = _U
  L9_2 = "webhook_action"
  L10_2 = Utils
  L10_2 = L10_2.GetIdentifiers
  L11_2 = L1_2
  L10_2 = L10_2(L11_2)
  L11_2 = "Admin Set Property Owner"
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = {}
  L13_2.propertyId = L2_2
  L13_2.ownerType = L4_2
  L13_2.owner = L3_2
  L14_2 = {}
  L14_2.indent = true
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminSetListing"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin set listing without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = A0_2.propertyId
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_31
    end
  end
  do return end
  ::lbl_31::
  L3_2 = A0_2.listingPrice
  if nil ~= L3_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "number" ~= L4_2 or L3_2 < 0 then
      return
    end
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = Properties
  L4_2 = L4_2.AdminSetListing
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = Notify
    L5_2 = L1_2
    L6_2 = _U
    L7_2 = "action_failed"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "admin_property_updated"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Admin Set Listing"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.propertyId = L2_2
  L10_2.listingPrice = L3_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminClearMortgage"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin clear mortgage without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Main
    L2_2 = L2_2.GetProperty
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.mortgage
  if not L3_2 then
    return
  end
  L3_2 = PropertyDb
  L3_2 = L3_2.ClearMortgage
  L4_2 = A0_2
  L3_2(L4_2)
  L2_2.mortgage = nil
  L2_2.mortgageLocked = nil
  L3_2 = Main
  L3_2 = L3_2.ClearExportCache
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:updateMortgage"
  L5_2 = -1
  L6_2 = {}
  L6_2.propertyId = A0_2
  L6_2.mortgage = nil
  L6_2.locked = nil
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Notify
  L4_2 = L1_2
  L5_2 = _U
  L6_2 = "admin_mortgage_cleared"
  L5_2 = L5_2(L6_2)
  L6_2 = "success"
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Webhook
  L4_2 = _U
  L5_2 = "webhook_action"
  L6_2 = Utils
  L6_2 = L6_2.GetIdentifiers
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = "Admin Clear Mortgage"
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = {}
  L9_2.propertyId = A0_2
  L10_2 = {}
  L10_2.indent = true
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminClearBills"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin clear bills without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Main
    L2_2 = L2_2.GetProperty
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L2_2 = Main
  L2_2 = L2_2.LoadPropertyData
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = Utilities
  L2_2 = L2_2.AdminClearBills
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Main
  L3_2 = L3_2.ScheduleEviction
  L4_2 = A0_2
  L3_2(L4_2)
  if not L2_2 then
    return
  end
  L3_2 = Notify
  L4_2 = L1_2
  L5_2 = _U
  L6_2 = "admin_bills_cleared"
  L5_2 = L5_2(L6_2)
  L6_2 = "success"
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Webhook
  L4_2 = _U
  L5_2 = "webhook_action"
  L6_2 = Utils
  L6_2 = L6_2.GetIdentifiers
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = "Admin Clear Bills"
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = {}
  L9_2.propertyId = A0_2
  L10_2 = {}
  L10_2.indent = true
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminResetSecurity"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin reset security without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Main
    L2_2 = L2_2.GetProperty
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = type
  L4_2 = L2_2.security
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = Properties
  L3_2 = L3_2.SaveConfigProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if A0_2 < 0 then
    L3_2 = Utils
    L3_2 = L3_2.Warn
    L4_2 = "Refused an admin security reset, the config property was not saved"
    L5_2 = A0_2
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Notify
    L4_2 = L1_2
    L5_2 = _U
    L6_2 = "action_failed"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = Security
  L3_2 = L3_2.Get
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = type
  L5_2 = L3_2.alarm
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = L3_2.alarm
    L4_2.armed = false
  end
  L4_2 = L3_2.state
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.state = L4_2
  L4_2 = L3_2.state
  L4_2.triggered = false
  L4_2 = L3_2.state
  L4_2.lastTriggered = nil
  L4_2 = L3_2.state
  L4_2.lastType = nil
  L4_2 = L3_2.state
  L4_2.lastBy = nil
  L4_2 = PropertyDb
  L4_2 = L4_2.UpdateSecurity
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = TriggerClientEvent
  L5_2 = "tk_housing:securityUpdate"
  L6_2 = -1
  L7_2 = {}
  L7_2.propertyId = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "admin_alarm_reset"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Admin Reset Security"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.propertyId = A0_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminDeleteProperty"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin delete property without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Main
    L2_2 = L2_2.GetProperty
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L2_2 = Properties
  L2_2 = L2_2.RemoveProperty
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = Notify
  L3_2 = L1_2
  L4_2 = _U
  L5_2 = "admin_property_deleted"
  L4_2 = L4_2(L5_2)
  L5_2 = "success"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Webhook
  L3_2 = _U
  L4_2 = "webhook_action"
  L5_2 = Utils
  L5_2 = L5_2.GetIdentifiers
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = "Admin Delete Property"
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = {}
  L8_2.propertyId = A0_2
  L9_2 = {}
  L9_2.indent = true
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBulkDeleteProperties"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin bulk delete properties without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = #A0_2
    if 0 ~= L2_2 then
      L2_2 = #A0_2
      L3_2 = 200
      if not (L2_2 > L3_2) then
        goto lbl_25
      end
    end
  end
  do return end
  ::lbl_25::
  L2_2 = 0
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "number" == L10_2 then
      L10_2 = Main
      L10_2 = L10_2.GetProperty
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = Properties
        L10_2 = L10_2.RemoveProperty
        L11_2 = L9_2
        L10_2(L11_2)
        L2_2 = L2_2 + 1
    end
    else
      L3_2 = L3_2 + 1
    end
  end
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "admin_properties_deleted"
  L8_2 = L2_2
  L9_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "tk_housing:adminBulkDeleteResult"
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Admin Bulk Delete Properties"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.ids = A0_2
  L10_2.deleted = L2_2
  L10_2.skipped = L3_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterCallback
L17_1 = "tk_housing:getAdminBusinessList"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = Config
  L2_2 = L2_2.RealEstateBusiness
  if L2_2 then
    L2_2 = L2_2.enabled
  end
  if L2_2 then
    L2_2 = IsAdmin
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
  do return end
  ::lbl_18::
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = Business
  L5_2 = L5_2.businesses
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.owner
    if L10_2 then
      L10_2 = L9_2.owner
      L10_2 = L3_2[L10_2]
      if not L10_2 then
        L10_2 = L9_2.owner
        L3_2[L10_2] = true
        L10_2 = #L2_2
        L10_2 = L10_2 + 1
        L11_2 = L9_2.owner
        L2_2[L10_2] = L11_2
      end
    end
  end
  L4_2 = GetCharNames
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = pairs
  L7_2 = Main
  L7_2 = L7_2.GetProperties
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.businessId
    if L12_2 then
      L12_2 = L11_2.businessId
      L13_2 = L11_2.businessId
      L13_2 = L5_2[L13_2]
      if not L13_2 then
        L13_2 = 0
      end
      L13_2 = L13_2 + 1
      L5_2[L12_2] = L13_2
    end
  end
  L6_2 = {}
  L7_2 = pairs
  L8_2 = Business
  L8_2 = L8_2.businesses
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = 0
    L14_2 = pairs
    L15_2 = L12_2.employees
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
    for L18_2 in L14_2, L15_2, L16_2, L17_2 do
      L13_2 = L13_2 + 1
    end
    L14_2 = #L6_2
    L14_2 = L14_2 + 1
    L15_2 = {}
    L15_2.id = L11_2
    L16_2 = L12_2.name
    L15_2.name = L16_2
    L16_2 = L12_2.label
    L15_2.label = L16_2
    L16_2 = L12_2.owner
    L15_2.owner = L16_2
    L16_2 = L12_2.owner
    if L16_2 then
      L16_2 = L12_2.owner
      L16_2 = L4_2[L16_2]
      if L16_2 then
        goto lbl_107
      end
    end
    L16_2 = nil
    ::lbl_107::
    L15_2.ownerName = L16_2
    L16_2 = L12_2.balance
    L15_2.balance = L16_2
    L15_2.employeeCount = L13_2
    L16_2 = L5_2[L11_2]
    if not L16_2 then
      L16_2 = 0
    end
    L15_2.propertyCount = L16_2
    L6_2[L14_2] = L15_2
  end
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterCallback
L17_1 = "tk_housing:getAdminBusinessDetail"
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.enabled
  end
  if L3_2 then
    L3_2 = IsAdmin
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_17::
  L3_2 = Utils
  L3_2 = L3_2.IsFiniteNumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = Business
  L3_2 = L3_2.GetBusiness
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2.employees
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2 in L5_2, L6_2, L7_2, L8_2 do
    L10_2 = #L4_2
    L10_2 = L10_2 + 1
    L4_2[L10_2] = L9_2
  end
  L5_2 = L3_2.owner
  if L5_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = L3_2.owner
    L4_2[L5_2] = L6_2
  end
  L5_2 = GetCharNames
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L3_2.employees
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = #L6_2
    L13_2 = L13_2 + 1
    L14_2 = {}
    L14_2.identifier = L11_2
    L15_2 = L5_2[L11_2]
    L14_2.name = L15_2
    L15_2 = L12_2.grade
    L14_2.grade = L15_2
    L15_2 = L12_2.hiredAt
    L14_2.hiredAt = L15_2
    L6_2[L13_2] = L14_2
  end
  L7_2 = table
  L7_2 = L7_2.sort
  L8_2 = L6_2
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.hiredAt
    L3_3 = A1_3.hiredAt
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L7_2(L8_2, L9_2)
  L7_2 = {}
  L8_2 = pairs
  L9_2 = L3_2.grades
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = #L7_2
    L14_2 = L14_2 + 1
    L7_2[L14_2] = L13_2
  end
  L8_2 = table
  L8_2 = L8_2.sort
  L9_2 = L7_2
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.grade
    L3_3 = A1_3.grade
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L8_2(L9_2, L10_2)
  L8_2 = BusinessDb
  L8_2 = L8_2.GetTransactions
  L9_2 = A2_2
  L10_2 = 50
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = ipairs
  L12_2 = L8_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = Utils
    L17_2 = L17_2.ParseOwner
    L18_2 = L16_2.actor
    L17_2 = L17_2(L18_2)
    if L17_2 then
      L17_2 = L17_2.type
    end
    if "player" == L17_2 then
      L17_2 = L16_2.actor
      L17_2 = L10_2[L17_2]
      if not L17_2 then
        L17_2 = L16_2.actor
        L10_2[L17_2] = true
        L17_2 = #L9_2
        L17_2 = L17_2 + 1
        L18_2 = L16_2.actor
        L9_2[L17_2] = L18_2
      end
    end
  end
  L11_2 = GetCharNames
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = {}
  L13_2 = ipairs
  L14_2 = L8_2
  L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
  for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
    L19_2 = #L12_2
    L19_2 = L19_2 + 1
    L20_2 = {}
    L21_2 = L18_2.id
    L20_2.id = L21_2
    L21_2 = L18_2.kind
    L20_2.kind = L21_2
    L21_2 = L18_2.amount
    L20_2.amount = L21_2
    L21_2 = L18_2.actor
    L20_2.actor = L21_2
    L21_2 = L18_2.actor
    L21_2 = L11_2[L21_2]
    L20_2.actorName = L21_2
    L21_2 = L18_2.note
    L20_2.note = L21_2
    L21_2 = L18_2.created_at
    L20_2.time = L21_2
    L21_2 = L18_2.breakdown
    L20_2.breakdown = L21_2
    L12_2[L19_2] = L20_2
  end
  L13_2 = {}
  L14_2 = pairs
  L15_2 = Main
  L15_2 = L15_2.GetProperties
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2()
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
    L20_2 = L19_2.businessId
    if L20_2 == A2_2 then
      L20_2 = #L13_2
      L20_2 = L20_2 + 1
      L21_2 = {}
      L21_2.id = L18_2
      L22_2 = L19_2.name
      L21_2.name = L22_2
      L22_2 = L19_2.address
      L21_2.address = L22_2
      L22_2 = L19_2.owner
      L22_2 = nil ~= L22_2
      L21_2.owned = L22_2
      L13_2[L20_2] = L21_2
    end
  end
  L14_2 = A1_2
  L15_2 = {}
  L15_2.id = A2_2
  L16_2 = L3_2.name
  L15_2.name = L16_2
  L16_2 = L3_2.label
  L15_2.label = L16_2
  L16_2 = L3_2.owner
  L15_2.owner = L16_2
  L16_2 = L3_2.owner
  if L16_2 then
    L16_2 = L3_2.owner
    L16_2 = L5_2[L16_2]
    if L16_2 then
      goto lbl_229
    end
  end
  L16_2 = nil
  ::lbl_229::
  L15_2.ownerName = L16_2
  L16_2 = L3_2.balance
  L15_2.balance = L16_2
  L15_2.grades = L7_2
  L15_2.employees = L6_2
  L16_2 = L3_2.allowedTypes
  L15_2.allowedTypes = L16_2
  L16_2 = L3_2.maxProperties
  L15_2.maxProperties = L16_2
  L16_2 = L3_2.revenue
  L15_2.revenueOverride = L16_2
  L16_2 = Business
  L16_2 = L16_2.ResolveRevenue
  L17_2 = L3_2
  L16_2 = L16_2(L17_2)
  L15_2.revenue = L16_2
  L15_2.transactions = L12_2
  L15_2.properties = L13_2
  L16_2 = {}
  L17_2 = Business
  L17_2 = L17_2.BlipPoint
  L18_2 = L3_2
  L17_2 = L17_2(L18_2)
  L16_2.blip = L17_2
  L17_2 = L3_2.stash
  L16_2.stash = L17_2
  L17_2 = L3_2.wardrobe
  L16_2.wardrobe = L17_2
  L17_2 = L3_2.bossMenu
  L16_2.bossMenu = L17_2
  L15_2.points = L16_2
  L14_2(L15_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminCreateBusiness"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.RealEstateBusiness
  if L2_2 then
    L2_2 = L2_2.enabled
  end
  if not L2_2 then
    return
  end
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin create business without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = Config
  L2_2 = L2_2.RealEstateBusiness
  if L2_2 then
    L2_2 = L2_2.adminCreator
  end
  if not L2_2 then
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = type
    L3_2 = A0_2.label
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      goto lbl_39
    end
  end
  do return end
  ::lbl_39::
  L2_2 = A0_2.label
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "^%s+"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "%s+$"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = #L2_2
  if not (L3_2 < 3) then
    L3_2 = #L2_2
    if not (L3_2 > 48) then
      goto lbl_55
    end
  end
  do return end
  ::lbl_55::
  L3_2 = nil
  L4_2 = nil
  L5_2 = A0_2.ownerId
  if nil ~= L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.IsFiniteNumber
    L6_2 = A0_2.ownerId
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      return
    end
    L5_2 = GetPlayerFromId
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = A0_2.ownerId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L5_2
    if not L4_2 then
      L5_2 = Notify
      L6_2 = L1_2
      L7_2 = _U
      L8_2 = "business_target_offline"
      L7_2 = L7_2(L8_2)
      L8_2 = "error"
      L5_2(L6_2, L7_2, L8_2)
      return
    end
    L5_2 = GetIdentifier
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2
    L5_2 = Business
    L5_2 = L5_2.GetPlayerBusiness
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = Notify
      L6_2 = L1_2
      L7_2 = _U
      L8_2 = "business_target_taken"
      L7_2 = L7_2(L8_2)
      L8_2 = "error"
      L5_2(L6_2, L7_2, L8_2)
      return
    end
  end
  L5_2 = Business
  L5_2 = L5_2.CreateBusiness
  L6_2 = L2_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  if L4_2 then
    L6_2 = Business
    L6_2 = L6_2.SendCreatePerms
    L7_2 = GetSource
    L8_2 = L4_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = Business
    L6_2 = L6_2.SendChanged
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L6_2 = Notify
  L7_2 = L1_2
  L8_2 = _U
  L9_2 = "business_admin_created"
  L8_2 = L8_2(L9_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = TriggerClientEvent
  L7_2 = "tk_housing:businessChanged"
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L6_2 = Webhook
  L7_2 = _U
  L8_2 = "webhook_action"
  L9_2 = Utils
  L9_2 = L9_2.GetIdentifiers
  L10_2 = L1_2
  L9_2 = L9_2(L10_2)
  L10_2 = "Admin Create Business"
  L11_2 = json
  L11_2 = L11_2.encode
  L12_2 = {}
  L13_2 = L5_2.id
  L12_2.businessId = L13_2
  L12_2.label = L2_2
  L12_2.owner = L3_2
  L13_2 = {}
  L13_2.indent = true
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminEditBusiness"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.enabled
  end
  if not L3_2 then
    return
  end
  L3_2 = IsAdmin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L1_1
    L4_2 = L2_2
    L5_2 = "Admin edit business without permission"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.adminCreator
  end
  if not L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.IsFiniteNumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_40
    end
  end
  do return end
  ::lbl_40::
  L3_2 = Business
  L3_2 = L3_2.GetBusiness
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = {}
  L5_2 = A1_2.label
  if nil ~= L5_2 then
    L5_2 = type
    L6_2 = A1_2.label
    L5_2 = L5_2(L6_2)
    if "string" ~= L5_2 then
      return
    end
    L5_2 = A1_2.label
    L6_2 = L5_2
    L5_2 = L5_2.gsub
    L7_2 = "^%s+"
    L8_2 = ""
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L5_2
    L5_2 = L5_2.gsub
    L7_2 = "%s+$"
    L8_2 = ""
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = #L5_2
    if not (L6_2 < 3) then
      L6_2 = #L5_2
      if not (L6_2 > 48) then
        goto lbl_74
      end
    end
    do return end
    ::lbl_74::
    L4_2.label = L5_2
  end
  L5_2 = A1_2.allowedTypes
  if false == L5_2 then
    L4_2.allowedTypes = false
  else
    L5_2 = A1_2.allowedTypes
    if nil ~= L5_2 then
      L5_2 = type
      L6_2 = A1_2.allowedTypes
      L5_2 = L5_2(L6_2)
      if "table" ~= L5_2 then
        return
      end
      L5_2 = {}
      L6_2 = ipairs
      L7_2 = A1_2.allowedTypes
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = type
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if "string" == L12_2 then
          L12_2 = Utils
          L12_2 = L12_2.GetPropertyType
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L12_2 = L12_2.id
          if L12_2 == L11_2 then
            L12_2 = #L5_2
            L12_2 = L12_2 + 1
            L5_2[L12_2] = L11_2
          end
        end
      end
      L6_2 = #L5_2
      if L6_2 > 0 then
        L4_2.allowedTypes = L5_2
      end
    end
  end
  L5_2 = A1_2.maxProperties
  if false == L5_2 then
    L4_2.maxProperties = false
  else
    L5_2 = A1_2.maxProperties
    if nil ~= L5_2 then
      L5_2 = Utils
      L5_2 = L5_2.IsFiniteNumber
      L6_2 = A1_2.maxProperties
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = A1_2.maxProperties
        if not (L5_2 < 1) then
          goto lbl_136
        end
      end
      do return end
      ::lbl_136::
      L5_2 = math
      L5_2 = L5_2.floor
      L6_2 = A1_2.maxProperties
      L5_2 = L5_2(L6_2)
      L4_2.maxProperties = L5_2
    end
  end
  L5_2 = A1_2.revenue
  if false == L5_2 then
    L4_2.revenue = false
  else
    L5_2 = A1_2.revenue
    if nil ~= L5_2 then
      L5_2 = type
      L6_2 = A1_2.revenue
      L5_2 = L5_2(L6_2)
      if "table" ~= L5_2 then
        return
      end
      L5_2 = Business
      L5_2 = L5_2.CleanRevenueOverride
      L6_2 = A1_2.revenue
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = false
      end
      L4_2.revenue = L5_2
    end
  end
  L5_2 = next
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = BusinessDb
  L5_2 = L5_2.UpdateFields
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L4_2.label
  if L5_2 then
    L5_2 = L4_2.label
    L3_2.label = L5_2
  end
  L5_2 = L4_2.allowedTypes
  if nil ~= L5_2 then
    L5_2 = L4_2.allowedTypes
    if not L5_2 then
      L5_2 = nil
    end
    L3_2.allowedTypes = L5_2
  end
  L5_2 = L4_2.maxProperties
  if nil ~= L5_2 then
    L5_2 = L4_2.maxProperties
    if not L5_2 then
      L5_2 = nil
    end
    L3_2.maxProperties = L5_2
  end
  L5_2 = L4_2.revenue
  if nil ~= L5_2 then
    L5_2 = L4_2.revenue
    if not L5_2 then
      L5_2 = nil
    end
    L3_2.revenue = L5_2
  end
  L5_2 = Notify
  L6_2 = L2_2
  L7_2 = _U
  L8_2 = "business_admin_updated"
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Business
  L5_2 = L5_2.SendChanged
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "tk_housing:businessChanged"
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = Webhook
  L6_2 = _U
  L7_2 = "webhook_action"
  L8_2 = Utils
  L8_2 = L8_2.GetIdentifiers
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L9_2 = "Admin Edit Business"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L11_2.businessId = A0_2
  L11_2.updates = L4_2
  L12_2 = {}
  L12_2.indent = true
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminDeleteBusiness"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.RealEstateBusiness
  if L2_2 then
    L2_2 = L2_2.enabled
  end
  if not L2_2 then
    return
  end
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_1
    L3_2 = L1_2
    L4_2 = "Admin delete business without permission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = Config
  L2_2 = L2_2.RealEstateBusiness
  if L2_2 then
    L2_2 = L2_2.adminCreator
  end
  if not L2_2 then
    return
  end
  L2_2 = Utils
  L2_2 = L2_2.IsFiniteNumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = Business
  L2_2 = L2_2.GetBusiness
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetProperties
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.businessId
    if L9_2 == A0_2 then
      L9_2 = PropertyDb
      L9_2 = L9_2.SetBusiness
      L10_2 = L7_2
      L11_2 = false
      L9_2(L10_2, L11_2)
      L8_2.businessId = nil
      L9_2 = TriggerClientEvent
      L10_2 = "tk_housing:updatePropertyBusiness"
      L11_2 = -1
      L12_2 = L7_2
      L13_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L3_2 = Main
  L3_2 = L3_2.ClearExportCache
  L3_2()
  L3_2 = {}
  L4_2 = L2_2.owner
  if L4_2 then
    L4_2 = L2_2.owner
    L3_2[L4_2] = true
  end
  L4_2 = pairs
  L5_2 = L2_2.employees
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L3_2[L8_2] = true
  end
  L4_2 = Business
  L4_2 = L4_2.businesses
  L4_2[A0_2] = nil
  L4_2 = BusinessDb
  L4_2 = L4_2.Delete
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2 = GetPlayerFromIdentifier
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = GetSource
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = Business
      L11_2 = L11_2.ClearDuty
      L12_2 = L10_2
      L11_2(L12_2)
      L11_2 = Player
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L11_2 = L11_2.state
      L12_2 = L11_2
      L11_2 = L11_2.set
      L13_2 = "realtorDuty"
      L14_2 = nil
      L15_2 = true
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = Business
      L11_2 = L11_2.SendCreatePerms
      L12_2 = L10_2
      L11_2(L12_2)
      L11_2 = TriggerClientEvent
      L12_2 = "tk_housing:businessChanged"
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L4_2 = Notify
  L5_2 = L1_2
  L6_2 = _U
  L7_2 = "business_admin_deleted"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "tk_housing:businessChanged"
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = Webhook
  L5_2 = _U
  L6_2 = "webhook_action"
  L7_2 = Utils
  L7_2 = L7_2.GetIdentifiers
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = "Admin Delete Business"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = {}
  L10_2.businessId = A0_2
  L11_2 = {}
  L11_2.indent = true
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBusinessSetOwner"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.enabled
  end
  if not L3_2 then
    return
  end
  L3_2 = IsAdmin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L1_1
    L4_2 = L2_2
    L5_2 = "Admin set business owner without permission"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.adminCreator
  end
  if not L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.IsFiniteNumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.IsFiniteNumber
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_41
    end
  end
  do return end
  ::lbl_41::
  L3_2 = Business
  L3_2 = L3_2.GetBusiness
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if not L4_2 then
    L5_2 = Notify
    L6_2 = L2_2
    L7_2 = _U
    L8_2 = "business_target_offline"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = GetIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = Business
  L6_2 = L6_2.GetPlayerBusiness
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = L6_2.id
    if L7_2 ~= A0_2 then
      L7_2 = Notify
      L8_2 = L2_2
      L9_2 = _U
      L10_2 = "business_target_taken"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  L7_2 = L3_2.owner
  if L7_2 == L5_2 then
    return
  end
  L7_2 = L3_2.owner
  L8_2 = BusinessDb
  L8_2 = L8_2.SetOwner
  L9_2 = A0_2
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L3_2.owner = L5_2
  L8_2 = Business
  L8_2 = L8_2.SendCreatePerms
  L9_2 = GetSource
  L10_2 = L4_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if L7_2 then
    L8_2 = GetPlayerFromIdentifier
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = GetSource
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = L3_2.employees
      L10_2 = L10_2[L7_2]
      if not L10_2 then
        L10_2 = Business
        L10_2 = L10_2.ClearDuty
        L11_2 = L9_2
        L10_2(L11_2)
        L10_2 = Player
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L10_2 = L10_2.state
        L11_2 = L10_2
        L10_2 = L10_2.set
        L12_2 = "realtorDuty"
        L13_2 = nil
        L14_2 = true
        L10_2(L11_2, L12_2, L13_2, L14_2)
      end
      L10_2 = Business
      L10_2 = L10_2.SendCreatePerms
      L11_2 = L9_2
      L10_2(L11_2)
    end
  end
  L8_2 = Notify
  L9_2 = L2_2
  L10_2 = _U
  L11_2 = "business_admin_owner_set"
  L10_2 = L10_2(L11_2)
  L11_2 = "success"
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = Business
  L8_2 = L8_2.SendChanged
  L9_2 = L3_2
  L8_2(L9_2)
  L8_2 = TriggerClientEvent
  L9_2 = "tk_housing:businessChanged"
  L10_2 = L2_2
  L8_2(L9_2, L10_2)
  L8_2 = Webhook
  L9_2 = _U
  L10_2 = "webhook_action"
  L11_2 = Utils
  L11_2 = L11_2.GetIdentifiers
  L12_2 = L2_2
  L11_2 = L11_2(L12_2)
  L12_2 = "Admin Set Business Owner"
  L13_2 = json
  L13_2 = L13_2.encode
  L14_2 = {}
  L14_2.businessId = A0_2
  L14_2.owner = L5_2
  L15_2 = {}
  L15_2.indent = true
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBusinessAdjustBalance"
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.RealEstateBusiness
  if L4_2 then
    L4_2 = L4_2.enabled
  end
  if not L4_2 then
    return
  end
  L4_2 = IsAdmin
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L1_1
    L5_2 = L3_2
    L6_2 = "Admin adjust business balance without permission"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = Config
  L4_2 = L4_2.RealEstateBusiness
  if L4_2 then
    L4_2 = L4_2.adminCreator
  end
  if not L4_2 then
    return
  end
  L4_2 = Utils
  L4_2 = L4_2.IsFiniteNumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.IsFiniteNumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_41
    end
  end
  do return end
  ::lbl_41::
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  if 0 == A1_2 then
    return
  end
  L4_2 = Business
  L4_2 = L4_2.GetBusiness
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L6_2 = A2_2
    L5_2 = A2_2.sub
    L7_2 = 1
    L8_2 = 100
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      goto lbl_68
      A2_2 = L5_2 or A2_2
    end
  end
  A2_2 = nil
  ::lbl_68::
  L5_2 = GetPlayerFromId
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L6_2 = GetIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if A1_2 > 0 then
    L7_2 = Business
    L7_2 = L7_2.AddMoney
    L8_2 = L4_2
    L9_2 = A1_2
    L10_2 = "adjust"
    L11_2 = L6_2
    L12_2 = A2_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L7_2 = Business
    L7_2 = L7_2.RemoveMoney
    L8_2 = L4_2
    L9_2 = -A1_2
    L10_2 = "adjust"
    L11_2 = L6_2
    L12_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    if not L7_2 then
      L7_2 = Notify
      L8_2 = L3_2
      L9_2 = _U
      L10_2 = "business_balance_too_low"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  L7_2 = Notify
  L8_2 = L3_2
  L9_2 = _U
  L10_2 = "business_admin_balance_adjusted"
  L9_2 = L9_2(L10_2)
  L10_2 = "success"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Business
  L7_2 = L7_2.SendChanged
  L8_2 = L4_2
  L7_2(L8_2)
  L7_2 = TriggerClientEvent
  L8_2 = "tk_housing:businessChanged"
  L9_2 = L3_2
  L7_2(L8_2, L9_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBusinessFire"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.enabled
  end
  if not L3_2 then
    return
  end
  L3_2 = IsAdmin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L1_1
    L4_2 = L2_2
    L5_2 = "Admin fire business employee without permission"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.adminCreator
  end
  if not L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.IsFiniteNumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 and "" ~= A1_2 then
      goto lbl_42
    end
  end
  do return end
  ::lbl_42::
  L3_2 = Business
  L3_2 = L3_2.GetBusiness
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.owner
  if A1_2 == L4_2 then
    return
  end
  L4_2 = L3_2.employees
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    return
  end
  L4_2 = BusinessDb
  L4_2 = L4_2.RemoveEmployee
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = L3_2.employees
  L4_2[A1_2] = nil
  L4_2 = GetPlayerFromIdentifier
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = GetSource
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = Business
    L6_2 = L6_2.ClearDuty
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = Player
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.state
    L7_2 = L6_2
    L6_2 = L6_2.set
    L8_2 = "realtorDuty"
    L9_2 = nil
    L10_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Notify
    L7_2 = L5_2
    L8_2 = _U
    L9_2 = "business_you_were_fired"
    L10_2 = L3_2.label
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Business
    L6_2 = L6_2.SendCreatePerms
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L5_2 = Notify
  L6_2 = L2_2
  L7_2 = _U
  L8_2 = "business_fired"
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Business
  L5_2 = L5_2.SendChanged
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "tk_housing:businessChanged"
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = Webhook
  L6_2 = _U
  L7_2 = "webhook_action"
  L8_2 = Utils
  L8_2 = L8_2.GetIdentifiers
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L9_2 = "Admin Fire Business Employee"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L11_2.businessId = A0_2
  L11_2.identifier = A1_2
  L12_2 = {}
  L12_2.indent = true
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBusinessSetPoint"
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.RealEstateBusiness
  if L4_2 then
    L4_2 = L4_2.enabled
  end
  if not L4_2 then
    return
  end
  L4_2 = IsAdmin
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L1_1
    L5_2 = L3_2
    L6_2 = "Admin set business point without permission"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = Config
  L4_2 = L4_2.RealEstateBusiness
  if L4_2 then
    L4_2 = L4_2.adminCreator
  end
  if not L4_2 then
    return
  end
  L4_2 = Utils
  L4_2 = L4_2.IsFiniteNumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  if "blip" ~= A1_2 and "stash" ~= A1_2 and "wardrobe" ~= A1_2 and "bossMenu" ~= A1_2 then
    return
  end
  if "set" ~= A2_2 and "clear" ~= A2_2 then
    return
  end
  L4_2 = Business
  L4_2 = L4_2.GetBusiness
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = Business
  L5_2 = L5_2.SetPoint
  L6_2 = L4_2
  L7_2 = A1_2
  if "set" == A2_2 then
    L8_2 = Business
    L8_2 = L8_2.GetPedPoint
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_69
    end
  end
  L8_2 = nil
  ::lbl_69::
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Notify
  L6_2 = L3_2
  L7_2 = _U
  if "set" == A2_2 then
    L8_2 = "business_point_set"
    if L8_2 then
      goto lbl_79
    end
  end
  L8_2 = "business_point_cleared"
  ::lbl_79::
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Business
  L5_2 = L5_2.SendChanged
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = Business
  L5_2 = L5_2.SendPointsChanged
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "tk_housing:businessChanged"
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = Webhook
  L6_2 = _U
  L7_2 = "webhook_action"
  L8_2 = Utils
  L8_2 = L8_2.GetIdentifiers
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = "Admin Set Business Point"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L11_2.businessId = A0_2
  L11_2.kind = A1_2
  L11_2.action = A2_2
  L12_2 = {}
  L12_2.indent = true
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBusinessSaveGrade"
function L18_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = source
  L6_2 = Config
  L6_2 = L6_2.RealEstateBusiness
  if L6_2 then
    L6_2 = L6_2.enabled
  end
  if not L6_2 then
    return
  end
  L6_2 = IsAdmin
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = L1_1
    L7_2 = L5_2
    L8_2 = "Admin save business grade without permission"
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = Config
  L6_2 = L6_2.RealEstateBusiness
  if L6_2 then
    L6_2 = L6_2.adminCreator
  end
  if not L6_2 then
    return
  end
  L6_2 = Utils
  L6_2 = L6_2.IsFiniteNumber
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L6_2 = Business
  L6_2 = L6_2.GetBusiness
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L7_2 = Business
  L7_2 = L7_2.SaveGrade
  L8_2 = L6_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if not L7_2 then
    if L8_2 then
      L9_2 = Notify
      L10_2 = L5_2
      L11_2 = _U
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
    end
    return
  end
  L9_2 = Notify
  L10_2 = L5_2
  L11_2 = _U
  L12_2 = L8_2
  L11_2 = L11_2(L12_2)
  L12_2 = "success"
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Business
  L9_2 = L9_2.SendChanged
  L10_2 = L6_2
  L9_2(L10_2)
  L9_2 = TriggerClientEvent
  L10_2 = "tk_housing:businessChanged"
  L11_2 = L5_2
  L9_2(L10_2, L11_2)
  L9_2 = Webhook
  L10_2 = _U
  L11_2 = "webhook_action"
  L12_2 = Utils
  L12_2 = L12_2.GetIdentifiers
  L13_2 = L5_2
  L12_2 = L12_2(L13_2)
  L13_2 = "Admin Save Business Grade"
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = {}
  L15_2.businessId = A0_2
  L15_2.grade = A1_2
  L15_2.label = A2_2
  L15_2.salary = A3_2
  L16_2 = {}
  L16_2.indent = true
  L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "tk_housing:adminBusinessDeleteGrade"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.enabled
  end
  if not L3_2 then
    return
  end
  L3_2 = IsAdmin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L1_1
    L4_2 = L2_2
    L5_2 = "Admin delete business grade without permission"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = Config
  L3_2 = L3_2.RealEstateBusiness
  if L3_2 then
    L3_2 = L3_2.adminCreator
  end
  if not L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.IsFiniteNumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = Business
  L3_2 = L3_2.GetBusiness
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = Business
  L4_2 = L4_2.DeleteGrade
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    if L5_2 then
      L6_2 = Notify
      L7_2 = L2_2
      L8_2 = _U
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L9_2 = "error"
      L6_2(L7_2, L8_2, L9_2)
    end
    return
  end
  L6_2 = Notify
  L7_2 = L2_2
  L8_2 = _U
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = "success"
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Business
  L6_2 = L6_2.SendChanged
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = TriggerClientEvent
  L7_2 = "tk_housing:businessChanged"
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = Webhook
  L7_2 = _U
  L8_2 = "webhook_action"
  L9_2 = Utils
  L9_2 = L9_2.GetIdentifiers
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L10_2 = "Admin Delete Business Grade"
  L11_2 = json
  L11_2 = L11_2.encode
  L12_2 = {}
  L12_2.businessId = A0_2
  L12_2.grade = A1_2
  L13_2 = {}
  L13_2.indent = true
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L16_1(L17_1, L18_1)
