local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1
L0_1 = "tk_housing:thumb:"
L1_1 = "tk_housing:thumbver"
L2_1 = "tk_housing:thumbcfg"
L3_1 = Config
L3_1 = L3_1.Furnishing
L3_1 = L3_1.thumbnails
if not L3_1 then
  L3_1 = {}
end
L4_1 = tonumber
L5_1 = L3_1.syncBandwidth
L4_1 = L4_1(L5_1)
if not L4_1 then
  L4_1 = 512000
end
L5_1 = tonumber
L6_1 = L3_1.resolution
L5_1 = L5_1(L6_1)
if not L5_1 then
  L5_1 = 256
end
L6_1 = 12
L7_1 = 100
L8_1 = math
L8_1 = L8_1.max
L9_1 = 307200
L10_1 = L5_1 * L5_1
L10_1 = L10_1 * 4
L8_1 = L8_1(L9_1, L10_1)
L9_1 = 2000
L10_1 = 60000
L11_1 = 120
L12_1 = 3
L13_1 = nil
L14_1 = 0
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = {}
  L1_2 = 0
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.Furniture
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = type
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if "table" == L14_2 then
        L14_2 = type
        L15_2 = L13_2.model
        L14_2 = L14_2(L15_2)
        if "string" == L14_2 then
          L14_2 = L13_2.model
          L14_2 = L0_2[L14_2]
          if nil == L14_2 then
            L14_2 = L13_2.model
            L0_2[L14_2] = true
            L1_2 = L1_2 + 1
          end
        end
      end
    end
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L13_1
  if not L1_2 then
    L1_2 = L15_1
    L1_2, L2_2 = L1_2()
    L14_1 = L2_2
    L13_1 = L1_2
  end
  L1_2 = L13_1
  L1_2 = L1_2[A0_2]
  L1_2 = true == L1_2
  return L1_2
end
function L17_1()
  local L0_2, L1_2
  L0_2 = L13_1
  if not L0_2 then
    L0_2 = L15_1
    L0_2, L1_2 = L0_2()
    L14_1 = L1_2
    L13_1 = L0_2
  end
  L0_2 = L14_1
  return L0_2
end
L18_1 = {}
L19_1 = {}
L20_1 = AddEventHandler
L21_1 = "playerDropped"
function L22_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L18_1
  L0_2[L1_2] = nil
  L1_2 = source
  L0_2 = L19_1
  L0_2[L1_2] = nil
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "tk_housing:requestThumbnails"
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L18_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    return
  end
  L2_2 = L19_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L3_2 = L19_1
    L3_2 = L3_2[L1_2]
    L2_2 = L2_2 - L3_2
    L3_2 = L9_1
    if L2_2 < L3_2 then
      L2_2 = TriggerLatentClientEvent
      L3_2 = "tk_housing:thumbnailsDelivered"
      L4_2 = L1_2
      L5_2 = L4_1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      return
    end
  end
  L2_2 = L18_1
  L2_2[L1_2] = true
  L2_2 = L17_1
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = 0
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L4_2 = L4_2 + 1
    if L2_2 < L4_2 then
      break
    end
    L12_2 = L7_1
    L12_2 = L4_2 % L12_2
    if 0 == L12_2 then
      L12_2 = Wait
      L13_2 = 0
      L12_2(L13_2)
    end
    L12_2 = L5_2[L11_2]
    if L12_2 then
    else
      L5_2[L11_2] = true
      L12_2 = L16_1
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = GetResourceKvpString
        L13_2 = L0_1
        L14_2 = L11_2
        L13_2 = L13_2 .. L14_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L13_2 = #L3_2
          L13_2 = L13_2 + 1
          L14_2 = {}
          L14_2.model = L11_2
          L14_2.image = L12_2
          L3_2[L13_2] = L14_2
          L13_2 = #L3_2
          L14_2 = L6_1
          if L13_2 >= L14_2 then
            L13_2 = TriggerLatentClientEvent
            L14_2 = "tk_housing:deliverThumbnails"
            L15_2 = L1_2
            L16_2 = L4_1
            L17_2 = L3_2
            L13_2(L14_2, L15_2, L16_2, L17_2)
            L13_2 = {}
            L3_2 = L13_2
            L13_2 = Wait
            L14_2 = 0
            L13_2(L14_2)
          end
        end
      end
    end
  end
  L6_2 = #L3_2
  if L6_2 > 0 then
    L6_2 = TriggerLatentClientEvent
    L7_2 = "tk_housing:deliverThumbnails"
    L8_2 = L1_2
    L9_2 = L4_1
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = TriggerLatentClientEvent
  L7_2 = "tk_housing:thumbnailsDelivered"
  L8_2 = L1_2
  L9_2 = L4_1
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L19_1
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L6_2[L1_2] = L7_2
  L6_2 = L18_1
  L6_2[L1_2] = nil
end
L20_1(L21_1, L22_1)
L20_1 = false
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L16_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = #A1_2
  if 0 == L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = #A1_2
  L3_2 = L8_1
  if L2_2 > L3_2 then
    L2_2 = L20_1
    if not L2_2 then
      L2_2 = true
      L20_1 = L2_2
      L2_2 = Utils
      L2_2 = L2_2.Warn
      L3_2 = "Did not accept a thumbnail upload because it is over the size cap"
      L4_2 = A0_2
      L5_2 = #A1_2
      L6_2 = L8_1
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
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = GetResourceKvpString
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if nil ~= L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = SetResourceKvp
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L22_1 = {}
L23_1 = AddEventHandler
L24_1 = "playerDropped"
function L25_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L22_1
  L0_2[L1_2] = nil
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "tk_housing:uploadThumbnail"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = L22_1
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L4_2 = {}
    L4_2.total = 0
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L4_2.windowStart = L5_2
    L4_2.windowCount = 0
    L3_2 = L4_2
    L4_2 = L22_1
    L4_2[L2_2] = L3_2
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L3_2.windowStart
  L5_2 = L4_2 - L5_2
  L6_2 = L10_1
  if L5_2 >= L6_2 then
    L3_2.windowStart = L4_2
    L3_2.windowCount = 0
  end
  L5_2 = L3_2.windowCount
  L5_2 = L5_2 + 1
  L3_2.windowCount = L5_2
  L5_2 = L3_2.total
  L5_2 = L5_2 + 1
  L3_2.total = L5_2
  L5_2 = L17_1
  L5_2 = L5_2()
  L6_2 = L12_1
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L11_1
  L8_2 = L17_1
  L8_2, L9_2, L10_2, L11_2 = L8_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L3_2.total
  if L5_2 < L7_2 then
    L7_2 = L3_2.warnedTotal
    if not L7_2 then
      L3_2.warnedTotal = true
      L7_2 = Utils
      L7_2 = L7_2.Warn
      L8_2 = "Player went over the session cap for thumbnail uploads"
      L9_2 = L2_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  else
    L7_2 = L3_2.windowCount
    if L6_2 < L7_2 then
      L7_2 = L3_2.warnedWindow
      if not L7_2 then
        L3_2.warnedWindow = true
        L7_2 = Utils
        L7_2 = L7_2.Warn
        L8_2 = "Player is uploading thumbnails too fast"
        L9_2 = L2_2
        L10_2 = L6_2
        L11_2 = L10_1
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
    else
      L7_2 = L21_1
      L8_2 = A0_2
      L9_2 = A1_2
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = TriggerClientEvent
  L8_2 = "tk_housing:thumbnailUploaded"
  L9_2 = L2_2
  L7_2(L8_2, L9_2)
end
L23_1(L24_1, L25_1)
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
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
  L2_2 = SetResourceKvpInt
  L3_2 = L1_1
  L4_2 = GetResourceKvpInt
  L5_2 = L1_1
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 + 1
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L22_1 = L2_2
  return L0_2
end
L24_1 = 3
L25_1 = string
L25_1 = L25_1.format
L26_1 = "%s|%s|%s|%s|%s|%s|%s|%s|%s|%s"
L27_1 = L24_1
L28_1 = L3_1.resolution
L29_1 = L3_1.keying
if not L29_1 then
  L29_1 = "difference"
end
L30_1 = L3_1.cameraAngle
L31_1 = L3_1.cameraPitch
L32_1 = L3_1.fitPadding
L33_1 = L3_1.captureFormat
L34_1 = L3_1.captureQuality
L35_1 = L3_1.cacheFormat
L36_1 = L3_1.cacheQuality
L25_1 = L25_1(L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1)
L26_1 = GetResourceKvpString
L27_1 = L2_1
L26_1 = L26_1(L27_1)
if L26_1 ~= L25_1 then
  L26_1 = L23_1
  L26_1()
  L26_1 = SetResourceKvp
  L27_1 = L2_1
  L28_1 = L25_1
  L26_1(L27_1, L28_1)
end
L26_1 = RegisterCallback
L27_1 = "tk_housing:getThumbnailVersion"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = GetResourceKvpInt
  L4_2 = L1_1
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L26_1(L27_1, L28_1)
L26_1 = Config
L26_1 = L26_1.Commands
L26_1 = L26_1.clearThumbnails
if L26_1 then
  L26_1 = Config
  L26_1 = L26_1.Commands
  L26_1 = L26_1.clearThumbnails
  if "" ~= L26_1 then
    L26_1 = RegisterCommand
    L27_1 = Config
    L27_1 = L27_1.Commands
    L27_1 = L27_1.clearThumbnails
    function L28_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
      L1_2 = A0_2
      if 0 ~= L1_2 then
        L2_2 = IsAdmin
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = Notify
          L3_2 = L1_2
          L4_2 = _U
          L5_2 = "admin_no_permission"
          L4_2 = L4_2(L5_2)
          L5_2 = "error"
          L2_2(L3_2, L4_2, L5_2)
          return
        end
      end
      L2_2 = L23_1
      L2_2 = L2_2()
      L3_2 = ShellThumbnails
      L3_2 = L3_2.Clear
      L3_2 = L3_2()
      L4_2 = TriggerClientEvent
      L5_2 = "tk_housing:thumbnailsCleared"
      L6_2 = -1
      L4_2(L5_2, L6_2)
      L4_2 = TriggerClientEvent
      L5_2 = "tk_housing:shellThumbnailsCleared"
      L6_2 = -1
      L4_2(L5_2, L6_2)
      if 0 ~= L1_2 then
        L4_2 = Notify
        L5_2 = L1_2
        L6_2 = _U
        L7_2 = "thumbnails_cleared"
        L6_2 = L6_2(L7_2)
        L7_2 = "success"
        L4_2(L5_2, L6_2, L7_2)
      end
      L4_2 = print
      L5_2 = "[tk_housing] cleared %s cached furniture thumbnail(s) and %s cached interior photo(s)"
      L6_2 = L5_2
      L5_2 = L5_2.format
      L7_2 = L2_2
      L8_2 = L3_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L29_1 = false
    L26_1(L27_1, L28_1, L29_1)
  end
end
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = print
    L4_2 = "[tk_housing] usage: %s <playerId>"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A0_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = nil
    return L3_2
  end
  L3_2 = GetPlayerName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L3_2 = print
    L4_2 = "[tk_housing] no player online with id %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = nil
    return L3_2
  end
  return L2_2
end
L27_1 = Config
L27_1 = L27_1.Commands
L27_1 = L27_1.bakeThumbnails
if L27_1 then
  L27_1 = Config
  L27_1 = L27_1.Commands
  L27_1 = L27_1.bakeThumbnails
  if "" ~= L27_1 then
    L27_1 = RegisterCommand
    L28_1 = Config
    L28_1 = L28_1.Commands
    L28_1 = L28_1.bakeThumbnails
    function L29_1(A0_2, A1_2)
      local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
      L2_2 = L26_1
      L3_2 = Config
      L3_2 = L3_2.Commands
      L3_2 = L3_2.bakeThumbnails
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        return
      end
      L3_2 = TriggerClientEvent
      L4_2 = "tk_housing:bakeThumbnails"
      L5_2 = L2_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = print
      L4_2 = "[tk_housing] baking %s furniture thumbnail(s) on %s, progress prints on their console"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = L17_1
      L6_2 = L6_2()
      L7_2 = GetPlayerName
      L8_2 = L2_2
      L7_2, L8_2 = L7_2(L8_2)
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
    L30_1 = true
    L27_1(L28_1, L29_1, L30_1)
  end
end
L27_1 = Config
L27_1 = L27_1.Commands
L27_1 = L27_1.stopBakeThumbnails
if L27_1 then
  L27_1 = Config
  L27_1 = L27_1.Commands
  L27_1 = L27_1.stopBakeThumbnails
  if "" ~= L27_1 then
    L27_1 = RegisterCommand
    L28_1 = Config
    L28_1 = L28_1.Commands
    L28_1 = L28_1.stopBakeThumbnails
    function L29_1(A0_2, A1_2)
      local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
      L2_2 = L26_1
      L3_2 = Config
      L3_2 = L3_2.Commands
      L3_2 = L3_2.stopBakeThumbnails
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        return
      end
      L3_2 = TriggerClientEvent
      L4_2 = "tk_housing:bakeThumbnails"
      L5_2 = L2_2
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = print
      L4_2 = "[tk_housing] asked %s to stop baking thumbnails"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = GetPlayerName
      L7_2 = L2_2
      L6_2, L7_2 = L6_2(L7_2)
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L30_1 = true
    L27_1(L28_1, L29_1, L30_1)
  end
end
