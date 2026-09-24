local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1
L0_1 = Music
if not L0_1 then
  L0_1 = {}
end
Music = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = false
L3_1 = false
L4_1 = 0
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2
  repeat
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = Main
    L0_2 = L0_2.ready
  until L0_2
  L0_2 = FurnitureDb
  L0_2 = L0_2.LoadSpeakerGroupNames
  L0_2 = L0_2()
  L1_1 = L0_2
end
L5_1(L6_1)
function L5_1(A0_2, A1_2)
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
      if L10_2 then
        L11_2 = Utils
        L11_2 = L11_2.EntryHasKind
        L12_2 = L10_2
        L13_2 = "music"
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          L11_2 = Utils
          L11_2 = L11_2.GetSpeakerData
          L12_2 = L10_2.model
          L11_2 = L11_2(L12_2)
          if not L11_2 then
            L11_2 = {}
          end
          L12_2 = L7_2
          L13_2 = L10_2
          return L11_2, L12_2, L13_2
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
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
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = Utils
        L15_2 = L15_2.EntryHasKind
        L16_2 = L14_2
        L17_2 = "music"
        L15_2 = L15_2(L16_2, L17_2)
        if L15_2 then
          L15_2 = L14_2.speakerGroup
          if not L15_2 then
            L15_2 = L14_2.id
          end
          if L15_2 == A1_2 then
            L15_2 = L14_2.id
            L16_2 = L7_2
            L17_2 = Utils
            L17_2 = L17_2.GetSpeakerData
            L18_2 = L14_2.model
            L17_2 = L17_2(L18_2)
            if not L17_2 then
              L17_2 = {}
            end
            return L15_2, L16_2, L17_2
          end
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L7_1 = Music
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = nil ~= L2_2
  return L2_2
end
L7_1.GroupHasSpeaker = L8_1
L7_1 = Music
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = A1_2.speakerGroup
    if not L3_2 then
      L3_2 = A1_2.id
    end
    L2_2 = L2_2[L3_2]
  end
  L3_2 = L2_2.paused
  L3_2 = nil ~= L2_2 and L3_2
  return L3_2
end
L7_1.IsPlaying = L8_1
function L7_1(A0_2, A1_2, A2_2)
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
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L3_2 = L5_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L6_2 = nil
    return L6_2
  end
  L6_2 = A1_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2.speakerGroup
  if not L9_2 then
    L9_2 = A2_2
  end
  return L6_2, L7_2, L8_2, L9_2
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.paused
  if L1_2 then
    L1_2 = A0_2.offset
    return L1_2
  end
  L1_2 = A0_2.offset
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = A0_2.startedAt
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 / 1000
  L1_2 = L1_2 + L2_2
  return L1_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2.paused
  L1_2.paused = L2_2
  L2_2 = A0_2.url
  L1_2.url = L2_2
  L2_2 = A0_2.kind
  L1_2.kind = L2_2
  L2_2 = A0_2.src
  L1_2.src = L2_2
  L2_2 = A0_2.label
  L1_2.label = L2_2
  L2_2 = A0_2.station
  L1_2.station = L2_2
  L2_2 = A0_2.volume
  L1_2.volume = L2_2
  L2_2 = L9_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.offset = L2_2
  L2_2 = A0_2.furnitureId
  L1_2.furnitureId = L2_2
  L2_2 = A0_2.furnitureType
  L1_2.furnitureType = L2_2
  L2_2 = A0_2.reverb
  L1_2.reverb = L2_2
  L2_2 = A0_2.mode
  L1_2.mode = L2_2
  L2_2 = A0_2.queue
  L1_2.queue = L2_2
  L2_2 = A0_2.index
  L1_2.index = L2_2
  L2_2 = A0_2.repeatMode
  L1_2.repeatMode = L2_2
  L2_2 = A0_2.shuffle
  L1_2.shuffle = L2_2
  L2_2 = A0_2.mode
  if "queue" == L2_2 then
    L2_2 = A0_2.queue
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = L2_2.duration
    end
    if L2_2 then
      goto lbl_49
    end
  end
  L2_2 = nil
  ::lbl_49::
  L1_2.duration = L2_2
  L2_2 = A0_2.mode
  L2_2 = "tv" == L2_2
  L1_2.seekable = L2_2
  L2_2 = A0_2.loop
  L1_2.loop = L2_2
  return L1_2
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = {}
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
    return L1_2
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = L14_2.speakerGroup
        if L15_2 then
          L15_2 = Utils
          L15_2 = L15_2.EntryHasKind
          L16_2 = L14_2
          L17_2 = "music"
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L15_2 = L14_2.id
            L16_2 = L14_2.speakerGroup
            L1_2[L15_2] = L16_2
          end
        end
      end
    end
  end
  return L1_2
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L10_1
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L1_2[L7_2] = L9_2
    L9_2 = L8_2.paused
    if not L9_2 then
      L9_2 = L8_2.kind
      if "youtube" ~= L9_2 then
        L9_2 = L8_2.kind
        if "soundcloud" ~= L9_2 then
          goto lbl_28
        end
      end
      L2_2 = L2_2 + 1
    end
    ::lbl_28::
  end
  L3_2 = {}
  L3_2.groups = L1_2
  L4_2 = L11_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.members = L4_2
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L3_2.names = L4_2
  L4_2 = L2_2 > 1
  L3_2.embedConflict = L4_2
  return L3_2
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L12_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = Main
  L3_2 = L3_2.GetPropertyPlayers
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "tk_housing:musicState"
    L10_2 = L7_2
    L11_2 = A0_2
    L12_2 = L1_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.queue
  L2_2 = L2_2[A1_2]
  A0_2.index = A1_2
  L3_2 = L2_2.duration
  if not L3_2 then
    L3_2 = ipairs
    L4_2 = A0_2.queue
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.duration
      if L9_2 then
        L9_2 = L8_2.src
        L10_2 = L2_2.src
        if L9_2 == L10_2 then
          L9_2 = L8_2.duration
          L2_2.duration = L9_2
          break
        end
      end
    end
  end
  L3_2 = L2_2.url
  A0_2.url = L3_2
  L3_2 = L2_2.kind
  A0_2.kind = L3_2
  L3_2 = L2_2.src
  A0_2.src = L3_2
  L3_2 = L2_2.label
  A0_2.label = L3_2
  A0_2.station = nil
  A0_2.offset = 0
end
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Electricity
  if L3_2 then
    L3_2 = A1_2.paused
    if L3_2 then
      L3_2 = Electricity
      L3_2 = L3_2.Invalidate
      L4_2 = A0_2
      L3_2(L4_2)
    end
  end
  L3_2 = L14_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  A1_2.startedAt = L3_2
  A1_2.paused = false
  A1_2.parked = nil
  L3_2 = L13_1
  L4_2 = A0_2
  L3_2(L4_2)
end
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Electricity
  if L2_2 then
    L2_2 = A1_2.paused
    if not L2_2 then
      L2_2 = Electricity
      L2_2 = L2_2.Invalidate
      L3_2 = A0_2
      L2_2(L3_2)
    end
  end
  L2_2 = L14_1
  L3_2 = A1_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
  A1_2.paused = true
  A1_2.parked = true
  L2_2 = {}
  A1_2.played = L2_2
  L2_2 = L13_1
  L3_2 = A0_2
  L2_2(L3_2)
end
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A2_2 then
    L3_2 = A1_2.repeatMode
    if "one" == L3_2 then
      L3_2 = L15_1
      L4_2 = A0_2
      L5_2 = A1_2
      L6_2 = A1_2.index
      L3_2(L4_2, L5_2, L6_2)
      return
    end
  end
  L3_2 = A1_2.played
  L4_2 = A1_2.queue
  L5_2 = A1_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.id
  L3_2[L4_2] = true
  L3_2 = A1_2.shuffle
  if L3_2 then
    L3_2 = {}
    L4_2 = ipairs
    L5_2 = A1_2.queue
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = A1_2.played
      L11_2 = L9_2.id
      L10_2 = L10_2[L11_2]
      if not L10_2 then
        L10_2 = #L3_2
        L10_2 = L10_2 + 1
        L3_2[L10_2] = L8_2
      end
    end
    L4_2 = #L3_2
    if 0 == L4_2 then
      L4_2 = A1_2.repeatMode
      if "all" ~= L4_2 then
        L4_2 = L16_1
        L5_2 = A0_2
        L6_2 = A1_2
        L4_2(L5_2, L6_2)
        return
      end
      L4_2 = {}
      A1_2.played = L4_2
      L4_2 = ipairs
      L5_2 = A1_2.queue
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2 in L4_2, L5_2, L6_2, L7_2 do
        L9_2 = A1_2.index
        if L8_2 ~= L9_2 then
          L9_2 = #L3_2
          L9_2 = L9_2 + 1
          L3_2[L9_2] = L8_2
        end
      end
      L4_2 = #L3_2
      if 0 == L4_2 then
        L4_2 = A1_2.index
        L3_2[1] = L4_2
      end
    end
    L4_2 = L15_1
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = #L3_2
    L7_2 = L7_2(L8_2)
    L7_2 = L3_2[L7_2]
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L3_2 = A1_2.index
  L3_2 = L3_2 + 1
  L4_2 = A1_2.queue
  L4_2 = #L4_2
  if L3_2 > L4_2 then
    L4_2 = A1_2.repeatMode
    if "all" ~= L4_2 then
      L4_2 = L16_1
      L5_2 = A0_2
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
      return
    end
    L3_2 = 1
  end
  L4_2 = L15_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
function L18_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    return
  end
  L0_2 = true
  L2_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    while true do
      L0_3 = false
      L1_3 = pairs
      L2_3 = L0_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = pairs
        L8_3 = L6_3
        L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
        for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
          L13_3 = L12_3.mode
          if "queue" == L13_3 then
            L0_3 = true
            L13_3 = L12_3.queue
            L14_3 = L12_3.index
            L13_3 = L13_3[L14_3]
            if L13_3 then
              L13_3 = L13_3.duration
            end
            L14_3 = L12_3.paused
            if not L14_3 and L13_3 then
              L14_3 = L9_1
              L15_3 = L12_3
              L14_3 = L14_3(L15_3)
              if L13_3 <= L14_3 then
                L14_3 = L17_1
                L15_3 = L5_3
                L16_3 = L12_3
                L17_3 = false
                L14_3(L15_3, L16_3, L17_3)
              end
            end
          end
        end
      end
      if not L0_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 250
      L1_3(L2_3)
    end
    L0_3 = false
    L2_1 = L0_3
  end
  L0_2(L1_2)
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2[A1_2]
  end
  if not L3_2 then
    return
  end
  L4_2 = Electricity
  if L4_2 then
    L4_2 = L3_2.paused
    if not L4_2 then
      L4_2 = Electricity
      L4_2 = L4_2.Invalidate
      L5_2 = A0_2
      L4_2(L5_2)
    end
  end
  L2_2[A1_2] = nil
  L4_2 = next
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L0_1
    L4_2[A0_2] = nil
  end
  L4_2 = L3_2.mode
  if "tv" == L4_2 then
    L4_2 = Television
    L4_2 = L4_2.ClearSpeakers
    L5_2 = A0_2
    L6_2 = L3_2.screenKey
    L4_2(L5_2, L6_2)
  end
  L4_2 = L13_1
  L5_2 = A0_2
  L4_2(L5_2)
end
L20_1 = Music
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.mode
    if "tv" == L8_2 then
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L9_2 = L7_2.screenKey
      L1_2[L8_2] = L9_2
    end
  end
  L2_2 = L0_1
  L2_2[A0_2] = nil
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Television
    L8_2 = L8_2.ClearSpeakers
    L9_2 = A0_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = L13_1
  L3_2 = A0_2
  L2_2(L3_2)
end
L20_1.Clear = L21_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = {}
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
    return L1_2
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = Utils
        L15_2 = L15_2.EntryHasKind
        L16_2 = L14_2
        L17_2 = "music"
        L15_2 = L15_2(L16_2, L17_2)
        if L15_2 then
          L15_2 = L14_2.speakerGroup
          if not L15_2 then
            L15_2 = L14_2.id
          end
          L1_2[L15_2] = true
        end
      end
    end
  end
  return L1_2
end
function L21_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if L0_2 then
    return
  end
  L0_2 = true
  L3_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    while true do
      L0_3 = next
      L1_3 = L0_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = pairs
      L1_3 = L0_1
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = L20_1
        L7_3 = L4_3
        L6_3 = L6_3(L7_3)
        L7_3 = nil
        L8_3 = pairs
        L9_3 = L5_3
        L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
        for L12_3 in L8_3, L9_3, L10_3, L11_3 do
          L13_3 = L6_3[L12_3]
          if not L13_3 then
            if not L7_3 then
              L13_3 = {}
              L7_3 = L13_3
            end
            L13_3 = #L7_3
            L13_3 = L13_3 + 1
            L7_3[L13_3] = L12_3
          end
        end
        L8_3 = ipairs
        L9_3 = L7_3 or L9_3
        if not L7_3 then
          L9_3 = {}
        end
        L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
        for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
          L14_3 = L19_1
          L15_3 = L4_3
          L16_3 = L13_3
          L14_3(L15_3, L16_3)
        end
      end
      L0_3 = Wait
      L1_3 = 2000
      L0_3(L1_3)
    end
    L0_3 = false
    L3_1 = L0_3
  end
  L0_2(L1_2)
end
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.mode
    if "tv" == L8_2 then
      L8_2 = L7_2.screenKey
      if L8_2 == A1_2 then
        L8_2 = L7_2
        L9_2 = L6_2
        return L8_2, L9_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L23_1 = Music
function L24_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L2_2[A1_2]
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.mode
  end
  if "tv" == L3_2 then
    L3_2 = L2_2.screenKey
    if L3_2 then
      goto lbl_15
    end
  end
  L3_2 = nil
  ::lbl_15::
  return L3_2
end
L23_1.GetGroupScreen = L24_1
L23_1 = Music
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = Config
  L5_2 = L5_2.Music
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L6_1
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L8_2 = false
    return L8_2
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if not L8_2 then
    L8_2 = {}
  end
  L9_2 = L8_2[A1_2]
  L10_2 = L9_2 or L10_2
  if L9_2 then
    L10_2 = L9_2.mode
  end
  if "tv" == L10_2 then
    L10_2 = L9_2.screenKey
    if L10_2 ~= A4_2 then
      L10_2 = false
      return L10_2
    end
  end
  L10_2 = pairs
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.mode
    if "tv" == L16_2 then
      L16_2 = L15_2.screenKey
      if L16_2 == A4_2 and L14_2 ~= A1_2 then
        L8_2[L14_2] = nil
      end
    end
  end
  L10_2 = Electricity
  if L10_2 then
    if L9_2 then
      L10_2 = L9_2.paused
      if not L10_2 then
        goto lbl_63
      end
    end
    L10_2 = Electricity
    L10_2 = L10_2.Invalidate
    L11_2 = A0_2
    L10_2(L11_2)
  end
  ::lbl_63::
  L10_2 = {}
  L10_2.mode = "tv"
  L10_2.screenKey = A4_2
  L11_2 = A2_2.url
  L10_2.url = L11_2
  L11_2 = A2_2.kind
  if "youtube" == L11_2 then
    L11_2 = "youtube"
    if L11_2 then
      goto lbl_76
    end
  end
  L11_2 = "stream"
  ::lbl_76::
  L10_2.kind = L11_2
  L11_2 = A2_2.src
  L10_2.src = L11_2
  L11_2 = A2_2.kind
  L11_2 = "file" == L11_2 or L11_2
  L10_2.loop = L11_2
  L11_2 = A2_2.label
  if not L11_2 then
    L11_2 = _U
    L12_2 = "music_television"
    L11_2 = L11_2(L12_2)
  end
  L10_2.label = L11_2
  L10_2.station = nil
  L11_2 = L9_2 or L11_2
  if L9_2 then
    L11_2 = L9_2.volume
  end
  if not L11_2 then
    L11_2 = Config
    L11_2 = L11_2.Music
    L11_2 = L11_2.defaultVolume
  end
  L10_2.volume = L11_2
  L10_2.offset = A3_2
  L11_2 = GetGameTimer
  L11_2 = L11_2()
  L10_2.startedAt = L11_2
  L10_2.paused = false
  L10_2.furnitureId = L5_2
  L10_2.furnitureType = L6_2
  L11_2 = L7_2.reverb
  L10_2.reverb = L11_2
  L11_2 = L9_2 or L11_2
  if L9_2 then
    L11_2 = L9_2.queue
  end
  if not L11_2 then
    L11_2 = {}
  end
  L10_2.queue = L11_2
  L11_2 = L9_2 or L11_2
  if L9_2 then
    L11_2 = L9_2.index
  end
  if not L11_2 then
    L11_2 = 1
  end
  L10_2.index = L11_2
  L11_2 = L9_2 or L11_2
  if L9_2 then
    L11_2 = L9_2.repeatMode
  end
  if not L11_2 then
    L11_2 = "off"
  end
  L10_2.repeatMode = L11_2
  L11_2 = L9_2 or L11_2
  if L9_2 then
    L11_2 = L9_2.shuffle
  end
  if not L11_2 then
    L11_2 = false
  end
  L10_2.shuffle = L11_2
  L11_2 = L9_2 or L11_2
  if L9_2 then
    L11_2 = L9_2.played
  end
  if not L11_2 then
    L11_2 = {}
  end
  L10_2.played = L11_2
  L8_2[A1_2] = L10_2
  L10_2 = L0_1
  L10_2[A0_2] = L8_2
  L10_2 = L13_1
  L11_2 = A0_2
  L10_2(L11_2)
  L10_2 = L21_1
  L10_2()
  L10_2 = true
  return L10_2
end
L23_1.StartTelevision = L24_1
L23_1 = Music
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L22_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L4_2 = L19_1
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L23_1.StopTelevision = L24_1
L23_1 = Music
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.furniture
  end
  L4_2 = pairs
  L5_2 = type
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L5_2 = L3_2 or L5_2
  if "table" ~= L5_2 or not L3_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = pairs
      L11_2 = L9_2
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        L16_2 = Utils
        L16_2 = L16_2.EntryHasKind
        L17_2 = L15_2
        L18_2 = "music"
        L16_2 = L16_2(L17_2, L18_2)
        if L16_2 then
          L16_2 = L15_2.speakerGroup
          if not L16_2 then
            L16_2 = L15_2.id
          end
          L17_2 = L1_2[L16_2]
          if not L17_2 then
            L18_2 = {}
            L18_2.id = L16_2
            L18_2.count = 0
            L17_2 = L18_2
            L1_2[L16_2] = L17_2
            L18_2 = #L2_2
            L18_2 = L18_2 + 1
            L2_2[L18_2] = L17_2
          end
          L18_2 = L17_2.count
          L18_2 = L18_2 + 1
          L17_2.count = L18_2
          L18_2 = L15_2.id
          if L18_2 == L16_2 then
            L18_2 = Utils
            L18_2 = L18_2.GetCatalogEntryByModel
            L19_2 = L15_2.model
            L18_2 = L18_2(L19_2)
            if L18_2 then
              L18_2 = L18_2.label
            end
            L17_2.anchorLabel = L18_2
          end
        end
      end
    end
  end
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L1_1
    L10_2 = L10_2[A0_2]
    if L10_2 then
      L11_2 = L9_2.id
      L10_2 = L10_2[L11_2]
    end
    if not L10_2 then
      L10_2 = L9_2.anchorLabel
      if not L10_2 then
        L10_2 = _U
        L11_2 = "music_group_default"
        L10_2 = L10_2(L11_2)
      end
    end
    L9_2.name = L10_2
    L9_2.anchorLabel = nil
    L10_2 = L0_1
    L10_2 = L10_2[A0_2]
    if L10_2 then
      L11_2 = L9_2.id
      L10_2 = L10_2[L11_2]
    end
    L11_2 = nil ~= L10_2
    L9_2.playing = L11_2
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.name
    L3_3 = A1_3.name
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.name
      L3_3 = A1_3.name
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_3 = A0_3.id
    L3_3 = A1_3.id
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L4_2(L5_2, L6_2)
  return L2_2
end
L23_1.GetGroups = L24_1
L23_1 = Music
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.EntryHasKind
    L3_2 = A1_2
    L4_2 = "music"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A1_2.speakerGroup
  if not L2_2 then
    L2_2 = A1_2.id
  end
  L3_2 = Music
  L3_2 = L3_2.GroupHasSpeaker
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L19_1
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L3_2 = L3_2[L2_2]
    end
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      L3_2[L2_2] = nil
      if A0_2 > 0 then
        L3_2 = FurnitureDb
        L3_2 = L3_2.DeleteSpeakerGroupName
        L4_2 = A0_2
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = L13_1
  L4_2 = A0_2
  L3_2(L4_2)
end
L23_1.SpeakerRemoved = L24_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = Config
  L2_2 = L2_2.Music
  L2_2 = L2_2.stations
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
L24_1 = {}
L25_1 = 3000
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = "https://open.spotify.com/oembed?url=https%3A%2F%2Fopen.spotify.com%2Ftrack%2F"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = PerformHttpRequest
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if 200 == A0_3 then
      L2_3 = type
      L3_3 = A1_3
      L2_3 = L2_3(L3_3)
      if "string" == L2_3 then
        goto lbl_12
      end
    end
    L2_3 = A1_2
    L3_3 = nil
    L2_3(L3_3)
    do return end
    ::lbl_12::
    L2_3 = pcall
    L3_3 = json
    L3_3 = L3_3.decode
    L4_3 = A1_3
    L2_3, L3_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L4_3 = type
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      if "table" == L4_3 then
        L4_3 = type
        L5_3 = L3_3.title
        L4_3 = L4_3(L5_3)
        if "string" == L4_3 then
          L4_3 = L3_3.title
          L4_3 = #L4_3
          if 0 ~= L4_3 then
            goto lbl_37
          end
        end
      end
    end
    L4_3 = A1_2
    L5_3 = nil
    L4_3(L5_3)
    do return end
    ::lbl_37::
    L4_3 = A1_2
    L5_3 = L3_3.title
    L4_3(L5_3)
  end
  L3_2(L4_2, L5_2)
end
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L24_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L24_1
    L3_2 = L3_2[A0_2]
    L3_2 = L2_2 - L3_2
    L4_2 = L25_1
    if L3_2 < L4_2 then
      return
    end
  end
  L3_2 = L24_1
  L3_2[A0_2] = L2_2
  L3_2 = L26_1
  L4_2 = A1_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      L1_3 = Notify
      L2_3 = A0_2
      L3_3 = _U
      L4_3 = "music_spotify_failed"
      L3_3 = L3_3(L4_3)
      L4_3 = "error"
      L1_3(L2_3, L3_3, L4_3)
      return
    end
    L1_3 = Config
    L1_3 = L1_3.Music
    L1_3 = L1_3.search
    if L1_3 then
      L1_3 = L1_3.enable
    end
    if L1_3 then
      L1_3 = TriggerClientEvent
      L2_3 = "tk_housing:resolveSpotify"
      L3_3 = A0_2
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = Notify
      L2_3 = A0_2
      L3_3 = _U
      L4_3 = "music_spotify_unmatched"
      L5_3 = A0_3
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = "error"
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L3_2(L4_2, L5_2)
end
L28_1 = {}
L29_1 = {}
L30_1 = 500
L31_1 = 1800000
L32_1 = {}
L33_1 = 2000
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "\195\133"
  L4_2 = "\001"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\195\165"
  L4_2 = "\001"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\195\132"
  L4_2 = "\002"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\195\164"
  L4_2 = "\002"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\195\150"
  L4_2 = "\003"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\195\182"
  L4_2 = "\003"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.lower
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "[^a-z0-9\001\002\003 ]"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "\001"
  L4_2 = "\195\165"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\002"
  L4_2 = "\195\164"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\003"
  L4_2 = "\195\182"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = " +"
  L4_2 = " "
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.match
  L3_2 = "^%s*(.-)%s*$"
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
function L35_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L28_1
  L1_2 = L1_2[A0_2]
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    return L1_2
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 - L1_2
    L3_2 = L31_1
    if L2_2 < L3_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L28_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = L29_1
    L2_2 = #L2_2
    L3_2 = L30_1
    if L2_2 >= L3_2 then
      L2_2 = table
      L2_2 = L2_2.remove
      L3_2 = L29_1
      L4_2 = 1
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L28_1
      L3_2[L2_2] = nil
    end
    L2_2 = L29_1
    L2_2 = #L2_2
    L3_2 = L2_2 + 1
    L2_2 = L29_1
    L2_2[L3_2] = A0_2
  end
  L2_2 = L28_1
  L2_2[A0_2] = A1_2
end
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = "https://www.youtube.com/oembed?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D"
  L3_2 = A0_2
  L4_2 = "&format=json"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = PerformHttpRequest
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if 200 == A0_3 then
      L2_3 = type
      L3_3 = A1_3
      L2_3 = L2_3(L3_3)
      if "string" == L2_3 then
        goto lbl_12
      end
    end
    L2_3 = A1_2
    L3_3 = nil
    L2_3(L3_3)
    do return end
    ::lbl_12::
    L2_3 = pcall
    L3_3 = json
    L3_3 = L3_3.decode
    L4_3 = A1_3
    L2_3, L3_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L4_3 = type
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      if "table" == L4_3 then
        L4_3 = type
        L5_3 = L3_3.title
        L4_3 = L4_3(L5_3)
        if "string" == L4_3 then
          goto lbl_33
        end
      end
    end
    L4_3 = A1_2
    L5_3 = nil
    L4_3(L5_3)
    do return end
    ::lbl_33::
    L4_3 = A1_2
    L5_3 = L3_3.title
    L6_3 = type
    L7_3 = L3_3.author_name
    L6_3 = L6_3(L7_3)
    if "string" == L6_3 then
      L6_3 = L3_3.author_name
      if L6_3 then
        goto lbl_44
      end
    end
    L6_3 = ""
    ::lbl_44::
    L4_3(L5_3, L6_3)
  end
  L3_2(L4_2, L5_2)
end
L38_1 = RegisterCallback
L39_1 = "tk_housing:getResolvedTrack"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Config
  L3_2 = L3_2.Music
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Music
    L3_2 = L3_2.search
    if L3_2 then
      L3_2 = L3_2.enable
    end
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_20::
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = #A2_2
    if 0 ~= L3_2 then
      L3_2 = #A2_2
      if not (L3_2 > 120) then
        goto lbl_35
      end
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_35::
  L3_2 = A1_2
  L4_2 = L35_1
  L5_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "tk_housing:reportResolvedTrack"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.Music
    L4_2 = L4_2.search
    if L4_2 then
      L4_2 = L4_2.enable
    end
    if L4_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = #A1_2
    if not (L4_2 > 100) then
      goto lbl_27
    end
  end
  do return end
  ::lbl_27::
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = #A2_2
    if 0 ~= L4_2 then
      L4_2 = #A2_2
      if not (L4_2 > 100) then
        goto lbl_39
      end
    end
  end
  do return end
  ::lbl_39::
  if false ~= A0_2 then
    L4_2 = type
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      L4_2 = #A0_2
      if 11 == L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2.match
        L6_2 = "^[%w_%-]+$"
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          goto lbl_55
        end
      end
    end
    return
  end
  ::lbl_55::
  L4_2 = L34_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L34_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = L34_1
  L7_2 = A1_2
  L8_2 = " "
  L9_2 = A2_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L6_2 = L6_2(L7_2)
  L7_2 = #L4_2
  if 0 ~= L7_2 then
    L7_2 = #L6_2
    if not (L7_2 > 120) then
      goto lbl_74
    end
  end
  do return end
  ::lbl_74::
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = L32_1
  L8_2 = L8_2[L3_2]
  if L8_2 then
    L8_2 = L32_1
    L8_2 = L8_2[L3_2]
    L8_2 = L7_2 - L8_2
    L9_2 = L33_1
    if L8_2 < L9_2 then
      return
    end
  end
  L8_2 = L32_1
  L8_2[L3_2] = L7_2
  L8_2 = L35_1
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if nil ~= L8_2 then
    return
  end
  if false == A0_2 then
    L8_2 = L36_1
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    return
  end
  L8_2 = L37_1
  L9_2 = A0_2
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A0_3 then
      return
    end
    L2_3 = L34_1
    L3_3 = A0_3
    L4_3 = " "
    L5_3 = A1_3
    L3_3 = L3_3 .. L4_3 .. L5_3
    L2_3 = L2_3(L3_3)
    L4_3 = L2_3
    L3_3 = L2_3.find
    L5_3 = L4_2
    L6_3 = 1
    L7_3 = true
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    if not L3_3 then
      return
    end
    L3_3 = L5_2
    L3_3 = #L3_3
    if L3_3 > 0 then
      L4_3 = L2_3
      L3_3 = L2_3.find
      L5_3 = L5_2
      L6_3 = 1
      L7_3 = true
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      if not L3_3 then
        return
      end
    end
    L3_3 = L35_1
    L4_3 = L6_2
    L3_3 = L3_3(L4_3)
    if nil ~= L3_3 then
      return
    end
    L3_3 = L36_1
    L4_3 = L6_2
    L5_3 = A0_2
    L3_3(L4_3, L5_3)
  end
  L8_2(L9_2, L10_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterCallback
L39_1 = "tk_housing:getMusicState"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Config
  L3_2 = L3_2.Music
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_27::
  L3_2 = Main
  L3_2 = L3_2.GetPropertyAccess
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= A2_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = L12_1
  L5_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "tk_housing:playMusic"
function L40_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = source
  L6_2 = Config
  L6_2 = L6_2.Music
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
  L6_2 = L8_1
  L7_2 = L5_2
  L8_2 = A0_2
  L9_2 = A1_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    return
  end
  L10_2 = L7_1
  L11_2 = L6_2
  L12_2 = L8_2
  L13_2 = A1_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  if not L10_2 then
    L10_2 = Notify
    L11_2 = L5_2
    L12_2 = _U
    L13_2 = "music_no_power"
    L12_2 = L12_2(L13_2)
    L13_2 = "error"
    L10_2(L11_2, L12_2, L13_2)
    return
  end
  L10_2 = nil
  L11_2 = nil
  if nil ~= A4_2 then
    L12_2 = type
    L13_2 = A4_2
    L12_2 = L12_2(L13_2)
    L12_2 = L23_1
    L13_2 = A4_2
    L12_2 = "string" == L12_2 and L12_2
    if not L12_2 then
      return
    end
    L13_2 = L12_2.url
    A3_2 = L12_2.label
    A2_2 = L13_2
    L13_2 = nil
    L14_2 = Music
    L14_2 = L14_2.ParseUrl
    L15_2 = A2_2
    L14_2, L15_2, L16_2 = L14_2(L15_2)
    L13_2 = L16_2
    L11_2 = L15_2
    L10_2 = L14_2
    if not L10_2 then
      if L13_2 then
        L14_2 = Utils
        L14_2 = L14_2.Warn
        L15_2 = "A music station url is http:// and cannot play, it must be https://"
        L16_2 = A4_2
        L17_2 = A2_2
        L14_2(L15_2, L16_2, L17_2)
      end
      return
    end
  else
    L12_2 = Config
    L12_2 = L12_2.Music
    L12_2 = L12_2.allowCustomUrl
    if not L12_2 then
      return
    end
    L12_2 = nil
    L13_2 = Music
    L13_2 = L13_2.ParseUrl
    L14_2 = A2_2
    L13_2, L14_2, L15_2 = L13_2(L14_2)
    L12_2 = L15_2
    L11_2 = L14_2
    L10_2 = L13_2
    if L10_2 then
      L13_2 = Config
      L13_2 = L13_2.Music
      L13_2 = L13_2.sources
      if L13_2 then
        L13_2 = L13_2[L10_2]
      end
      if false ~= L13_2 then
        goto lbl_117
      end
    end
    L13_2 = Notify
    L14_2 = L5_2
    L15_2 = _U
    if L12_2 then
      L16_2 = "music_link_insecure"
      if L16_2 then
        goto lbl_113
      end
    end
    L16_2 = "music_link_unsupported"
    ::lbl_113::
    L15_2 = L15_2(L16_2)
    L16_2 = "error"
    L13_2(L14_2, L15_2, L16_2)
    do return end
    ::lbl_117::
    L13_2 = type
    L14_2 = A3_2
    L13_2 = L13_2(L14_2)
    if "string" == L13_2 then
      L13_2 = #A3_2
      if 0 ~= L13_2 then
        L13_2 = #A3_2
        if not (L13_2 > 100) then
          goto lbl_132
        end
      end
    end
    L13_2 = _U
    L14_2 = "music_custom_url"
    L13_2 = L13_2(L14_2)
    A3_2 = L13_2
    ::lbl_132::
    if "spotify" == L10_2 then
      L13_2 = L27_1
      L14_2 = L5_2
      L15_2 = L11_2
      L13_2(L14_2, L15_2)
      return
    end
  end
  L12_2 = L0_1
  L12_2 = L12_2[A0_2]
  if L12_2 then
    L12_2 = L12_2[L9_2]
  end
  L13_2 = L12_2 or L13_2
  if L12_2 then
    L13_2 = L12_2.mode
  end
  if "tv" == L13_2 then
    L13_2 = Television
    L13_2 = L13_2.ClearSpeakers
    L14_2 = A0_2
    L15_2 = L12_2.screenKey
    L13_2(L14_2, L15_2)
  end
  L13_2 = Electricity
  if L13_2 then
    if L12_2 then
      L13_2 = L12_2.paused
      if not L13_2 then
        goto lbl_166
      end
    end
    L13_2 = Electricity
    L13_2 = L13_2.Invalidate
    L14_2 = A0_2
    L13_2(L14_2)
  end
  ::lbl_166::
  L13_2 = L0_1
  L14_2 = L0_1
  L14_2 = L14_2[A0_2]
  if not L14_2 then
    L14_2 = {}
  end
  L13_2[A0_2] = L14_2
  L13_2 = L0_1
  L13_2 = L13_2[A0_2]
  L14_2 = {}
  L14_2.mode = "radio"
  L14_2.url = A2_2
  L14_2.kind = L10_2
  L14_2.src = L11_2
  L14_2.label = A3_2
  L15_2 = type
  L16_2 = A4_2
  L15_2 = L15_2(L16_2)
  L15_2 = A4_2 or L15_2
  if "string" ~= L15_2 or not A4_2 then
    L15_2 = nil
  end
  L14_2.station = L15_2
  L15_2 = L12_2 or L15_2
  if L12_2 then
    L15_2 = L12_2.volume
  end
  if not L15_2 then
    L15_2 = Config
    L15_2 = L15_2.Music
    L15_2 = L15_2.defaultVolume
  end
  L14_2.volume = L15_2
  L14_2.offset = 0
  L15_2 = GetGameTimer
  L15_2 = L15_2()
  L14_2.startedAt = L15_2
  L14_2.paused = false
  L14_2.furnitureId = A1_2
  L14_2.furnitureType = L8_2
  L15_2 = L7_2.reverb
  L14_2.reverb = L15_2
  L15_2 = L12_2 or L15_2
  if L12_2 then
    L15_2 = L12_2.queue
  end
  if not L15_2 then
    L15_2 = {}
  end
  L14_2.queue = L15_2
  L15_2 = L12_2 or L15_2
  if L12_2 then
    L15_2 = L12_2.index
  end
  if not L15_2 then
    L15_2 = 1
  end
  L14_2.index = L15_2
  L15_2 = L12_2 or L15_2
  if L12_2 then
    L15_2 = L12_2.repeatMode
  end
  if not L15_2 then
    L15_2 = "off"
  end
  L14_2.repeatMode = L15_2
  L15_2 = L12_2 or L15_2
  if L12_2 then
    L15_2 = L12_2.shuffle
  end
  if not L15_2 then
    L15_2 = false
  end
  L14_2.shuffle = L15_2
  L15_2 = L12_2 or L15_2
  if L12_2 then
    L15_2 = L12_2.played
  end
  if not L15_2 then
    L15_2 = {}
  end
  L14_2.played = L15_2
  L13_2[L9_2] = L14_2
  L13_2 = L13_1
  L14_2 = A0_2
  L13_2(L14_2)
  L13_2 = L21_1
  L13_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "tk_housing:stopMusic"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.Music
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    return
  end
  L3_2 = Main
  L3_2 = L3_2.AllowChange
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = L8_1
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    return
  end
  L7_2 = L19_1
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "tk_housing:pauseMusic"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "boolean" ~= L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  if L8_2 then
    L9_2 = L8_2.paused
    if L9_2 ~= A2_2 then
      goto lbl_42
    end
  end
  do return end
  ::lbl_42::
  if A2_2 then
    L9_2 = L8_2.mode
    if "tv" == L9_2 then
      L9_2 = Notify
      L10_2 = L3_2
      L11_2 = _U
      L12_2 = "music_pause_tv"
      L11_2 = L11_2(L12_2)
      L12_2 = "error"
      L9_2(L10_2, L11_2, L12_2)
      return
    end
  end
  L9_2 = Electricity
  if L9_2 then
    L9_2 = Electricity
    L9_2 = L9_2.Invalidate
    L10_2 = A0_2
    L9_2(L10_2)
  end
  if A2_2 then
    L9_2 = L9_1
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L8_2.offset = L9_2
    L8_2.paused = true
  else
    L9_2 = GetGameTimer
    L9_2 = L9_2()
    L8_2.startedAt = L9_2
    L8_2.paused = false
    L8_2.parked = nil
  end
  L9_2 = L13_1
  L10_2 = A0_2
  L9_2(L10_2)
end
L38_1(L39_1, L40_1)
L38_1 = 200
L39_1 = RegisterNetEvent
L40_1 = "tk_housing:setMusicVolume"
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or A2_2 ~= A2_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L6_2 = L38_1
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  if not L8_2 then
    return
  end
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = 1.0
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = 0.0
  L13_2 = A2_2 + 0.0
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L8_2.volume
  if L9_2 == L10_2 then
    return
  end
  L8_2.volume = L9_2
  L10_2 = L13_1
  L11_2 = A0_2
  L10_2(L11_2)
end
L39_1(L40_1, L41_1)
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
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
    L3_2 = false
    return L3_2
  end
  L3_2 = nil
  L4_2 = nil
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = type
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if "table" == L12_2 then
      L12_2 = pairs
      L13_2 = L11_2
      L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
      for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
        L18_2 = Utils
        L18_2 = L18_2.EntryHasKind
        L19_2 = L17_2
        L20_2 = "music"
        L18_2 = L18_2(L19_2, L20_2)
        if L18_2 then
          L18_2 = L17_2.speakerGroup
          if L18_2 == A1_2 then
            if not L3_2 then
              L18_2 = L17_2
              L4_2 = L10_2
              L3_2 = L18_2
            else
              L18_2 = #L5_2
              L18_2 = L18_2 + 1
              L19_2 = {}
              L19_2.item = L17_2
              L19_2.type = L10_2
              L5_2[L18_2] = L19_2
            end
          end
        end
      end
    end
  end
  if not L3_2 then
    L6_2 = false
    return L6_2
  end
  L3_2.speakerGroup = nil
  if A0_2 > 0 then
    L6_2 = Main
    L6_2 = L6_2.SaveAccessPointRow
    L7_2 = A0_2
    L8_2 = L4_2
    L9_2 = L3_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = FurnitureDb
    L6_2 = L6_2.UpdateSpeakerGroup
    L7_2 = A0_2
    L8_2 = L4_2
    L9_2 = L3_2.id
    L10_2 = nil
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.item
    L13_2 = L3_2.id
    L12_2.speakerGroup = L13_2
    if A0_2 > 0 then
      L12_2 = Main
      L12_2 = L12_2.SaveAccessPointRow
      L13_2 = A0_2
      L14_2 = L11_2.type
      L15_2 = L11_2.item
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = FurnitureDb
      L12_2 = L12_2.UpdateSpeakerGroup
      L13_2 = A0_2
      L14_2 = L11_2.type
      L15_2 = L11_2.item
      L15_2 = L15_2.id
      L16_2 = L3_2.id
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
  L6_2 = L1_1
  L6_2 = L6_2[A0_2]
  L7_2 = L6_2 or L7_2
  if L6_2 then
    L7_2 = L6_2[A1_2]
  end
  if L7_2 then
    L7_2 = L6_2[A1_2]
    L6_2[A1_2] = nil
    L8_2 = L3_2.id
    L6_2[L8_2] = L7_2
    if A0_2 > 0 then
      L8_2 = FurnitureDb
      L8_2 = L8_2.DeleteSpeakerGroupName
      L9_2 = A0_2
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
      L8_2 = FurnitureDb
      L8_2 = L8_2.SaveSpeakerGroupName
      L9_2 = A0_2
      L10_2 = L3_2.id
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L7_2 = L0_1
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = L7_2[A1_2]
  end
  if L7_2 then
    L8_2 = L0_1
    L8_2 = L8_2[A0_2]
    L8_2[A1_2] = nil
    L8_2 = L0_1
    L8_2 = L8_2[A0_2]
    L9_2 = L3_2.id
    L8_2[L9_2] = L7_2
    L8_2 = L3_2.id
    L7_2.furnitureId = L8_2
    L7_2.furnitureType = L4_2
    L8_2 = Utils
    L8_2 = L8_2.GetSpeakerData
    L9_2 = L3_2.model
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = L8_2.reverb
    end
    L7_2.reverb = L8_2
    L8_2 = L7_2.mode
    if "tv" == L8_2 then
      L8_2 = Television
      L8_2 = L8_2.MoveSpeakers
      L9_2 = A0_2
      L10_2 = A1_2
      L11_2 = L3_2.id
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L8_2 = true
  return L8_2
end
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:setSpeakerGroup"
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Music
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    return
  end
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = type
    L6_2 = A3_2
    L5_2 = L5_2(L6_2)
    if "boolean" == L5_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L5_2 = Main
  L5_2 = L5_2.AllowChange
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = L8_1
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    return
  end
  L9_2 = L5_1
  L10_2 = A0_2
  L11_2 = A2_2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    return
  end
  L12_2 = L11_2.speakerGroup
  if not L12_2 then
    L12_2 = L11_2.id
  end
  if A3_2 then
    L13_2 = L11_2.id
    if L8_2 ~= L13_2 and L8_2 then
      goto lbl_55
      L13_2 = L8_2 or L13_2
    end
  end
  L13_2 = nil
  ::lbl_55::
  L14_2 = L11_2.speakerGroup
  if L14_2 == L13_2 then
    if not A3_2 then
      L14_2 = L11_2.speakerGroup
      if not L14_2 then
        L14_2 = L39_1
        L15_2 = A0_2
        L16_2 = L11_2.id
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L14_2 = L13_1
          L15_2 = A0_2
          L14_2(L15_2)
        end
      end
    end
    return
  end
  L11_2.speakerGroup = L13_2
  if A0_2 > 0 then
    L14_2 = Main
    L14_2 = L14_2.SaveAccessPointRow
    L15_2 = A0_2
    L16_2 = L10_2
    L17_2 = L11_2
    L14_2(L15_2, L16_2, L17_2)
    L14_2 = FurnitureDb
    L14_2 = L14_2.UpdateSpeakerGroup
    L15_2 = A0_2
    L16_2 = L10_2
    L17_2 = A2_2
    L18_2 = L13_2
    L14_2(L15_2, L16_2, L17_2, L18_2)
  end
  L14_2 = L0_1
  L14_2 = L14_2[A0_2]
  if L14_2 then
    L14_2 = L14_2[L12_2]
  end
  if L14_2 then
    L14_2 = Music
    L14_2 = L14_2.GroupHasSpeaker
    L15_2 = A0_2
    L16_2 = L12_2
    L14_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
      L14_2 = L19_1
      L15_2 = A0_2
      L16_2 = L12_2
      L14_2(L15_2, L16_2)
    end
  end
  L14_2 = L13_1
  L15_2 = A0_2
  L14_2(L15_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:renameSpeakerGroup"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = #A2_2
    if not (L4_2 > 64) then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L9_2 = A2_2
  L8_2 = A2_2.match
  L10_2 = "^%s*(.-)%s*$"
  L8_2 = L8_2(L9_2, L10_2)
  A2_2 = L8_2
  L8_2 = L1_1
  L8_2 = L8_2[A0_2]
  if not L8_2 then
    L8_2 = {}
  end
  if "" == A2_2 then
    L9_2 = L8_2[L7_2]
    if not L9_2 then
      return
    end
    L8_2[L7_2] = nil
    if A0_2 > 0 then
      L9_2 = FurnitureDb
      L9_2 = L9_2.DeleteSpeakerGroupName
      L10_2 = A0_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  else
    L9_2 = L8_2[L7_2]
    if L9_2 == A2_2 then
      return
    end
    L8_2[L7_2] = A2_2
    if A0_2 > 0 then
      L9_2 = FurnitureDb
      L9_2 = L9_2.SaveSpeakerGroupName
      L10_2 = A0_2
      L11_2 = L7_2
      L12_2 = A2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L9_2 = L1_1
  L9_2[A0_2] = L8_2
  L9_2 = L13_1
  L10_2 = A0_2
  L9_2(L10_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:queueMusic"
function L42_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L5_2 = source
  L6_2 = Config
  L6_2 = L6_2.Music
  if L6_2 then
    L6_2 = L6_2.enable
  end
  if L6_2 then
    L6_2 = Config
    L6_2 = L6_2.Music
    L6_2 = L6_2.allowCustomUrl
    if L6_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L6_2 = Main
  L6_2 = L6_2.AllowChange
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L6_2 = L8_1
  L7_2 = L5_2
  L8_2 = A0_2
  L9_2 = A1_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    return
  end
  L10_2 = L7_1
  L11_2 = L6_2
  L12_2 = L8_2
  L13_2 = A1_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  if not L10_2 then
    L10_2 = Notify
    L11_2 = L5_2
    L12_2 = _U
    L13_2 = "music_no_power"
    L12_2 = L12_2(L13_2)
    L13_2 = "error"
    L10_2(L11_2, L12_2, L13_2)
    return
  end
  L10_2 = Music
  L10_2 = L10_2.ParseUrl
  L11_2 = A2_2
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  if L10_2 then
    L13_2 = Config
    L13_2 = L13_2.Music
    L13_2 = L13_2.sources
    if L13_2 then
      L13_2 = L13_2[L10_2]
    end
    if false ~= L13_2 then
      goto lbl_72
    end
  end
  L13_2 = Notify
  L14_2 = L5_2
  L15_2 = _U
  if L12_2 then
    L16_2 = "music_link_insecure"
    if L16_2 then
      goto lbl_68
    end
  end
  L16_2 = "music_link_unsupported"
  ::lbl_68::
  L15_2 = L15_2(L16_2)
  L16_2 = "error"
  L13_2(L14_2, L15_2, L16_2)
  do return end
  ::lbl_72::
  L13_2 = type
  L14_2 = A3_2
  L13_2 = L13_2(L14_2)
  if "string" == L13_2 then
    L13_2 = #A3_2
    if 0 ~= L13_2 then
      L13_2 = #A3_2
      if not (L13_2 > 100) then
        goto lbl_87
      end
    end
  end
  L13_2 = _U
  L14_2 = "music_custom_url"
  L13_2 = L13_2(L14_2)
  A3_2 = L13_2
  ::lbl_87::
  if "spotify" == L10_2 then
    L13_2 = L27_1
    L14_2 = L5_2
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
    return
  end
  L13_2 = nil
  L14_2 = nil
  L15_2 = nil
  L16_2 = type
  L17_2 = A4_2
  L16_2 = L16_2(L17_2)
  if "table" == L16_2 then
    L16_2 = type
    L17_2 = A4_2.artist
    L16_2 = L16_2(L17_2)
    if "string" == L16_2 then
      L16_2 = A4_2.artist
      L16_2 = #L16_2
      if L16_2 > 0 then
        L16_2 = A4_2.artist
        L16_2 = #L16_2
        if L16_2 <= 100 then
          L13_2 = A4_2.artist
        end
      end
    end
    L16_2 = type
    L17_2 = A4_2.artwork
    L16_2 = L16_2(L17_2)
    if "string" == L16_2 then
      L16_2 = A4_2.artwork
      L16_2 = #L16_2
      L17_2 = 300
      if L16_2 <= L17_2 then
        L16_2 = A4_2.artwork
        L17_2 = L16_2
        L16_2 = L16_2.sub
        L18_2 = 1
        L19_2 = 8
        L16_2 = L16_2(L17_2, L18_2, L19_2)
        if "https://" == L16_2 then
          L14_2 = A4_2.artwork
        end
      end
    end
    L16_2 = A4_2.preview
    if true == L16_2 and "stream" == L10_2 then
      L15_2 = true
    end
  end
  L16_2 = L0_1
  L16_2 = L16_2[A0_2]
  if L16_2 then
    L16_2 = L16_2[L9_2]
  end
  if L16_2 then
    L17_2 = L16_2.queue
    L17_2 = #L17_2
    L18_2 = Config
    L18_2 = L18_2.Music
    L18_2 = L18_2.maxQueue
    if not L18_2 then
      L18_2 = 50
    end
    if L17_2 >= L18_2 then
      L17_2 = Notify
      L18_2 = L5_2
      L19_2 = _U
      L20_2 = "music_queue_full"
      L19_2 = L19_2(L20_2)
      L20_2 = "error"
      L17_2(L18_2, L19_2, L20_2)
      return
    end
  end
  L17_2 = GetPlayerFromId
  L18_2 = L5_2
  L17_2 = L17_2(L18_2)
  if not L17_2 then
    return
  end
  L18_2 = L4_1
  L18_2 = L18_2 + 1
  L4_1 = L18_2
  L18_2 = {}
  L19_2 = "q"
  L20_2 = L4_1
  L19_2 = L19_2 .. L20_2
  L18_2.id = L19_2
  L18_2.url = A2_2
  L18_2.kind = L10_2
  L18_2.src = L11_2
  L18_2.label = A3_2
  L18_2.artist = L13_2
  L18_2.artwork = L14_2
  L18_2.preview = L15_2
  if L15_2 then
    L19_2 = 30.0
    if L19_2 then
      goto lbl_192
    end
  end
  L19_2 = nil
  ::lbl_192::
  L18_2.duration = L19_2
  L19_2 = GetCharName
  L20_2 = GetIdentifier
  L21_2 = L17_2
  L20_2, L21_2, L22_2 = L20_2(L21_2)
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.addedBy = L19_2
  if L15_2 then
    L19_2 = Notify
    L20_2 = L5_2
    L21_2 = _U
    L22_2 = "music_queue_preview"
    L21_2 = L21_2(L22_2)
    L22_2 = "inform"
    L19_2(L20_2, L21_2, L22_2)
  end
  if not L16_2 then
    L19_2 = Electricity
    if L19_2 then
      L19_2 = Electricity
      L19_2 = L19_2.Invalidate
      L20_2 = A0_2
      L19_2(L20_2)
    end
    L19_2 = L0_1
    L20_2 = L0_1
    L20_2 = L20_2[A0_2]
    if not L20_2 then
      L20_2 = {}
    end
    L19_2[A0_2] = L20_2
    L19_2 = L0_1
    L19_2 = L19_2[A0_2]
    L20_2 = {}
    L20_2.mode = "queue"
    L20_2.url = A2_2
    L20_2.kind = L10_2
    L20_2.src = L11_2
    L20_2.label = A3_2
    L20_2.station = nil
    L21_2 = Config
    L21_2 = L21_2.Music
    L21_2 = L21_2.defaultVolume
    L20_2.volume = L21_2
    L20_2.offset = 0
    L21_2 = GetGameTimer
    L21_2 = L21_2()
    L20_2.startedAt = L21_2
    L20_2.paused = false
    L20_2.furnitureId = A1_2
    L20_2.furnitureType = L8_2
    L21_2 = L7_2.reverb
    L20_2.reverb = L21_2
    L21_2 = {}
    L22_2 = L18_2
    L21_2[1] = L22_2
    L20_2.queue = L21_2
    L20_2.index = 1
    L20_2.repeatMode = "off"
    L20_2.shuffle = false
    L21_2 = {}
    L20_2.played = L21_2
    L19_2[L9_2] = L20_2
    L19_2 = L13_1
    L20_2 = A0_2
    L19_2(L20_2)
    L19_2 = L21_1
    L19_2()
    L19_2 = L18_1
    L19_2()
    return
  end
  L19_2 = L16_2.queue
  L20_2 = L16_2.queue
  L20_2 = #L20_2
  L20_2 = L20_2 + 1
  L19_2[L20_2] = L18_2
  L19_2 = L16_2.mode
  if "queue" ~= L19_2 then
    L19_2 = L16_2.mode
    if "tv" == L19_2 then
      L19_2 = Television
      L19_2 = L19_2.ClearSpeakers
      L20_2 = A0_2
      L21_2 = L16_2.screenKey
      L19_2(L20_2, L21_2)
    end
    L16_2.mode = "queue"
    L19_2 = A1_2
    L20_2 = L8_2
    L21_2 = L7_2.reverb
    L16_2.reverb = L21_2
    L16_2.furnitureType = L20_2
    L16_2.furnitureId = L19_2
    L19_2 = L15_1
    L20_2 = A0_2
    L21_2 = L16_2
    L22_2 = L16_2.queue
    L22_2 = #L22_2
    L19_2(L20_2, L21_2, L22_2)
    L19_2 = L18_1
    L19_2()
  else
    L19_2 = L16_2.parked
    if L19_2 then
      L19_2 = L15_1
      L20_2 = A0_2
      L21_2 = L16_2
      L22_2 = L16_2.queue
      L22_2 = #L22_2
      L19_2(L20_2, L21_2, L22_2)
    else
      if not L15_2 then
        L19_2 = Notify
        L20_2 = L5_2
        L21_2 = _U
        L22_2 = "music_queue_added"
        L21_2 = L21_2(L22_2)
        L22_2 = "success"
        L19_2(L20_2, L21_2, L22_2)
      end
      L19_2 = L13_1
      L20_2 = A0_2
      L19_2(L20_2)
    end
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:skipMusic"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  if "next" ~= A2_2 and "prev" ~= A2_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  L9_2 = L8_2 or L9_2
  if L8_2 then
    L9_2 = L8_2.mode
  end
  if "queue" ~= L9_2 then
    return
  end
  if "next" == A2_2 then
    L9_2 = L17_1
    L10_2 = A0_2
    L11_2 = L8_2
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = L9_1
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  if not (L9_2 > 3) then
    L9_2 = L8_2.queue
    L9_2 = #L9_2
    if 1 ~= L9_2 then
      goto lbl_64
    end
  end
  L9_2 = L15_1
  L10_2 = A0_2
  L11_2 = L8_2
  L12_2 = L8_2.index
  L9_2(L10_2, L11_2, L12_2)
  goto lbl_87
  ::lbl_64::
  L9_2 = L8_2.index
  if L9_2 > 1 then
    L9_2 = L15_1
    L10_2 = A0_2
    L11_2 = L8_2
    L12_2 = L8_2.index
    L12_2 = L12_2 - 1
    L9_2(L10_2, L11_2, L12_2)
  else
    L9_2 = L15_1
    L10_2 = A0_2
    L11_2 = L8_2
    L12_2 = L8_2.repeatMode
    if "all" == L12_2 then
      L12_2 = L8_2.queue
      L12_2 = #L12_2
      if L12_2 then
        goto lbl_86
      end
    end
    L12_2 = 1
    ::lbl_86::
    L9_2(L10_2, L11_2, L12_2)
  end
  ::lbl_87::
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:seekMusic"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or A2_2 ~= A2_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L6_2 = L38_1
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  if not L8_2 then
    return
  end
  L9_2 = L8_2.mode
  if "queue" ~= L9_2 then
    L9_2 = Notify
    L10_2 = L3_2
    L11_2 = _U
    L12_2 = "music_seek_live"
    L11_2 = L11_2(L12_2)
    L12_2 = "error"
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = L8_2.queue
  L10_2 = L8_2.index
  L9_2 = L9_2[L10_2]
  if L9_2 then
    L9_2 = L9_2.duration
  end
  if not L9_2 then
    return
  end
  L10_2 = math
  L10_2 = L10_2.min
  L11_2 = L9_2
  L12_2 = math
  L12_2 = L12_2.max
  L13_2 = 0.0
  L14_2 = A2_2 + 0.0
  L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L8_2.offset = L10_2
  L10_2 = GetGameTimer
  L10_2 = L10_2()
  L8_2.startedAt = L10_2
  L10_2 = L13_1
  L11_2 = A0_2
  L10_2(L11_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:reorderQueue"
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Music
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    return
  end
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = A2_2 % 1
    if 0 == L5_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = A3_2 % 1
    if 0 == L5_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L5_2 = Main
  L5_2 = L5_2.AllowChange
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = L8_1
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    return
  end
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  if L9_2 then
    L9_2 = L9_2[L8_2]
  end
  L10_2 = L9_2 or L10_2
  if L9_2 then
    L10_2 = L9_2.mode
  end
  if "queue" ~= L10_2 or A2_2 == A3_2 then
    return
  end
  if not (A2_2 < 1) then
    L10_2 = L9_2.queue
    L10_2 = #L10_2
    if not (A2_2 > L10_2) and not (A3_2 < 1) then
      L10_2 = L9_2.queue
      L10_2 = #L10_2
      if not (A3_2 > L10_2) then
        goto lbl_71
      end
    end
  end
  do return end
  ::lbl_71::
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L9_2.queue
  L12_2 = A3_2
  L13_2 = table
  L13_2 = L13_2.remove
  L14_2 = L9_2.queue
  L15_2 = A2_2
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L9_2.index
  if L10_2 == A2_2 then
    L9_2.index = A3_2
  else
    L10_2 = L9_2.index
    if A2_2 < L10_2 then
      L10_2 = L9_2.index
      if A3_2 >= L10_2 then
        L10_2 = L9_2.index
        L10_2 = L10_2 - 1
        L9_2.index = L10_2
    end
    else
      L10_2 = L9_2.index
      if A2_2 > L10_2 then
        L10_2 = L9_2.index
        if A3_2 <= L10_2 then
          L10_2 = L9_2.index
          L10_2 = L10_2 + 1
          L9_2.index = L10_2
        end
      end
    end
  end
  L10_2 = L13_1
  L11_2 = A0_2
  L10_2(L11_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:playQueueEntry"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  if not L8_2 then
    return
  end
  L9_2 = nil
  L10_2 = ipairs
  L11_2 = L8_2.queue
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.id
    if L16_2 == A2_2 then
      L9_2 = L14_2
      break
    end
  end
  if not L9_2 then
    return
  end
  L10_2 = L8_2.mode
  if "tv" == L10_2 then
    L10_2 = Television
    L10_2 = L10_2.ClearSpeakers
    L11_2 = A0_2
    L12_2 = L8_2.screenKey
    L10_2(L11_2, L12_2)
  end
  L8_2.mode = "queue"
  L10_2 = L8_2.played
  L10_2[A2_2] = true
  L10_2 = L15_1
  L11_2 = A0_2
  L12_2 = L8_2
  L13_2 = L9_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L18_1
  L10_2()
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:removeQueueItem"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  L9_2 = L8_2 or L9_2
  if L8_2 then
    L9_2 = L8_2.mode
  end
  if "queue" ~= L9_2 then
    return
  end
  L9_2 = nil
  L10_2 = ipairs
  L11_2 = L8_2.queue
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.id
    if L16_2 == A2_2 then
      L9_2 = L14_2
      break
    end
  end
  if not L9_2 then
    return
  end
  L10_2 = table
  L10_2 = L10_2.remove
  L11_2 = L8_2.queue
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = L8_2.played
  L10_2[A2_2] = nil
  L10_2 = L8_2.queue
  L10_2 = #L10_2
  if 0 == L10_2 then
    L10_2 = L19_1
    L11_2 = A0_2
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    return
  end
  L10_2 = L8_2.index
  if L9_2 == L10_2 then
    L10_2 = L8_2.index
    L11_2 = L8_2.queue
    L11_2 = #L11_2
    if L10_2 > L11_2 then
      L10_2 = L8_2.repeatMode
      if "all" == L10_2 then
        L10_2 = L15_1
        L11_2 = A0_2
        L12_2 = L8_2
        L13_2 = 1
        L10_2(L11_2, L12_2, L13_2)
      else
        L10_2 = L16_1
        L11_2 = A0_2
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      end
    else
      L10_2 = L15_1
      L11_2 = A0_2
      L12_2 = L8_2
      L13_2 = L8_2.index
      L10_2(L11_2, L12_2, L13_2)
    end
    return
  end
  L10_2 = L8_2.index
  if L9_2 < L10_2 then
    L10_2 = L8_2.index
    L10_2 = L10_2 - 1
    L8_2.index = L10_2
  end
  L10_2 = L13_1
  L11_2 = A0_2
  L10_2(L11_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:clearQueue"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.Music
  if L3_2 then
    L3_2 = L3_2.enable
  end
  if not L3_2 then
    return
  end
  L3_2 = Main
  L3_2 = L3_2.AllowChange
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = L8_1
  L4_2 = L2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    return
  end
  L7_2 = L0_1
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = L7_2[L6_2]
  end
  if L7_2 then
    L8_2 = L7_2.queue
    L8_2 = #L8_2
    if 0 ~= L8_2 then
      goto lbl_37
    end
  end
  do return end
  ::lbl_37::
  L8_2 = L7_2.mode
  if "queue" == L8_2 then
    L8_2 = {}
    L9_2 = L7_2.queue
    L10_2 = L7_2.index
    L9_2 = L9_2[L10_2]
    L8_2[1] = L9_2
    if L8_2 then
      goto lbl_50
    end
  end
  L8_2 = {}
  ::lbl_50::
  L7_2.queue = L8_2
  L7_2.index = 1
  L8_2 = {}
  L7_2.played = L8_2
  L8_2 = L13_1
  L9_2 = A0_2
  L8_2(L9_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:setMusicRepeat"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  if "off" ~= A2_2 and "one" ~= A2_2 and "all" ~= A2_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  if L8_2 then
    L9_2 = L8_2.repeatMode
    if L9_2 ~= A2_2 then
      goto lbl_43
    end
  end
  do return end
  ::lbl_43::
  L8_2.repeatMode = A2_2
  L9_2 = L13_1
  L10_2 = A0_2
  L9_2(L10_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:setMusicShuffle"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "boolean" ~= L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.AllowChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = L8_1
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = L8_2[L7_2]
  end
  if L8_2 then
    L9_2 = L8_2.shuffle
    if L9_2 ~= A2_2 then
      goto lbl_42
    end
  end
  do return end
  ::lbl_42::
  L8_2.shuffle = A2_2
  L9_2 = {}
  L8_2.played = L9_2
  L9_2 = L13_1
  L10_2 = A0_2
  L9_2(L10_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "tk_housing:reportTrackDuration"
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Music
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    return
  end
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L5_2 = type
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      goto lbl_33
    end
  end
  do return end
  ::lbl_33::
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 and A3_2 == A3_2 and not (A3_2 < 1) then
    L5_2 = 21600
    if not (A3_2 > L5_2) then
      goto lbl_46
    end
  end
  do return end
  ::lbl_46::
  L5_2 = Main
  L5_2 = L5_2.GetPropertyAccess
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 ~= A0_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  if L5_2 then
    L5_2 = L5_2[A1_2]
  end
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = L5_2.mode
  end
  if "queue" == L6_2 then
    L6_2 = L5_2.queue
    L7_2 = L5_2.index
    L6_2 = L6_2[L7_2]
    if L6_2 then
      goto lbl_69
    end
  end
  L6_2 = nil
  ::lbl_69::
  if L6_2 then
    L7_2 = L6_2.id
    if L7_2 == A2_2 then
      L7_2 = L6_2.duration
      if nil == L7_2 then
        goto lbl_78
      end
    end
  end
  do return end
  ::lbl_78::
  L7_2 = A3_2 + 0.0
  L6_2.duration = L7_2
  L7_2 = L13_1
  L8_2 = A0_2
  L7_2(L8_2)
end
L40_1(L41_1, L42_1)
L40_1 = {}
L41_1 = 2000
L42_1 = {}
L43_1 = 500
L44_1 = 3.0
L45_1 = 86400
L46_1 = 12000
L47_1 = RegisterNetEvent
L48_1 = "tk_housing:reportTelevisionPosition"
function L49_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Music
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if not L4_2 then
    return
  end
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 and A2_2 == A2_2 and not (A2_2 < 0) then
    L4_2 = L45_1
    if not (A2_2 > L4_2) then
      goto lbl_35
    end
  end
  do return end
  ::lbl_35::
  L4_2 = Main
  L4_2 = L4_2.GetPropertyAccess
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= A0_2 then
    return
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L42_1
  L5_2 = L5_2[L3_2]
  if L5_2 then
    L6_2 = L5_2.at
    L6_2 = L4_2 - L6_2
    L7_2 = L43_1
    if not (L6_2 >= L7_2) then
      goto lbl_61
    end
  end
  L6_2 = L42_1
  L7_2 = {}
  L7_2.at = L4_2
  L7_2.count = 1
  L6_2[L3_2] = L7_2
  goto lbl_78
  ::lbl_61::
  L6_2 = L5_2.count
  L7_2 = Config
  L7_2 = L7_2.Television
  if L7_2 then
    L7_2 = L7_2.maxPlaying
  end
  if not L7_2 then
    L7_2 = 2
  end
  if L6_2 >= L7_2 then
    return
  else
    L6_2 = L5_2.count
    L6_2 = L6_2 + 1
    L5_2.count = L6_2
  end
  ::lbl_78::
  L6_2 = Television
  L6_2 = L6_2.GetScreenKey
  L7_2 = A0_2
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    return
  end
  L7_2 = L40_1
  L7_2 = L7_2[L3_2]
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = L7_2[L6_2]
  if L8_2 then
    L8_2 = L7_2[L6_2]
    L8_2 = L4_2 - L8_2
    L9_2 = L41_1
    if L8_2 < L9_2 then
      return
    end
  end
  L7_2[L6_2] = L4_2
  L8_2 = L40_1
  L8_2[L3_2] = L7_2
  L8_2 = L22_1
  L9_2 = A0_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L9_2 = L8_2.paused
    if not L9_2 then
      goto lbl_115
    end
  end
  do return end
  ::lbl_115::
  L9_2 = L8_2.clockSrc
  if L9_2 ~= L3_2 then
    L9_2 = L8_2.clockAt
    if L9_2 then
      L9_2 = L8_2.clockAt
      L9_2 = L4_2 - L9_2
      L10_2 = L46_1
      if L9_2 < L10_2 then
        return
      end
    end
    L8_2.clockSrc = L3_2
  end
  L8_2.clockAt = L4_2
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L9_1
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 - A2_2
  L9_2 = L9_2(L10_2)
  L10_2 = L44_1
  if L9_2 <= L10_2 then
    return
  end
  L9_2 = A2_2 + 0.0
  L8_2.offset = L9_2
  L8_2.startedAt = L4_2
  L9_2 = L13_1
  L10_2 = A0_2
  L9_2(L10_2)
end
L47_1(L48_1, L49_1)
L47_1 = AddEventHandler
L48_1 = "playerDropped"
function L49_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = L24_1
  L1_2[L0_2] = nil
  L1_2 = L32_1
  L1_2[L0_2] = nil
  L1_2 = L40_1
  L1_2[L0_2] = nil
  L1_2 = L42_1
  L1_2[L0_2] = nil
end
L47_1(L48_1, L49_1)
