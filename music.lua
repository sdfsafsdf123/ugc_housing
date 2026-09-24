local L0_1, L1_1, L2_1, L3_1
L0_1 = Music
if not L0_1 then
  L0_1 = {}
end
Music = L0_1
L0_1 = 512
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2 == A1_2
  return L2_2
end
L2_1 = Music
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = #A0_2
    L2_2 = L0_1
    if not (L1_2 > L2_2) then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^https?://([^/]+)"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.lower
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = ":%d+$"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^https?://[^/]+(/[^?#]*)"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = "/"
  end
  if "youtu.be" ~= L1_2 then
    L3_2 = L1_1
    L4_2 = L1_2
    L5_2 = "youtube.com"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      goto lbl_77
    end
  end
  L3_2 = nil
  if "youtu.be" == L1_2 then
    L5_2 = L2_2
    L4_2 = L2_2.match
    L6_2 = "^/([%w%-_]+)"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L5_2 = A0_2
    L4_2 = A0_2.match
    L6_2 = "[?&]v=([%w%-_]+)"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2 or L3_2
    if not L4_2 then
      L5_2 = L2_2
      L4_2 = L2_2.match
      L6_2 = "^/shorts/([%w%-_]+)"
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2 or L3_2
      if not L4_2 then
        L5_2 = L2_2
        L4_2 = L2_2.match
        L6_2 = "^/live/([%w%-_]+)"
        L4_2 = L4_2(L5_2, L6_2)
        L3_2 = L4_2 or L3_2
        if not L4_2 then
          L5_2 = L2_2
          L4_2 = L2_2.match
          L6_2 = "^/embed/([%w%-_]+)"
          L4_2 = L4_2(L5_2, L6_2)
          L3_2 = L4_2
        end
      end
    end
  end
  if L3_2 then
    L4_2 = #L3_2
    if 11 == L4_2 then
      L4_2 = "youtube"
      L5_2 = L3_2
      return L4_2, L5_2
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_77::
  L3_2 = L1_1
  L4_2 = L1_2
  L5_2 = "soundcloud.com"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.match
    L5_2 = "^/([%w%-_%.]+)/([%w%-_%.]+)/?$"
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    if L3_2 and L4_2 and "discover" ~= L3_2 and "search" ~= L3_2 then
      L5_2 = "soundcloud"
      L6_2 = "https://soundcloud.com/%s/%s"
      L7_2 = L6_2
      L6_2 = L6_2.format
      L8_2 = L3_2
      L9_2 = L4_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
      return L5_2, L6_2, L7_2, L8_2, L9_2
    end
    L5_2 = nil
    return L5_2
  end
  L3_2 = L1_1
  L4_2 = L1_2
  L5_2 = "spotify.com"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.match
    L5_2 = "/track/(%w+)"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = "spotify"
      L5_2 = L3_2
      return L4_2, L5_2
    end
    L4_2 = nil
    return L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.sub
  L5_2 = 1
  L6_2 = 7
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if "http://" == L3_2 then
    L3_2 = nil
    L4_2 = nil
    L5_2 = true
    return L3_2, L4_2, L5_2
  end
  L3_2 = "stream"
  L4_2 = A0_2
  return L3_2, L4_2
end
L2_1.ParseUrl = L3_1
