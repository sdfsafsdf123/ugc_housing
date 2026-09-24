local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
Interiors = L0_1
L0_1 = Interiors
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if "house" == A0_2 then
    L3_2 = Config
    L3_2 = L3_2.HouseInteriors
    L3_2 = L3_2[A1_2]
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = Config
  L3_2 = L3_2.GarageInteriors
  L3_2 = L3_2[A1_2]
  ::lbl_11::
  if L3_2 then
    L4_2 = L3_2.exits
    if L4_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L4_2 = L3_2.exits
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.label
    if L11_2 == A2_2 then
      return L9_2
    end
  end
  return
end
L0_1.GetExitIndexByName = L1_1
L0_1 = RegisterCallback
L1_1 = "tk_housing:canTakePhoto"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = Config
  L3_2 = L3_2.Frames
  if L3_2 then
    L3_2 = L3_2.enable
  end
  L3_2 = true == L3_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = 1500000
L1_1 = 10000
L2_1 = {}
L3_1 = RegisterNetEvent
L4_1 = "tk_housing:uploadPropertyPhoto"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Main
  L2_2 = L2_2.CanCreateProperties
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsAdmin
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = Webhook
      L3_2 = _U
      L4_2 = "webhook_cheater"
      L5_2 = Utils
      L5_2 = L5_2.GetIdentifiers
      L6_2 = L1_2
      L5_2 = L5_2(L6_2)
      L6_2 = "Property photo upload without permission"
      L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = TriggerClientEvent
      L3_2 = "tk_housing:propertyPhotoDone"
      L4_2 = L1_2
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
      return
    end
  end
  L2_2 = type
  L3_2 = ConfigSV
  L3_2 = L3_2.FivemanageToken
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = ConfigSV
    L2_2 = L2_2.FivemanageToken
    if "" ~= L2_2 then
      goto lbl_49
    end
  end
  L2_2 = Utils
  L2_2 = L2_2.Warn
  L3_2 = "No fivemanage token set, can't take photo. If you are the server owner, add one in config/server.lua, refer to tk_housing documentation"
  L2_2(L3_2)
  L2_2 = TriggerClientEvent
  L3_2 = "tk_housing:propertyPhotoDone"
  L4_2 = L1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  do return end
  ::lbl_49::
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = #A0_2
    L3_2 = L0_1
    if not (L2_2 > L3_2) then
      goto lbl_78
    end
  end
  L2_2 = Utils
  L2_2 = L2_2.Debug
  L3_2 = "upload property photo stopped: bad data url"
  L4_2 = L1_2
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = #A0_2
    if L5_2 then
      goto lbl_71
    end
  end
  L5_2 = nil
  ::lbl_71::
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerClientEvent
  L3_2 = "tk_housing:propertyPhotoDone"
  L4_2 = L1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  do return end
  ::lbl_78::
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L2_1
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = L2_1
    L3_2 = L3_2[L1_2]
    L3_2 = L2_2 - L3_2
    L4_2 = L1_1
    if L3_2 < L4_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "tk_housing:propertyPhotoDone"
      L5_2 = L1_2
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      return
    end
  end
  L3_2 = L2_1
  L3_2[L1_2] = L2_2
  L3_2 = Utils
  L3_2 = L3_2.Debug
  L4_2 = "upload property photo"
  L5_2 = L1_2
  L6_2 = #A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Photos
  L3_2 = L3_2.GetFilename
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.Debug
    L5_2 = "upload property photo stopped: not a jpeg or png data url"
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = TriggerClientEvent
    L5_2 = "tk_housing:propertyPhotoDone"
    L6_2 = L1_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = UploadPhoto
  L5_2 = A0_2
  L6_2 = L3_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = Utils
    L1_3 = L1_3.Debug
    L2_3 = "upload property photo done"
    L3_3 = L1_2
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = TriggerClientEvent
    L2_3 = "tk_housing:propertyPhotoDone"
    L3_3 = L1_2
    L4_3 = A0_3 or L4_3
    if not A0_3 then
      L4_3 = false
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L2_1
  L0_2[L1_2] = nil
end
L3_1(L4_1, L5_1)
L3_1 = RegisterCallback
L4_1 = "tk_housing:isAdmin"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = IsAdmin
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L3_1(L4_1, L5_1)
