local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = {}
Television = L0_1
L0_1 = {}
L1_1 = 512
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "[^%w%-%.~_]"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = "%%%02X"
    L2_3 = L1_3
    L1_3 = L1_3.format
    L4_3 = A0_3
    L3_3 = A0_3.byte
    L3_3, L4_3 = L3_3(L4_3)
    return L1_3(L2_3, L3_3, L4_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2 == A1_2
  return L2_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Config
  L1_2 = L1_2.Television
  L1_2 = L1_2.allowedHosts
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = #L1_2
    if 0 ~= L2_2 then
      goto lbl_14
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_14::
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^[%w%.%-]+$"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L3_1
    L9_2 = A0_2
    L11_2 = L7_2
    L10_2 = L7_2.lower
    L10_2, L11_2 = L10_2(L11_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L5_1 = Television
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = #A0_2
    L3_2 = L1_1
    if not (L2_2 > L3_2) then
      goto lbl_12
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_12::
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^https?://([^/]+)"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.lower
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.gsub
  L5_2 = ":%d+$"
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L3_2
  if A1_2 then
    L3_2 = L4_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = nil
      return L3_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.match
  L5_2 = "^https?://[^/]+(/[^?#]*)"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = "/"
  end
  L5_2 = L3_2
  L4_2 = L3_2.lower
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.match
  L7_2 = "%.mp4$"
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.match
    L7_2 = "%.webm$"
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.match
      L7_2 = "%.ogv$"
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        goto lbl_61
      end
    end
  end
  L5_2 = "file"
  L6_2 = A0_2
  do return L5_2, L6_2 end
  ::lbl_61::
  L6_2 = L4_2
  L5_2 = L4_2.match
  L7_2 = "%.m3u8$"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = "stream"
    L6_2 = A0_2
    return L5_2, L6_2
  end
  L5_2 = nil
  if "youtu.be" == L2_2 then
    L7_2 = L3_2
    L6_2 = L3_2.match
    L8_2 = "^/([%w%-_]+)"
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  else
    L6_2 = L3_1
    L7_2 = L2_2
    L8_2 = "youtube.com"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.match
      L8_2 = "[?&]v=([%w%-_]+)"
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2 or L5_2
      if not L6_2 then
        L7_2 = L3_2
        L6_2 = L3_2.match
        L8_2 = "^/shorts/([%w%-_]+)"
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2 or L5_2
        if not L6_2 then
          L7_2 = L3_2
          L6_2 = L3_2.match
          L8_2 = "^/live/([%w%-_]+)"
          L6_2 = L6_2(L7_2, L8_2)
          L5_2 = L6_2 or L5_2
          if not L6_2 then
            L7_2 = L3_2
            L6_2 = L3_2.match
            L8_2 = "^/embed/([%w%-_]+)"
            L6_2 = L6_2(L7_2, L8_2)
            L5_2 = L6_2
          end
        end
      end
    end
  end
  if L5_2 then
    L6_2 = "youtube"
    L7_2 = L5_2
    return L6_2, L7_2
  end
  L6_2 = L3_1
  L7_2 = L2_2
  L8_2 = "twitch.tv"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = nil
    L7_2 = "twitch"
    return L6_2, L7_2
  end
  L6_2 = "page"
  L7_2 = A0_2
  return L6_2, L7_2
end
L5_1.Resolve = L6_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L3_2 = ":"
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L2_2 = L2_2 .. L3_2 .. L4_2
  return L2_2
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L5_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2[L4_2]
  end
  return L3_2
end
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = L5_1
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2[L5_2] = A3_2
  L5_2 = L0_1
  L6_2 = next
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L6_2 = L4_2 or L6_2
  if not L6_2 or not L4_2 then
    L6_2 = nil
  end
  L5_2[A0_2] = L6_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.Television
  L2_2 = L2_2.maxPlaying
  if not L2_2 then
    L2_2 = 2
  end
  L3_2 = L8_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L2_2 <= L3_2 then
    L3_2 = false
    L4_2 = L2_2
    return L3_2, L4_2
  end
  L3_2 = true
  return L3_2
end
function L10_1(A0_2)
  local L1_2
  L1_2 = "file" == A0_2 or "youtube" == A0_2
  return L1_2
end
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.kind
  if "file" == L1_2 then
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
    L2_2 = A0_2.startedAt
    L1_2 = L1_2 - L2_2
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = nil
  ::lbl_13::
  return L1_2
end
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utilities
  if L1_2 then
    L1_2 = L1_2.GetStatus
  end
  if L1_2 then
    L1_2 = Utilities
    L1_2 = L1_2.GetStatus
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  L1_2 = {}
  L1_2.electricity = true
  L1_2.water = true
  L1_2.internet = true
  return L1_2
end
L13_1 = Television
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Television
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Television
  L1_2 = L1_2.requireUtilities
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = L12_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.electricity
  L2_2 = true == L2_2
  return L2_2
end
L13_1.IsActive = L14_1
L13_1 = Television
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L6_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = nil ~= L3_2
  return L3_2
end
L13_1.IsPlaying = L14_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Config
  L3_2 = L3_2.Television
  L3_2 = L3_2.requireUtilities
  if not L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L12_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Electricity
  if L4_2 then
    L4_2 = Electricity
    L4_2 = L4_2.IsDevicePowered
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
  end
  if nil ~= L4_2 then
    L3_2.electricity = L4_2
  end
  L5_2 = Utils
  L5_2 = L5_2.MissingService
  L6_2 = L3_2
  L7_2 = {}
  L8_2 = "electricity"
  L9_2 = "internet"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  return L5_2(L6_2, L7_2)
end
L14_1 = Television
function L15_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
L14_1.Clear = L15_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
      if L10_2 then
        L11_2 = Utils
        L11_2 = L11_2.IsTelevision
        L12_2 = L10_2.model
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = Utils
          L11_2 = L11_2.GetScreenData
          L12_2 = L10_2.model
          L11_2 = L11_2(L12_2)
          L12_2 = L7_2
          return L11_2, L12_2
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
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
  L3_2 = L14_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = A1_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L16_1 = Television
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L14_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = L5_1
  L5_2 = L3_2
  L6_2 = A1_2
  return L4_2(L5_2, L6_2)
end
L16_1.GetScreenKey = L17_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2.furnitureType
  L1_2.furnitureType = L2_2
  L2_2 = A0_2.furnitureId
  L1_2.furnitureId = L2_2
  L2_2 = A0_2.index
  L1_2.index = L2_2
  L2_2 = A0_2.label
  L1_2.label = L2_2
  L2_2 = A0_2.url
  L1_2.url = L2_2
  L2_2 = A0_2.kind
  L1_2.kind = L2_2
  L2_2 = A0_2.src
  L1_2.src = L2_2
  L2_2 = A0_2.fullPage
  L1_2.fullPage = L2_2
  L2_2 = A0_2.startedAt
  L1_2.startedAt = L2_2
  L2_2 = L11_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.offset = L2_2
  L2_2 = A0_2.volume
  L1_2.volume = L2_2
  L2_2 = A0_2.speakerGroup
  L1_2.speakerGroup = L2_2
  return L1_2
end
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A3_2 then
    L4_2 = L16_1
    L5_2 = A3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_9
    end
  end
  L4_2 = nil
  ::lbl_9::
  L5_2 = ipairs
  L6_2 = Main
  L6_2 = L6_2.GetPropertyPlayers
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = TriggerClientEvent
    L12_2 = "tk_housing:televisionChanged"
    L13_2 = L10_2
    L14_2 = A0_2
    L15_2 = A1_2
    L16_2 = A2_2
    L17_2 = L4_2
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
end
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Music
  L2_2 = L2_2.GetGroups
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A1_2.speakerGroup
  end
  L3_2.group = L4_2
  L3_2.groups = L2_2
  if not A1_2 then
    L3_2.available = false
  else
    L4_2 = L10_1
    L5_2 = A1_2.kind
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L3_2.available = false
      L3_2.reason = "kind"
    else
      L4_2 = Config
      L4_2 = L4_2.Music
      if L4_2 then
        L4_2 = L4_2.enable
      end
      if L4_2 then
        L4_2 = #L2_2
        if 0 ~= L4_2 then
          goto lbl_37
        end
      end
      L3_2.available = false
      L3_2.reason = "noSpeakers"
      goto lbl_38
      ::lbl_37::
      L3_2.available = true
    end
  end
  ::lbl_38::
  return L3_2
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L5_1
  L3_2 = A1_2.furnitureType
  L4_2 = A1_2.furnitureId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.speakerGroup
  if not L3_2 then
    L3_2 = Music
    L3_2 = L3_2.StopTelevision
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L11_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = Music
  L4_2 = L4_2.StartTelevision
  L5_2 = A0_2
  L6_2 = A1_2.speakerGroup
  L7_2 = A1_2
  L8_2 = L3_2
  L9_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if not L4_2 then
    A1_2.speakerGroup = nil
  end
end
L20_1 = Television
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L2_2[A1_2]
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.speakerGroup
  end
  if not L3_2 then
    return
  end
  L2_2.speakerGroup = nil
  L3_2 = L17_1
  L4_2 = A0_2
  L5_2 = L2_2.furnitureType
  L6_2 = L2_2.furnitureId
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L20_1.ClearSpeakers = L21_1
L20_1 = Television
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.speakerGroup
    if L9_2 == A1_2 then
      L8_2.speakerGroup = A2_2
      L9_2 = L17_1
      L10_2 = A0_2
      L11_2 = L8_2.furnitureType
      L12_2 = L8_2.furnitureId
      L13_2 = L8_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L20_1.MoveSpeakers = L21_1
L20_1 = Television
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L6_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    return
  end
  L3_2 = Electricity
  if L3_2 then
    L3_2 = Electricity
    L3_2 = L3_2.Invalidate
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = L7_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Music
  L3_2 = L3_2.StopTelevision
  L4_2 = A0_2
  L5_2 = L5_1
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L17_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L20_1.ScreenRemoved = L21_1
L20_1 = RegisterCallback
L21_1 = "tk_housing:getTelevision"
function L22_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = Config
  L5_2 = L5_2.Television
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = L15_1
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L7_2 = A1_2
    L8_2 = {}
    L7_2(L8_2)
    return
  end
  L7_2 = {}
  L8_2 = ipairs
  L9_2 = Config
  L9_2 = L9_2.Television
  L9_2 = L9_2.channels
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = {}
    L14_2.index = L12_2
    L15_2 = L13_2.label
    L14_2.label = L15_2
    L15_2 = L13_2.url
    L14_2.url = L15_2
    L7_2[L12_2] = L14_2
  end
  L8_2 = {}
  L9_2 = pairs
  L10_2 = L0_1
  L10_2 = L10_2[A2_2]
  if not L10_2 then
    L10_2 = {}
  end
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = #L8_2
    L15_2 = L15_2 + 1
    L16_2 = L16_1
    L17_2 = L14_2
    L16_2 = L16_2(L17_2)
    L8_2[L15_2] = L16_2
  end
  L9_2 = L6_1
  L10_2 = A2_2
  L11_2 = L6_2
  L12_2 = A4_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = A1_2
  L11_2 = {}
  L11_2.channels = L7_2
  if L9_2 then
    L12_2 = L16_1
    L13_2 = L9_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      goto lbl_82
    end
  end
  L12_2 = nil
  ::lbl_82::
  L11_2.current = L12_2
  L11_2.screens = L8_2
  L12_2 = L18_1
  L13_2 = A2_2
  L14_2 = L9_2
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.speakers = L12_2
  L12_2 = L9_2 or L12_2
  if L9_2 then
    L12_2 = L9_2.volume
  end
  if not L12_2 then
    L12_2 = Config
    L12_2 = L12_2.Television
    L12_2 = L12_2.defaultVolume
  end
  L11_2.volume = L12_2
  L12_2 = Config
  L12_2 = L12_2.Television
  L12_2 = L12_2.allowCustomUrl
  L12_2 = true == L12_2
  L11_2.allowCustomUrl = L12_2
  L12_2 = Television
  L12_2 = L12_2.IsActive
  L13_2 = A2_2
  L12_2 = L12_2(L13_2)
  L11_2.powered = L12_2
  L11_2.canControl = true
  L12_2 = Config
  L12_2 = L12_2.Television
  L12_2 = L12_2.browser
  if L12_2 then
    L12_2 = L12_2.enable
  end
  L12_2 = true == L12_2
  L11_2.browser = L12_2
  L12_2 = Config
  L12_2 = L12_2.Television
  L12_2 = L12_2.interactive
  L12_2 = true == L12_2
  L11_2.interactive = L12_2
  L10_2(L11_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "tk_housing:setChannel"
function L22_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L5_2 = source
  L6_2 = Config
  L6_2 = L6_2.Television
  if L6_2 then
    L6_2 = L6_2.enable
  end
  if not L6_2 then
    return
  end
  L6_2 = Main
  L6_2 = L6_2.AllowChange
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L6_2 = L15_1
  L7_2 = L5_2
  L8_2 = A0_2
  L9_2 = A2_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    return
  end
  L8_2 = L13_1
  L9_2 = A0_2
  L10_2 = L7_2
  L11_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if L8_2 then
    L9_2 = Notify
    L10_2 = L5_2
    L11_2 = _U
    L12_2 = "utility_off"
    L13_2 = _U
    L14_2 = "svc_"
    L15_2 = L8_2
    L16_2 = "_partitive"
    L14_2 = L14_2 .. L15_2 .. L16_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L12_2 = "error"
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = L6_1
  L10_2 = A0_2
  L11_2 = L7_2
  L12_2 = A2_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = L9_1
  L11_2 = A0_2
  L12_2 = L9_2
  L10_2, L11_2 = L10_2(L11_2, L12_2)
  if not L10_2 then
    L12_2 = Notify
    L13_2 = L5_2
    L14_2 = _U
    L15_2 = "television_limit"
    L16_2 = L11_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = "error"
    L12_2(L13_2, L14_2, L15_2)
    return
  end
  L12_2 = nil
  L13_2 = type
  L14_2 = A3_2
  L13_2 = L13_2(L14_2)
  if "number" == L13_2 then
    L13_2 = Config
    L13_2 = L13_2.Television
    L13_2 = L13_2.channels
    L13_2 = L13_2[A3_2]
    if not L13_2 then
      return
    end
    L14_2 = Television
    L14_2 = L14_2.Resolve
    L15_2 = L13_2.url
    L14_2, L15_2, L16_2 = L14_2(L15_2)
    if not L14_2 then
      if "twitch" == L16_2 then
        L17_2 = Notify
        L18_2 = L5_2
        L19_2 = _U
        L20_2 = "television_twitch_unsupported"
        L19_2 = L19_2(L20_2)
        L20_2 = "error"
        L17_2(L18_2, L19_2, L20_2)
      end
      return
    end
    L17_2 = {}
    L17_2.index = A3_2
    L18_2 = L13_2.label
    L17_2.label = L18_2
    L18_2 = L13_2.url
    L17_2.url = L18_2
    L17_2.kind = L14_2
    L17_2.src = L15_2
    L12_2 = L17_2
  else
    L13_2 = type
    L14_2 = A4_2
    L13_2 = L13_2(L14_2)
    if "string" == L13_2 then
      L13_2 = Config
      L13_2 = L13_2.Television
      L13_2 = L13_2.allowCustomUrl
      if not L13_2 then
        return
      end
      L14_2 = A4_2
      L13_2 = A4_2.match
      L15_2 = "^https?://"
      L13_2 = L13_2(L14_2, L15_2)
      if not L13_2 then
        L13_2 = #A4_2
        L14_2 = L1_1
        if L13_2 > L14_2 then
          return
        end
        L13_2 = Config
        L13_2 = L13_2.Television
        L13_2 = L13_2.browser
        L14_2 = L13_2 or L14_2
        if L13_2 then
          L14_2 = L13_2.enable
        end
        if L14_2 then
          L14_2 = L13_2.search
          if L14_2 then
            goto lbl_139
          end
        end
        do return end
        ::lbl_139::
        L15_2 = A4_2
        L14_2 = A4_2.match
        L16_2 = "^%s*(.-)%s*$"
        L14_2 = L14_2(L15_2, L16_2)
        if "" == L14_2 then
          return
        end
        L15_2 = L13_2.search
        L16_2 = L15_2
        L15_2 = L15_2.format
        L17_2 = L2_1
        L18_2 = L14_2
        L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
        A4_2 = L15_2
        L15_2 = #A4_2
        L16_2 = L1_1
        if L15_2 > L16_2 then
          return
        end
      end
      L13_2 = Television
      L13_2 = L13_2.Resolve
      L14_2 = A4_2
      L15_2 = true
      L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
      if not L13_2 then
        if "twitch" == L15_2 then
          L16_2 = Notify
          L17_2 = L5_2
          L18_2 = _U
          L19_2 = "television_twitch_unsupported"
          L18_2 = L18_2(L19_2)
          L19_2 = "error"
          L16_2(L17_2, L18_2, L19_2)
        end
        return
      end
      L16_2 = {}
      L16_2.url = A4_2
      L16_2.kind = L13_2
      L16_2.src = L14_2
      L12_2 = L16_2
    else
      return
    end
  end
  L13_2 = L12_2.kind
  if "page" == L13_2 then
    L13_2 = Config
    L13_2 = L13_2.Television
    L13_2 = L13_2.allowFullPage
    L13_2 = true == L13_2
    L12_2.fullPage = L13_2
  end
  L12_2.furnitureType = L7_2
  L12_2.furnitureId = A2_2
  L13_2 = os
  L13_2 = L13_2.time
  L13_2 = L13_2()
  L12_2.startedAt = L13_2
  L13_2 = L9_2 or L13_2
  if L9_2 then
    L13_2 = L9_2.volume
  end
  if not L13_2 then
    L13_2 = Config
    L13_2 = L13_2.Television
    L13_2 = L13_2.defaultVolume
  end
  L12_2.volume = L13_2
  L13_2 = L10_1
  L14_2 = L12_2.kind
  L13_2 = L13_2(L14_2)
  if L13_2 then
    L13_2 = L9_2 or L13_2
    if L9_2 then
      L13_2 = L9_2.speakerGroup
    end
    if L13_2 then
      goto lbl_219
    end
  end
  L13_2 = nil
  ::lbl_219::
  L12_2.speakerGroup = L13_2
  L13_2 = Electricity
  if L13_2 and not L9_2 then
    L13_2 = Electricity
    L13_2 = L13_2.Invalidate
    L14_2 = A0_2
    L13_2(L14_2)
  end
  L13_2 = L7_1
  L14_2 = A0_2
  L15_2 = L7_2
  L16_2 = A2_2
  L17_2 = L12_2
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = L19_1
  L14_2 = A0_2
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = L17_1
  L14_2 = A0_2
  L15_2 = L7_2
  L16_2 = A2_2
  L17_2 = L12_2
  L13_2(L14_2, L15_2, L16_2, L17_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "tk_housing:openBrowser"
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Television
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.Television
    L4_2 = L4_2.browser
    if L4_2 then
      L4_2 = L4_2.enable
    end
    if L4_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L15_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L6_2 = L13_1
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L7_2 = Notify
    L8_2 = L3_2
    L9_2 = _U
    L10_2 = "utility_off"
    L11_2 = _U
    L12_2 = "svc_"
    L13_2 = L6_2
    L14_2 = "_partitive"
    L12_2 = L12_2 .. L13_2 .. L14_2
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L10_2 = "error"
    L7_2(L8_2, L9_2, L10_2)
    return
  end
  L7_2 = L6_1
  L8_2 = A0_2
  L9_2 = L5_2
  L10_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L9_1
  L9_2 = A0_2
  L10_2 = L7_2
  L8_2, L9_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L10_2 = Notify
    L11_2 = L3_2
    L12_2 = _U
    L13_2 = "television_limit"
    L14_2 = L9_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = "error"
    L10_2(L11_2, L12_2, L13_2)
    return
  end
  L10_2 = Television
  L10_2 = L10_2.Resolve
  L11_2 = Config
  L11_2 = L11_2.Television
  L11_2 = L11_2.browser
  L11_2 = L11_2.homepage
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  if not L10_2 then
    if "twitch" == L12_2 then
      L13_2 = Notify
      L14_2 = L3_2
      L15_2 = _U
      L16_2 = "television_twitch_unsupported"
      L15_2 = L15_2(L16_2)
      L16_2 = "error"
      L13_2(L14_2, L15_2, L16_2)
    end
    return
  end
  L13_2 = {}
  L14_2 = Config
  L14_2 = L14_2.Television
  L14_2 = L14_2.browser
  L14_2 = L14_2.homepage
  L13_2.url = L14_2
  L13_2.kind = L10_2
  L13_2.src = L11_2
  L14_2 = L13_2.kind
  if "page" == L14_2 then
    L14_2 = Config
    L14_2 = L14_2.Television
    L14_2 = L14_2.allowFullPage
    L14_2 = true == L14_2
    L13_2.fullPage = L14_2
  end
  L13_2.furnitureType = L5_2
  L13_2.furnitureId = A2_2
  L14_2 = os
  L14_2 = L14_2.time
  L14_2 = L14_2()
  L13_2.startedAt = L14_2
  L14_2 = L7_2 or L14_2
  if L7_2 then
    L14_2 = L7_2.volume
  end
  if not L14_2 then
    L14_2 = Config
    L14_2 = L14_2.Television
    L14_2 = L14_2.defaultVolume
  end
  L13_2.volume = L14_2
  L14_2 = Electricity
  if L14_2 and not L7_2 then
    L14_2 = Electricity
    L14_2 = L14_2.Invalidate
    L15_2 = A0_2
    L14_2(L15_2)
  end
  L14_2 = L7_1
  L15_2 = A0_2
  L16_2 = L5_2
  L17_2 = A2_2
  L18_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2 = L19_1
  L15_2 = A0_2
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  L14_2 = L17_1
  L15_2 = A0_2
  L16_2 = L5_2
  L17_2 = A2_2
  L18_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "tk_housing:turnOffTelevision"
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Television
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L15_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L6_2 = L6_1
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    return
  end
  L6_2 = Electricity
  if L6_2 then
    L6_2 = Electricity
    L6_2 = L6_2.Invalidate
    L7_2 = A0_2
    L6_2(L7_2)
  end
  L6_2 = L7_1
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = nil
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = Music
  L6_2 = L6_2.StopTelevision
  L7_2 = A0_2
  L8_2 = L5_1
  L9_2 = L5_2
  L10_2 = A2_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L17_1
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = nil
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "tk_housing:setTelevisionSpeakers"
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Television
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  if nil ~= A2_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "string" ~= L4_2 then
      return
    end
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L15_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L6_2 = L6_1
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L7_2 = L6_2.speakerGroup
    if L7_2 ~= A2_2 then
      goto lbl_44
    end
  end
  do return end
  ::lbl_44::
  if nil ~= A2_2 then
    L7_2 = L10_1
    L8_2 = L6_2.kind
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      return
    end
    L7_2 = Music
    L7_2 = L7_2.GroupHasSpeaker
    L8_2 = A0_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      return
    end
    L7_2 = Music
    L7_2 = L7_2.GetGroupScreen
    L8_2 = A0_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = L5_1
      L9_2 = L5_2
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L7_2 ~= L8_2 then
        L8_2 = Notify
        L9_2 = L3_2
        L10_2 = _U
        L11_2 = "television_speakers_taken"
        L10_2 = L10_2(L11_2)
        L11_2 = "error"
        L8_2(L9_2, L10_2, L11_2)
        return
      end
    end
  end
  L6_2.speakerGroup = A2_2
  L7_2 = L19_1
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = L17_1
  L8_2 = A0_2
  L9_2 = L5_2
  L10_2 = A1_2
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "tk_housing:setTelevisionVolume"
function L22_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Television
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
  L5_2 = Main
  L5_2 = L5_2.AllowChange
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = L15_1
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A2_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    return
  end
  L7_2 = L6_1
  L8_2 = A0_2
  L9_2 = L6_2
  L10_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    return
  end
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = math
  L9_2 = L9_2.max
  L10_2 = 0
  L11_2 = math
  L11_2 = L11_2.min
  L12_2 = 100
  L13_2 = A3_2
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.volume = L8_2
  L8_2 = L17_1
  L9_2 = A0_2
  L10_2 = L6_2
  L11_2 = A2_2
  L12_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
end
L20_1(L21_1, L22_1)
