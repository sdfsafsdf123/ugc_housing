local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
ShellThumbnails = L0_1
L0_1 = "tk_housing:shellthumb:"
L1_1 = Config
L1_1 = L1_1.ShellBuild
L1_1 = L1_1.photo
L2_1 = tonumber
L3_1 = L1_1.syncBandwidth
L2_1 = L2_1(L3_1)
if not L2_1 then
  L2_1 = 512000
end
L3_1 = math
L3_1 = L3_1.max
L4_1 = 2097152
L5_1 = tonumber
L6_1 = L1_1.width
L5_1 = L5_1(L6_1)
if not L5_1 then
  L5_1 = 640
end
L6_1 = tonumber
L7_1 = L1_1.height
L6_1 = L6_1(L7_1)
if not L6_1 then
  L6_1 = 400
end
L5_1 = L5_1 * L6_1
L5_1 = L5_1 * 4
L3_1 = L3_1(L4_1, L5_1)
L4_1 = 4
L5_1 = 1000
L6_1 = 60000
L7_1 = 20
function L8_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.HouseInteriors
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = Config
    L1_2 = L1_2.GarageInteriors
    L1_2 = L1_2[A0_2]
  end
  return L1_2
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.HouseInteriors
  L5_2 = Config
  L5_2 = L5_2.GarageInteriors
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2 in L8_2, L9_2, L10_2, L11_2 do
      L13_2 = L0_2[L12_2]
      if not L13_2 then
        L0_2[L12_2] = true
        L1_2 = L1_2 + 1
      end
    end
  end
  return L1_2
end
L10_1 = {}
L11_1 = {}
L12_1 = AddEventHandler
L13_1 = "playerDropped"
function L14_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L10_1
  L0_2[L1_2] = nil
  L1_2 = source
  L0_2 = L11_1
  L0_2[L1_2] = nil
end
L12_1(L13_1, L14_1)
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L9_1
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = {}
  L5_2 = 0
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L5_2 = L5_2 + 1
    if L2_2 < L5_2 then
      break
    end
    L12_2 = type
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if "string" == L12_2 then
      L12_2 = L3_2[L11_2]
      if not L12_2 then
        L12_2 = type
        L13_2 = L8_1
        L14_2 = L11_2
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        if "table" == L12_2 then
          L3_2[L11_2] = true
          L12_2 = #L4_2
          L12_2 = L12_2 + 1
          L13_2 = {}
          L13_2.key = L11_2
          L14_2 = GetResourceKvpString
          L15_2 = L0_1
          L16_2 = L11_2
          L15_2 = L15_2 .. L16_2
          L14_2 = L14_2(L15_2)
          if not L14_2 then
            L14_2 = false
          end
          L13_2.image = L14_2
          L4_2[L12_2] = L13_2
          L12_2 = #L4_2
          L13_2 = L4_1
          if L12_2 >= L13_2 then
            L12_2 = TriggerLatentClientEvent
            L13_2 = "tk_housing:deliverShellThumbnails"
            L14_2 = A0_2
            L15_2 = L2_1
            L16_2 = L4_2
            L12_2(L13_2, L14_2, L15_2, L16_2)
            L12_2 = {}
            L4_2 = L12_2
            L12_2 = Wait
            L13_2 = 0
            L12_2(L13_2)
          end
        end
      end
    end
  end
  L6_2 = #L4_2
  if L6_2 > 0 then
    L6_2 = TriggerLatentClientEvent
    L7_2 = "tk_housing:deliverShellThumbnails"
    L8_2 = A0_2
    L9_2 = L2_1
    L10_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L13_1 = RegisterNetEvent
L14_1 = "tk_housing:requestShellThumbnails"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L10_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = L9_1
    L3_2 = L3_2()
    L4_2 = ipairs
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = #L2_2
      if L3_2 <= L10_2 then
        break
      end
      L10_2 = #L2_2
      L10_2 = L10_2 + 1
      L2_2[L10_2] = L9_2
    end
    return
  end
  L3_2 = L10_1
  L4_2 = {}
  L3_2[L1_2] = L4_2
  L3_2 = L12_1
  L4_2 = L1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  while true do
    L3_2 = L10_1
    L3_2 = L3_2[L1_2]
    if not L3_2 then
      break
    end
    L3_2 = L10_1
    L3_2 = L3_2[L1_2]
    L3_2 = #L3_2
    if not (L3_2 > 0) then
      break
    end
    L3_2 = L10_1
    L3_2 = L3_2[L1_2]
    L4_2 = L10_1
    L5_2 = {}
    L4_2[L1_2] = L5_2
    L4_2 = Wait
    L5_2 = L5_1
    L4_2(L5_2)
    L4_2 = L12_1
    L5_2 = L1_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = L10_1
  L3_2[L1_2] = nil
end
L13_1(L14_1, L15_1)
L13_1 = false
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = #A1_2
    if 0 ~= L2_2 then
      goto lbl_11
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_11::
  L2_2 = #A1_2
  L3_2 = L3_1
  if L2_2 > L3_2 then
    L2_2 = L13_1
    if not L2_2 then
      L2_2 = true
      L13_1 = L2_2
      L2_2 = Utils
      L2_2 = L2_2.Warn
      L3_2 = "Did not accept an interior photo because it is over the size cap, lower the width, height or quality in Config.ShellBuild.photo"
      L4_2 = A0_2
      L5_2 = #A1_2
      L6_2 = L3_1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L2_2 = false
    return L2_2
  end
  L2_2 = Utils
  L2_2 = L2_2.HasImageHeader
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = SetResourceKvp
  L3_2 = L0_1
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L15_1 = RegisterNetEvent
L16_1 = "tk_housing:uploadShellThumbnail"
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "boolean" == L4_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L4_2 = type
  L5_2 = L8_1
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if "table" ~= L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.Debug
    L5_2 = "interior photo upload for a key that does not exist"
    L6_2 = L3_2
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = TriggerClientEvent
    L5_2 = "tk_housing:shellThumbnailUploaded"
    L6_2 = L3_2
    L7_2 = A0_2
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  if A2_2 then
    L4_2 = IsAdmin
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.Debug
      L5_2 = "interior photo overwrite refused: player is not an admin"
      L6_2 = L3_2
      L7_2 = A0_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = TriggerClientEvent
      L5_2 = "tk_housing:shellThumbnailUploaded"
      L6_2 = L3_2
      L7_2 = A0_2
      L8_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2)
      return
    end
  end
  L4_2 = L11_1
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L5_2 = {}
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L5_2.windowStart = L6_2
    L5_2.windowCount = 0
    L4_2 = L5_2
    L5_2 = L11_1
    L5_2[L3_2] = L4_2
  end
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = L4_2.windowStart
  L6_2 = L5_2 - L6_2
  L7_2 = L6_1
  if L6_2 >= L7_2 then
    L4_2.windowStart = L5_2
    L4_2.windowCount = 0
  end
  L6_2 = L4_2.windowCount
  L6_2 = L6_2 + 1
  L4_2.windowCount = L6_2
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L7_1
  L8_2 = L9_1
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = false
  L8_2 = L4_2.windowCount
  if L6_2 < L8_2 then
    L8_2 = L4_2.warned
    if not L8_2 then
      L4_2.warned = true
      L8_2 = Utils
      L8_2 = L8_2.Warn
      L9_2 = "Player is uploading interior photos too fast"
      L10_2 = L3_2
      L11_2 = L6_2
      L12_2 = L6_1
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  else
    if not A2_2 then
      L8_2 = GetResourceKvpString
      L9_2 = L0_1
      L10_2 = A0_2
      L9_2 = L9_2 .. L10_2
      L8_2 = L8_2(L9_2)
      if nil ~= L8_2 then
        L8_2 = Utils
        L8_2 = L8_2.Debug
        L9_2 = "interior photo already cached, keeping the first one"
        L10_2 = L3_2
        L11_2 = A0_2
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = TriggerClientEvent
        L9_2 = "tk_housing:shellThumbnailChanged"
        L10_2 = L3_2
        L11_2 = A0_2
        L8_2(L9_2, L10_2, L11_2)
        L7_2 = true
    end
    else
      L8_2 = L14_1
      L9_2 = A0_2
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L8_2
      if L7_2 then
        L8_2 = TriggerClientEvent
        L9_2 = "tk_housing:shellThumbnailChanged"
        L10_2 = -1
        L11_2 = A0_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L8_2 = TriggerClientEvent
  L9_2 = "tk_housing:shellThumbnailUploaded"
  L10_2 = L3_2
  L11_2 = A0_2
  L12_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
end
L15_1(L16_1, L17_1)
L15_1 = ShellThumbnails
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DeleteResourceKvp
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L15_1.Delete = L16_1
L15_1 = ShellThumbnails
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetResourceKvpString
  L3_2 = L0_1
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = SetResourceKvp
    L4_2 = L0_1
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L15_1.Copy = L16_1
L15_1 = ShellThumbnails
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 0
  L1_2 = StartFindKvp
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  if -1 ~= L1_2 then
    L2_2 = FindKvp
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    while L2_2 do
      L3_2 = DeleteResourceKvp
      L4_2 = L2_2
      L3_2(L4_2)
      L0_2 = L0_2 + 1
      L3_2 = FindKvp
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
    L3_2 = EndFindKvp
    L4_2 = L1_2
    L3_2(L4_2)
  end
  L2_2 = {}
  L11_1 = L2_2
  return L0_2
end
L15_1.Clear = L16_1
