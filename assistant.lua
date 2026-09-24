local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = {}
Assistant = L0_1
L0_1 = Assistant
L1_1 = {}
L0_1.Commands = L1_1
L0_1 = {}
L0_1.angel = "Angel"
L0_1.haviland = "Haviland"
L0_1.og = "OG"
L1_1 = {}
L1_1.auto = true
L1_1.male = true
L1_1.female = true
L2_1 = {}
L3_1 = "lights_on"
L4_1 = "lights_off"
L5_1 = "blinds_close"
L6_1 = "blinds_open"
L7_1 = "lock"
L8_1 = "unlock"
L9_1 = "bills"
L10_1 = "persona"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L3_1 = {}
L4_1 = ipairs
L5_1 = L2_1
L4_1, L5_1, L6_1, L7_1 = L4_1(L5_1)
for L8_1, L9_1 in L4_1, L5_1, L6_1, L7_1 do
  L3_1[L9_1] = true
end
L4_1 = {}
L5_1 = {}
L5_1.bucket = "XM25_GENERIC_HI"
L5_1.private = true
L4_1.greet = L5_1
L5_1 = {}
L5_1.bucket = "XM25_VAULT_IDLE_MONEY_LOW"
L5_1.private = true
L4_1.bills = L5_1
L5_1 = {}
L5_1.bucket = "XM25_VAULT_IDLE_MONEY_HIGH"
L5_1.private = true
L4_1.moneyHigh = L5_1
L5_1 = {}
L5_1.bucket = "XM25_VAULT_BILLIONAIRE"
L5_1.private = true
L4_1.billionaire = L5_1
L5_1 = {}
L5_1.bucket = "XM25_GUEST_AT_DOOR"
L4_1.doorbell = L5_1
L5_1 = {}
L5_1.bucket = "XM25_WAKE_UP"
L5_1.private = true
L4_1.wakeUp = L5_1
L5_1 = {}
L5_1.bucket = "XM25_CLOTHES"
L5_1.private = true
L4_1.wardrobe = L5_1
L5_1 = {}
L5_1.bucket = "XM25_ARMORY"
L5_1.private = true
L4_1.storage = L5_1
L5_1 = {}
L5_1.bucket = "XM25_SPA_IDLE"
L5_1.private = true
L4_1.bathtub = L5_1
L5_1 = {}
L5_1.bucket = "XM25_VEHICLE_MODIFIED"
L5_1.private = true
L4_1.garage = L5_1
L5_1 = {}
L5_1.bucket = "XM25_HAIRCUT"
L5_1.private = true
L4_1.haircut = L5_1
L5_1 = {}
L5_1.bucket = "XM25_TATTOO"
L5_1.private = true
L4_1.tattoo = L5_1
L5_1 = {}
L5_1.bucket = "XM25_WALL_PANEL"
L5_1.private = true
L4_1.panel = L5_1
L5_1 = {}
L5_1.bucket = "XM25_MANSION_DEFEND_COMPLETE"
L4_1.alarm = L5_1
L5_1 = {}
L5_1.wakeUp = true
L5_1.wardrobe = true
L5_1.storage = true
L5_1.bathtub = true
L5_1.garage = true
L5_1.haircut = true
L5_1.tattoo = true
L5_1.panel = true
L6_1 = 120
L7_1 = 1000
L8_1 = 1000
L9_1 = 4000
function L10_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Assistant
  if L0_2 then
    L0_2 = L0_2.enable
  end
  L0_2 = true == L0_2
  return L0_2
end
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Main
  L2_2 = L2_2.GetHousePlayers
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2[A0_2]
  end
  L2_2 = nil ~= L2_2
  return L2_2
end
L13_1 = Assistant
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Ambience
  L1_2 = L1_2.Get
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_2.assistant
  end
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = {}
  L3_2 = L11_1
  L4_2 = L1_2.persona
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L1_2.persona
    if L3_2 then
      goto lbl_25
    end
  end
  L3_2 = Config
  L3_2 = L3_2.Assistant
  L3_2 = L3_2.persona
  ::lbl_25::
  L2_2.persona = L3_2
  L4_2 = L1_2.addressal
  L3_2 = L1_1
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = L1_2.addressal
    if L3_2 then
      goto lbl_35
    end
  end
  L3_2 = "auto"
  ::lbl_35::
  L2_2.addressal = L3_2
  L3_2 = L1_2.voice
  L3_2 = false ~= L3_2
  L2_2.voice = L3_2
  return L2_2
end
L13_1.GetSettings = L14_1
L13_1 = Assistant
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.furniture
    if L2_2 then
      L2_2 = L2_2.house
    end
  end
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Utils
    L7_2 = L7_2.IsAssistant
    L8_2 = L6_2.model
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
L13_1.HasTablet = L14_1
L13_1 = Assistant
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = false
  L4_2 = pairs
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = L5_2.bills
  end
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.amountOwed
    if not L10_2 then
      L10_2 = 0
    end
    if L10_2 > 0 then
      L1_2 = L1_2 + 1
      L10_2 = L9_2.amountOwed
      L2_2 = L2_2 + L10_2
      L10_2 = Utilities
      L10_2 = L10_2.IsBillOverdue
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L3_2 = true
      end
    end
  end
  L4_2 = {}
  L4_2.count = L1_2
  L4_2.total = L2_2
  L4_2.overdue = L3_2
  return L4_2
end
L13_1.GetBills = L14_1
L13_1 = {}
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L13_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = L3_2[A1_2]
  if L4_2 then
    L4_2 = L3_2[A1_2]
    L4_2 = L2_2 - L4_2
    L5_2 = Config
    L5_2 = L5_2.Assistant
    L5_2 = L5_2.lineCooldown
    if not L5_2 then
      L5_2 = 8000
    end
    if L4_2 < L5_2 then
      L4_2 = true
      return L4_2
    end
  end
  L3_2[A1_2] = L2_2
  L4_2 = L13_1
  L4_2[A0_2] = L3_2
  L4_2 = false
  return L4_2
end
L15_1 = Assistant
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L10_1
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_13::
  L3_2 = Main
  L3_2 = L3_2.GetHousePlayers
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A2_2 or L4_2
  if A2_2 then
    L4_2 = A2_2.src
  end
  if not L4_2 then
    if L3_2 then
      L4_2 = next
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if nil ~= L4_2 then
        goto lbl_31
      end
    end
    L4_2 = false
    return L4_2
  end
  ::lbl_31::
  L4_2 = Config
  L4_2 = L4_2.Assistant
  L4_2 = L4_2.requireTablet
  if false ~= L4_2 then
    L4_2 = Assistant
    L4_2 = L4_2.HasTablet
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = L14_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2 or L7_2
  if A2_2 then
    L7_2 = A2_2.src
  end
  if not L7_2 then
    L7_2 = ""
  end
  L6_2 = L6_2 .. L7_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = Assistant
  L4_2 = L4_2.GetSettings
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A2_2 or L5_2
  if A2_2 then
    L5_2 = A2_2.src
  end
  if L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "tk_housing:assistantSpeak"
    L7_2 = A2_2.src
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = true
    return L5_2
  end
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2 in L5_2, L6_2, L7_2, L8_2 do
    L10_2 = TriggerClientEvent
    L11_2 = "tk_housing:assistantSpeak"
    L12_2 = L9_2
    L13_2 = A0_2
    L14_2 = A1_2
    L15_2 = L4_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L5_2 = true
  return L5_2
end
L15_1.Say = L16_1
L15_1 = Assistant
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L4_1
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = L10_1
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.Assistant
      L4_2 = L4_2.moments
      if L4_2 then
        L4_2 = L4_2[A1_2]
      end
      if L4_2 then
        goto lbl_19
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_19::
  L4_2 = Assistant
  L4_2 = L4_2.Say
  L5_2 = A0_2
  L6_2 = L3_2.bucket
  L7_2 = L3_2.private
  if L7_2 then
    L7_2 = {}
    L7_2.src = A2_2
    if L7_2 then
      goto lbl_32
    end
  end
  L7_2 = nil
  ::lbl_32::
  return L4_2(L5_2, L6_2, L7_2)
end
L15_1.Moment = L16_1
L15_1 = Assistant
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Assistant
  L2_2 = L2_2.Moment
  L3_2 = A1_2
  L4_2 = "greet"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Permissions
    L3_2 = L3_2.IsOwnerOrManager
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L3_2 = SetTimeout
  L4_2 = L9_1
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetPlayerFromId
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L2_2 = L0_3
    L0_3 = L2_2
    if L0_3 then
      L0_3 = L12_1
      L1_3 = A0_2
      L2_3 = A1_2
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        goto lbl_15
      end
    end
    do return end
    ::lbl_15::
    L0_3 = Assistant
    L0_3 = L0_3.GetBills
    L1_3 = A1_2
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.count
    if L0_3 > 0 then
      L0_3 = Assistant
      L0_3 = L0_3.Moment
      L1_3 = A1_2
      L2_3 = "bills"
      L3_3 = A0_2
      L0_3(L1_3, L2_3, L3_3)
      return
    end
    L0_3 = GetAccountMoney
    L1_3 = L2_2
    L2_3 = "bank"
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = Config
    L1_3 = L1_3.Assistant
    L1_3 = L1_3.billionaireFrom
    if not L1_3 then
      L1_3 = math
      L1_3 = L1_3.huge
    end
    if L0_3 >= L1_3 then
      L1_3 = Assistant
      L1_3 = L1_3.Moment
      L2_3 = A1_2
      L3_3 = "billionaire"
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = Config
      L1_3 = L1_3.Assistant
      L1_3 = L1_3.moneyHighFrom
      if not L1_3 then
        L1_3 = math
        L1_3 = L1_3.huge
      end
      if L0_3 >= L1_3 then
        L1_3 = Assistant
        L1_3 = L1_3.Moment
        L2_3 = A1_2
        L3_3 = "moneyHigh"
        L4_3 = A0_2
        L1_3(L2_3, L3_3, L4_3)
      end
    end
  end
  L3_2(L4_2, L5_2)
end
L15_1.Greet = L16_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.ok
  if L2_2 then
    L2_2 = "XM25_GENERIC_POSITIVE"
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = "XM25_GENERIC_NEGATIVE"
  ::lbl_8::
  A1_2.bucket = L2_2
  L2_2 = TriggerClientEvent
  L3_2 = "tk_housing:assistantReply"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Permissions
  L3_2 = L3_2.HasPermission
  L4_2 = L2_2
  L5_2 = A1_2
  L6_2 = "lock"
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.permissions
  L3_2 = nil ~= L2_2 and L3_2
  return L3_2
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.furniture
    if L2_2 then
      L2_2 = L2_2.house
    end
  end
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Utils
    L7_2 = L7_2.GetLightData
    L8_2 = L6_2.model
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.HouseInteriors
  if L1_2 then
    L2_2 = Main
    L2_2 = L2_2.GetProperty
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.houseInterior
    L1_2 = L1_2[L2_2]
  end
  L2_2 = L1_2.isCustomShell
  L2_2 = L1_2.isIpl
  if not L2_2 then
    L2_2 = L1_2.model
    L2_2 = nil ~= L1_2 and L2_2
  end
  return L2_2
end
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Lights
  L3_2 = L3_2.CanChange
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = _U
    L5_2 = "assistant_no_permission"
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2, L6_2, L7_2
  end
  L3_2 = Lights
  L3_2 = L3_2.SetAll
  L4_2 = A1_2
  L5_2 = A2_2
  L6_2 = {}
  L7_2 = "house"
  L6_2[1] = L7_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = true
  L4_2 = _U
  if A2_2 then
    L5_2 = "assistant_lights_on"
    if L5_2 then
      goto lbl_31
    end
  end
  L5_2 = "assistant_lights_off"
  ::lbl_31::
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  return L3_2, L4_2, L5_2, L6_2, L7_2
end
function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L18_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = _U
    L5_2 = "assistant_not_available"
    L4_2, L5_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2
  end
  L3_2 = Lights
  L3_2 = L3_2.CanChange
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = _U
    L5_2 = "assistant_no_permission"
    L4_2, L5_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2
  end
  L3_2 = Ambience
  L3_2 = L3_2.Update
  L4_2 = A1_2
  L5_2 = {}
  L5_2.blinds = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = true
  L4_2 = _U
  if A2_2 then
    L5_2 = "blinds_closed"
    if L5_2 then
      goto lbl_38
    end
  end
  L5_2 = "blinds_open"
  ::lbl_38::
  L4_2, L5_2 = L4_2(L5_2)
  return L3_2, L4_2, L5_2
end
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L16_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = _U
    L5_2 = "assistant_no_permission"
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2, L6_2, L7_2
  end
  L3_2 = Doors
  L3_2 = L3_2.SetHouseDoorsLocked
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = true
  L5_2 = _U
  if A2_2 then
    L6_2 = "assistant_locked"
    if L6_2 then
      goto lbl_25
    end
  end
  L6_2 = "assistant_unlocked"
  ::lbl_25::
  L7_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L4_2, L5_2, L6_2, L7_2
end
L22_1 = {}
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L19_1
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = true
  return L2_2(L3_2, L4_2, L5_2)
end
L22_1.lights_on = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L19_1
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = false
  return L2_2(L3_2, L4_2, L5_2)
end
L22_1.lights_off = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L20_1
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = true
  return L2_2(L3_2, L4_2, L5_2)
end
L22_1.blinds_close = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L20_1
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = false
  return L2_2(L3_2, L4_2, L5_2)
end
L22_1.blinds_open = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L21_1
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = true
  return L2_2(L3_2, L4_2, L5_2)
end
L22_1.lock = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L21_1
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = false
  return L2_2(L3_2, L4_2, L5_2)
end
L22_1.unlock = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Permissions
    L3_2 = L3_2.IsOwnerOrManager
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = false
  L4_2 = _U
  L5_2 = "assistant_no_permission"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  do return L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 end
  ::lbl_18::
  L3_2 = Assistant
  L3_2 = L3_2.GetBills
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.count
  if 0 == L4_2 then
    L4_2 = true
    L5_2 = _U
    L6_2 = "assistant_bills_clear"
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  end
  L4_2 = true
  L5_2 = _U
  L6_2 = "assistant_bills_due"
  L7_2 = L3_2.count
  L8_2 = Utils
  L8_2 = L8_2.GroupDigits
  L9_2 = L3_2.total
  L8_2, L9_2 = L8_2(L9_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
end
L22_1.bills = L23_1
function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Furniture
  L3_2 = L3_2.CanEditField
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = "owner"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = _U
    L5_2 = "assistant_no_permission"
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2, L6_2, L7_2
  end
  L3_2 = L11_1
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = _U
    L5_2 = "assistant_unknown"
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2, L6_2, L7_2
  end
  L3_2 = Ambience
  L3_2 = L3_2.Get
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.assistant
  if not L3_2 then
    L3_2 = {}
  end
  L3_2.persona = A2_2
  L4_2 = Ambience
  L4_2 = L4_2.Update
  L5_2 = A1_2
  L6_2 = {}
  L6_2.assistant = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = true
  L5_2 = _U
  L6_2 = "assistant_persona_set"
  L7_2 = L0_1
  L7_2 = L7_2[A2_2]
  if not L7_2 then
    L7_2 = A2_2
  end
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L4_2, L5_2, L6_2, L7_2
end
L22_1.persona = L23_1
function L23_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = {}
  L4_2.ok = false
  L5_2 = A2_2 or L5_2
  if A2_2 then
    L5_2 = Assistant
    L5_2 = L5_2.Commands
    L5_2 = L5_2[A2_2]
    if not L5_2 then
      L5_2 = L22_1
      L5_2 = L5_2[A2_2]
    end
  end
  if L5_2 then
    L6_2 = L5_2
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A3_2
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2.text = L7_2
    L4_2.ok = L6_2
    L6_2 = L4_2.ok
    L6_2 = true == L6_2
    L4_2.ok = L6_2
  end
  L6_2 = L4_2.text
  if not L6_2 then
    L6_2 = _U
    if A2_2 then
      L7_2 = "assistant_not_available"
      if L7_2 then
        goto lbl_38
      end
    end
    L7_2 = "assistant_unknown"
    ::lbl_38::
    L6_2 = L6_2(L7_2)
  end
  L4_2.text = L6_2
  L6_2 = L15_1
  L7_2 = A0_2
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
end
L24_1 = Assistant
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Utils
  L4_2 = L4_2.Debug
  L5_2 = "assistant intent"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L23_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L24_1.RunIntent = L25_1
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Assistant
  L2_2 = L2_2.tablets
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = #L0_2
    L6_2 = L6_2 + 1
    L7_2 = {}
    L7_2.id = L5_2
    L8_2 = L0_1
    L8_2 = L8_2[L5_2]
    if not L8_2 then
      L8_2 = L5_2
    end
    L7_2.label = L8_2
    L0_2[L6_2] = L7_2
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.label
    L3_3 = A1_3.label
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  return L0_2
end
L25_1 = Assistant
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.Assistant
    L3_2 = L3_2.commands
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = {}
  do return L3_2 end
  ::lbl_14::
  L3_2 = Lights
  L3_2 = L3_2.CanChange
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L17_1
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
  end
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L18_1
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
  end
  L6_2 = Permissions
  L6_2 = L6_2.IsOwnerOrManager
  L7_2 = L2_2
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L16_1
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = {}
  L8_2.lights_on = L4_2
  L8_2.lights_off = L4_2
  L8_2.blinds_close = L5_2
  L8_2.blinds_open = L5_2
  L8_2.lock = L7_2
  L8_2.unlock = L7_2
  L8_2.bills = L6_2
  L9_2 = Furniture
  L9_2 = L9_2.CanEditField
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = "owner"
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.persona = L9_2
  L9_2 = {}
  L10_2 = ipairs
  L11_2 = L2_1
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L8_2[L15_2]
    if L16_2 then
      L16_2 = {}
      L16_2.id = L15_2
      if "persona" == L15_2 then
        L17_2 = L24_1
        L17_2 = L17_2()
        L16_2.options = L17_2
      end
      L17_2 = #L9_2
      L17_2 = L17_2 + 1
      L9_2[L17_2] = L16_2
    end
  end
  L10_2 = {}
  L11_2 = pairs
  L12_2 = Assistant
  L12_2 = L12_2.Commands
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2 in L11_2, L12_2, L13_2, L14_2 do
    L16_2 = L3_1
    L16_2 = L16_2[L15_2]
    if not L16_2 then
      L16_2 = #L10_2
      L16_2 = L16_2 + 1
      L10_2[L16_2] = L15_2
    end
  end
  L11_2 = table
  L11_2 = L11_2.sort
  L12_2 = L10_2
  L11_2(L12_2)
  L11_2 = ipairs
  L12_2 = L10_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = #L9_2
    L17_2 = L17_2 + 1
    L18_2 = {}
    L18_2.id = L16_2
    L9_2[L17_2] = L18_2
  end
  return L9_2
end
L25_1.GetIntents = L26_1
L25_1 = {}
L26_1 = {}
function L27_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = L10_1
  L5_2 = L5_2()
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = type
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_20
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_20::
  if A4_2 then
    L5_2 = Furniture
    L5_2 = L5_2.IsPlayerInside
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_37
    end
  end
  L5_2 = L12_1
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  ::lbl_37::
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = A2_2[A0_2]
  if L6_2 then
    L6_2 = A2_2[A0_2]
    L6_2 = L5_2 - L6_2
    if A3_2 > L6_2 then
      L6_2 = false
      return L6_2
    end
  end
  A2_2[A0_2] = L5_2
  L6_2 = true
  return L6_2
end
L28_1 = AddEventHandler
L29_1 = "playerDropped"
function L30_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L25_1
  L0_2[L1_2] = nil
  L1_2 = source
  L0_2 = L26_1
  L0_2[L1_2] = nil
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "tk_housing:assistantMoment"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = L5_1
    L3_2 = L3_2[A1_2]
    if L3_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = L27_1
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = L25_1
  L7_2 = L7_1
  L8_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L3_2 then
    return
  end
  L3_2 = Assistant
  L3_2 = L3_2.Moment
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "tk_housing:assistantIntent"
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Assistant
  if L4_2 then
    L4_2 = L4_2.commands
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = L3_1
    L4_2 = L4_2[A1_2]
    if L4_2 then
      goto lbl_25
    end
    L4_2 = Assistant
    L4_2 = L4_2.Commands
    L4_2 = L4_2[A1_2]
    if L4_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L4_2 = L27_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = L26_1
  L8_2 = L8_1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    return
  end
  if "persona" == A1_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      L4_2 = #A2_2
      if 0 ~= L4_2 then
        L4_2 = #A2_2
        L5_2 = L6_1
      end
    end
    if L4_2 > L5_2 then
      return
    end
  else
    L4_2 = L3_1
    L4_2 = L4_2[A1_2]
    if not L4_2 then
      if nil ~= A2_2 then
        L4_2 = type
        L5_2 = A2_2
        L4_2 = L4_2(L5_2)
        if "string" == L4_2 then
          L4_2 = #A2_2
          L5_2 = L6_1
          if not (L4_2 > L5_2) then
            goto lbl_66
          end
        end
        return
      end
      ::lbl_66::
      if not A2_2 then
        A2_2 = ""
      end
    else
      A2_2 = ""
    end
  end
  L4_2 = Assistant
  L4_2 = L4_2.RunIntent
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "tk_housing:lockAllDoors"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = type
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if "boolean" == L3_2 then
        goto lbl_19
      end
    end
  end
  do return end
  ::lbl_19::
  L3_2 = L10_1
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = L12_1
    L4_2 = L2_2
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L3_2 = L16_1
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = Permissions
    L3_2 = L3_2.DenyCheater
    L4_2 = L2_2
    L5_2 = GetPlayerFromId
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L6_2 = "lockAllDoors"
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = Doors
  L3_2 = L3_2.SetHouseDoorsLocked
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = Notify
  L5_2 = L2_2
  L6_2 = _U
  if A1_2 then
    L7_2 = "assistant_locked"
    if L7_2 then
      goto lbl_59
    end
  end
  L7_2 = "assistant_unlocked"
  ::lbl_59::
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  if A1_2 then
    L7_2 = "error"
    if L7_2 then
      goto lbl_67
    end
  end
  L7_2 = "success"
  ::lbl_67::
  L4_2(L5_2, L6_2, L7_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterCallback
L29_1 = "tk_housing:getAssistant"
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L10_1
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = type
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if "number" == L3_2 then
      L3_2 = Main
      L3_2 = L3_2.GetProperty
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = L12_1
        L4_2 = A0_2
        L5_2 = A2_2
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          goto lbl_26
        end
      end
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_26::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Permissions
  L4_2 = L4_2.IsOwnerOrManager
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2 = nil ~= L3_2 and L4_2
  L5_2 = A1_2
  L6_2 = {}
  L7_2 = Assistant
  L7_2 = L7_2.GetSettings
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L6_2.settings = L7_2
  L6_2.canManage = L4_2
  L7_2 = L16_1
  L8_2 = A0_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.canLock = L7_2
  L7_2 = Lights
  L7_2 = L7_2.CanChange
  L8_2 = A0_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.canChangeLighting = L7_2
  L7_2 = Assistant
  L7_2 = L7_2.HasTablet
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L6_2.hasTablet = L7_2
  L7_2 = Assistant
  L7_2 = L7_2.GetIntents
  L8_2 = A0_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.intents = L7_2
  L7_2 = Doors
  L7_2 = L7_2.GetHouseDoors
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L6_2.doors = L7_2
  if L4_2 then
    L7_2 = Assistant
    L7_2 = L7_2.GetBills
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_88
    end
  end
  L7_2 = {}
  L7_2.count = 0
  L7_2.total = 0
  L7_2.overdue = false
  ::lbl_88::
  L6_2.bills = L7_2
  L5_2(L6_2)
end
L28_1(L29_1, L30_1)
L28_1 = Ambience
L28_1 = L28_1.RegisterField
L29_1 = "assistant"
L30_1 = {}
L30_1.permission = "owner"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L10_1
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "table" == L1_2 then
      L1_2 = next
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if nil ~= L1_2 then
        goto lbl_17
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_17::
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    if "persona" ~= L5_2 and "addressal" ~= L5_2 and "voice" ~= L5_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = A0_2.persona
  if nil ~= L1_2 then
    L1_2 = L11_1
    L2_2 = A0_2.persona
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = A0_2.addressal
  if nil ~= L1_2 then
    L2_2 = A0_2.addressal
    L1_2 = L1_1
    L1_2 = L1_2[L2_2]
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = A0_2.voice
  if nil ~= L1_2 then
    L1_2 = type
    L2_2 = A0_2.voice
    L1_2 = L1_2(L2_2)
    if "boolean" ~= L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = true
  return L1_2
end
L30_1.validate = L31_1
L28_1(L29_1, L30_1)
