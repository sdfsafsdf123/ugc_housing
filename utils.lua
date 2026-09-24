local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1
L0_1 = {}
Utils = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L2_2 = {}
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L0_1
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L2_2[L7_2] = L9_2
    end
    return L2_2
  elseif "function" == L1_2 then
    L2_2 = tostring
    L3_2 = A0_2
    return L2_2(L3_2)
  elseif "userdata" == L1_2 then
    L2_2 = tostring
    L3_2 = A0_2
    return L2_2(L3_2)
  else
    return A0_2
  end
end
L1_1 = Utils
function L2_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.DebugMode
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = 1
  L2_2 = select
  L3_2 = "#"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L7_2 = json
      L7_2 = L7_2.encode
      L8_2 = L0_1
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L9_2 = {}
      L9_2.indent = true
      L7_2 = L7_2(L8_2, L9_2)
      L0_2[L4_2] = L7_2
    else
      L7_2 = tostring
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L0_2[L4_2] = L7_2
    end
  end
  L1_2 = print
  L2_2 = "[tk_housing] [DEBUG] [%s]"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = GetGameTimer
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = L0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L1_1.Debug = L2_1
L1_1 = Utils
function L2_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = 1
  L2_2 = select
  L3_2 = "#"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L7_2 = json
      L7_2 = L7_2.encode
      L8_2 = L0_1
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L9_2 = {}
      L9_2.indent = true
      L7_2 = L7_2(L8_2, L9_2)
      L0_2[L4_2] = L7_2
    else
      L7_2 = tostring
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L0_2[L4_2] = L7_2
    end
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = "[%s]"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = print
  L4_2 = "[tk_housing] [WARNING] %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L0_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L1_1.Warn = L2_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = A0_2
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_2
  L3_2 = L3_2.gmatch
  L5_2 = "(.-)"
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L2_1 = Utils
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = {}
  L4_2.id = A0_2
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.name = L5_2
  if L2_2 then
    L5_2 = GetIdentifier
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_27
    end
  end
  L5_2 = nil
  ::lbl_27::
  L4_2.serverIdentifier = L5_2
  L5_2 = {}
  L6_2 = L3_2.x
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L5_2.y = L6_2
  L6_2 = L3_2.z
  L5_2.z = L6_2
  L4_2.coords = L5_2
  L5_2 = pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L1_1
    L12_2 = L10_2
    L13_2 = ":"
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L11_2[1]
    L13_2 = L11_2[2]
    L4_2[L12_2] = L13_2
  end
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = L4_2
  L7_2 = {}
  L7_2.indent = true
  return L5_2(L6_2, L7_2)
end
L2_1.GetIdentifiers = L3_1
L2_1 = Utils
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = nil
    L3_2 = string
    L3_2 = L3_2.gsub
    L4_2 = L1_2
    L5_2 = "^(-?%d+)(%d%d%d)"
    L6_2 = "%1,%2"
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L4_2
    L1_2 = L3_2
    if 0 == L2_2 then
      break
    end
  end
  return L1_2
end
L2_1.GroupDigits = L3_1
L2_1 = Utils
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.DeepCopy
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L1_2[L6_2] = L8_2
    else
      L1_2[L6_2] = L7_2
    end
  end
  return L1_2
end
L2_1.DeepCopy = L3_1
L2_1 = Utils
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%s*(.-)%s*$"
  L4_2 = "%1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
L2_1.Trim = L3_1
L2_1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
L3_1 = {}
L4_1 = 1
L5_1 = #L2_1
L6_1 = 1
for L7_1 = L4_1, L5_1, L6_1 do
  L9_1 = L2_1
  L8_1 = L2_1.byte
  L10_1 = L7_1
  L8_1 = L8_1(L9_1, L10_1)
  L9_1 = L7_1 - 1
  L3_1[L8_1] = L9_1
end
L4_1 = Utils
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "=+$"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = 1
  L4_2 = #A0_2
  L4_2 = L4_2 - 3
  L5_2 = 4
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2.byte
    L9_2 = L6_2
    L10_2 = L6_2 + 3
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
    L11_2 = L3_1
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2 << 18
    L12_2 = L3_1
    L12_2 = L12_2[L8_2]
    L12_2 = L12_2 << 12
    L11_2 = L11_2 | L12_2
    L12_2 = L3_1
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2 << 6
    L11_2 = L11_2 | L12_2
    L12_2 = L3_1
    L12_2 = L12_2[L10_2]
    L11_2 = L11_2 | L12_2
    L2_2 = L2_2 + 1
    L12_2 = string
    L12_2 = L12_2.char
    L13_2 = L11_2 >> 16
    L13_2 = L13_2 & 255
    L14_2 = L11_2 >> 8
    L14_2 = L14_2 & 255
    L15_2 = L11_2 & 255
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L1_2[L2_2] = L12_2
  end
  L3_2 = #A0_2
  L3_2 = L3_2 % 4
  if 2 == L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.byte
    L6_2 = #A0_2
    L6_2 = L6_2 - 1
    L7_2 = #A0_2
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = L3_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2 << 18
    L7_2 = L3_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2 << 12
    L6_2 = L6_2 | L7_2
    L7_2 = L2_2 + 1
    L8_2 = string
    L8_2 = L8_2.char
    L9_2 = L6_2 >> 16
    L9_2 = L9_2 & 255
    L8_2 = L8_2(L9_2)
    L1_2[L7_2] = L8_2
  elseif 3 == L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.byte
    L6_2 = #A0_2
    L6_2 = L6_2 - 2
    L7_2 = #A0_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
    L7_2 = L3_1
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2 << 18
    L8_2 = L3_1
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2 << 12
    L7_2 = L7_2 | L8_2
    L8_2 = L3_1
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2 << 6
    L7_2 = L7_2 | L8_2
    L8_2 = L2_2 + 1
    L9_2 = string
    L9_2 = L9_2.char
    L10_2 = L7_2 >> 16
    L10_2 = L10_2 & 255
    L11_2 = L7_2 >> 8
    L11_2 = L11_2 & 255
    L9_2 = L9_2(L10_2, L11_2)
    L1_2[L8_2] = L9_2
  end
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = L1_2
  return L4_2(L5_2)
end
L4_1.Base64Decode = L5_1
L4_1 = {}
L4_1["data:image/png;base64,"] = "iVBORw0KGgo"
L4_1["data:image/webp;base64,"] = "UklGR"
L5_1 = Utils
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = string
    L7_2 = L7_2.sub
    L8_2 = A0_2
    L9_2 = 1
    L10_2 = #L5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 == L5_2 then
      L7_2 = string
      L7_2 = L7_2.sub
      L8_2 = A0_2
      L9_2 = #L5_2
      L9_2 = L9_2 + 1
      L10_2 = #L5_2
      L11_2 = #L6_2
      L10_2 = L10_2 + L11_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L7_2 = L7_2 == L6_2
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
L5_1.HasImageHeader = L6_1
L5_1 = Utils
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.Trim
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  return A0_2
end
L5_1.NormalizePlate = L6_1
L5_1 = Utils
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    return A0_2
  end
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 % 4294967296
  L2_2 = 2147483648
  if L1_2 >= L2_2 then
    L2_2 = L1_2 - 4294967296
    return L2_2
  end
  return L1_2
end
L5_1.NormalizeModelHash = L6_1
L5_1 = Utils
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "string" == L2_2 and "number" == L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.NormalizeModelHash
    L5_2 = joaat
    L6_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = Utils
    L5_2 = L5_2.NormalizeModelHash
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 == L5_2
    return L4_2
  end
  if "number" == L2_2 and "string" == L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.NormalizeModelHash
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = Utils
    L5_2 = L5_2.NormalizeModelHash
    L6_2 = joaat
    L7_2 = A1_2
    L6_2, L7_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 == L5_2
    return L4_2
  end
  if "number" == L2_2 and "number" == L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.NormalizeModelHash
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = Utils
    L5_2 = L5_2.NormalizeModelHash
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 == L5_2
    return L4_2
  end
  L4_2 = false
  return L4_2
end
L5_1.DoModelsMatch = L6_1
L5_1 = {}
L6_1 = Utils
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil ~= A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "string" == L1_2 then
      goto lbl_15
    end
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" == L1_2 then
      goto lbl_15
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_15::
  L1_2 = IsModelValid
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      goto lbl_37
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_37::
  L2_2 = L5_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    L3_2 = IsModelValid
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L3_2 = L5_1
    L3_2[L1_2] = L2_2
  end
  return L2_2
end
L6_1.IsModelSpawnable = L7_1
L6_1 = Utils
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Utils
  L1_2 = L1_2.IsModelSpawnable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.IsModelSpawnable
  L2_2 = ShellNames
  L2_2 = L2_2.Rename
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = ShellNames
  L1_2 = L1_2.OldName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.IsModelSpawnable
  L3_2 = L1_2
  L2_2 = nil ~= L1_2 and L2_2
  return L2_2
end
L6_1.IsShellModelSpawnable = L7_1
L6_1 = Utils
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_2.minBuild
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = GetGameBuildNumber
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_18::
  L2_2 = GetGameBuildNumber
  L2_2 = L2_2()
  L2_2 = L1_2 <= L2_2
  return L2_2
end
L6_1.MeetsMinBuild = L7_1
L6_1 = nil
L7_1 = false
L8_1 = Utils
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = L7_1
  if L0_2 then
    return
  end
  L0_2 = true
  L7_1 = L0_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Furniture
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = #L0_2
    L6_2 = L6_2 + 1
    L0_2[L6_2] = L5_2
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Config
    L8_2 = L8_2.Furniture
    L8_2 = L8_2[L7_2]
    L9_2 = {}
    L10_2 = 1
    L11_2 = #L8_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = L8_2[L13_2]
      L15_2 = type
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if "table" == L15_2 then
        L15_2 = L14_2.model
        if nil ~= L15_2 then
          L15_2 = type
          L16_2 = L14_2.model
          L15_2 = L15_2(L16_2)
          if "string" == L15_2 then
            L15_2 = Utils
            L15_2 = L15_2.NormalizeModelHash
            L16_2 = joaat
            L17_2 = L14_2.model
            L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
            L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
            if L15_2 then
              goto lbl_66
            end
          end
          L15_2 = Utils
          L15_2 = L15_2.NormalizeModelHash
          L16_2 = L14_2.model
          L15_2 = L15_2(L16_2)
          ::lbl_66::
          L16_2 = L1_2[L15_2]
          if not L16_2 then
            L16_2 = L9_2[L15_2]
            if not L16_2 then
              L9_2[L15_2] = L13_2
            end
          end
        end
      end
    end
    L10_2 = #L8_2
    L11_2 = 1
    L12_2 = -1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = L8_2[L13_2]
      L15_2 = type
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if "table" == L15_2 then
        L15_2 = L14_2.model
        if nil ~= L15_2 then
          L15_2 = type
          L16_2 = L14_2.model
          L15_2 = L15_2(L16_2)
          if "string" == L15_2 then
            L15_2 = Utils
            L15_2 = L15_2.NormalizeModelHash
            L16_2 = joaat
            L17_2 = L14_2.model
            L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
            L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
            if L15_2 then
              goto lbl_104
            end
          end
          L15_2 = Utils
          L15_2 = L15_2.NormalizeModelHash
          L16_2 = L14_2.model
          L15_2 = L15_2(L16_2)
          ::lbl_104::
          L16_2 = L9_2[L15_2]
          if L16_2 == L13_2 then
            L1_2[L15_2] = true
          else
            L16_2 = Utils
            L16_2 = L16_2.Warn
            L17_2 = "Removed a duplicate furniture entry from the catalog"
            L18_2 = L7_2
            L19_2 = L14_2.model
            L16_2(L17_2, L18_2, L19_2)
            L16_2 = table
            L16_2 = L16_2.remove
            L17_2 = L8_2
            L18_2 = L13_2
            L16_2(L17_2, L18_2)
          end
        end
      end
    end
  end
end
L8_1.RemoveDuplicateFurniture = L9_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = Utils
  L0_2 = L0_2.RemoveDuplicateFurniture
  L0_2()
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Furniture
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = type
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if "table" == L13_2 then
        L13_2 = L12_2.model
        if nil ~= L13_2 then
          L13_2 = type
          L14_2 = L12_2.model
          L13_2 = L13_2(L14_2)
          if "string" == L13_2 then
            L13_2 = Utils
            L13_2 = L13_2.NormalizeModelHash
            L14_2 = joaat
            L15_2 = L12_2.model
            L14_2, L15_2 = L14_2(L15_2)
            L13_2 = L13_2(L14_2, L15_2)
            if L13_2 then
              goto lbl_40
            end
          end
          L13_2 = Utils
          L13_2 = L13_2.NormalizeModelHash
          L14_2 = L12_2.model
          L13_2 = L13_2(L14_2)
          ::lbl_40::
          L14_2 = L0_2[L13_2]
          if nil == L14_2 then
            L0_2[L13_2] = L12_2
          end
        end
      end
    end
  end
  return L0_2
end
L9_1 = Utils
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  if nil == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L6_1
  if not L1_2 then
    L1_2 = L8_1
    L1_2 = L1_2()
    L6_1 = L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_28
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_28::
  L2_2 = L6_1
  L2_2 = L2_2[L1_2]
  return L2_2
end
L9_1.GetCatalogEntryByModel = L10_1
L9_1 = {}
L10_1 = Utils
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = math
    L2_3 = L2_3.abs
    L3_3 = A0_3 - A1_3
    L2_3 = L2_3(L3_3)
    L3_3 = 0.001
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2 = L2_2
  L4_2 = A0_2.x
  L5_2 = -1.0
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L2_2
    L4_2 = A0_2.y
    L5_2 = -1.0
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = L2_2
      L4_2 = A0_2.z
      L5_2 = -1.0
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = L2_2
        L4_2 = A1_2.x
        L5_2 = 1.0
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L3_2 = L2_2
          L4_2 = A1_2.y
          L5_2 = 1.0
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            L3_2 = L2_2
            L4_2 = A1_2.z
            L5_2 = 1.0
            L3_2 = L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
  return L3_2
end
L10_1.IsPlaceholderBox = L11_1
L10_1 = Utils
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L1_2 then
      goto lbl_18
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_18::
  L2_2 = L9_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = L2_2.min
    L4_2 = L2_2.max
    L5_2 = L2_2.ok
    return L3_2, L4_2, L5_2
  end
  L3_2 = Utils
  L3_2 = L3_2.GetCatalogEntryByModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.bounds
  end
  if L3_2 then
    L4_2 = L3_2.min
    L5_2 = L3_2.max
    if L4_2 and L5_2 then
      L6_2 = L5_2.x
      L7_2 = L4_2.x
      if L6_2 > L7_2 then
        L6_2 = L5_2.y
        L7_2 = L4_2.y
        if L6_2 > L7_2 then
          L6_2 = L5_2.z
          L7_2 = L4_2.z
          if L6_2 > L7_2 then
            L6_2 = L9_1
            L7_2 = {}
            L7_2.min = L4_2
            L7_2.max = L5_2
            L7_2.ok = true
            L6_2[L1_2] = L7_2
            L6_2 = L4_2
            L7_2 = L5_2
            L8_2 = true
            return L6_2, L7_2, L8_2
          end
        end
      end
    end
    L6_2 = Utils
    L6_2 = L6_2.Warn
    L7_2 = "Furniture entry has an unusable bounds override"
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
  end
  L4_2 = GetModelDimensions
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L5_2.x
  L8_2 = L4_2.x
  L7_2 = L7_2 - L8_2
  L8_2 = L5_2.y
  L9_2 = L4_2.y
  L8_2 = L8_2 - L9_2
  L9_2 = L5_2.z
  L10_2 = L4_2.z
  L9_2 = L9_2 - L10_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = 0.001
  if L6_2 < L7_2 then
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = true
    return L7_2, L8_2, L9_2
  end
  L7_2 = Utils
  L7_2 = L7_2.IsPlaceholderBox
  L8_2 = L4_2
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = not L7_2
  L8_2 = L9_1
  L9_2 = {}
  L9_2.min = L4_2
  L9_2.max = L5_2
  L9_2.ok = L7_2
  L8_2[L1_2] = L9_2
  if not L7_2 then
    L8_2 = Utils
    L8_2 = L8_2.Warn
    L9_2 = "Furniture model has no real size data, give it a bounds override in config/furniture.lua or remove the row"
    L10_2 = A0_2
    L8_2(L9_2, L10_2)
  end
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L7_2
  return L8_2, L9_2, L10_2
end
L10_1.GetModelBounds = L11_1
L10_1 = {}
L11_1 = Utils
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil == A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L1_2 then
      goto lbl_23
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_23::
  L2_2 = L10_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    return L2_2
  end
  L3_2 = Utils
  L3_2 = L3_2.GetCatalogEntryByModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.uses
  end
  if nil ~= L5_2 then
    L5_2 = type
    L6_2 = L3_2.uses
    L5_2 = L5_2(L6_2)
    if "table" == L5_2 then
      L5_2 = L3_2.uses
      if L5_2 then
        goto lbl_51
      end
    end
    L5_2 = {}
    L6_2 = L3_2.uses
    L5_2[1] = L6_2
    ::lbl_51::
    L6_2 = 1
    L7_2 = #L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L5_2[L9_2]
      L4_2[L9_2] = L10_2
    end
  elseif L3_2 then
    L5_2 = L3_2.isStorage
    if L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L4_2[L5_2] = "storage"
    end
    L5_2 = L3_2.isWardrobe
    if L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L4_2[L5_2] = "wardrobe"
    end
    L5_2 = L3_2.waterUseType
    if L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L6_2 = L3_2.waterUseType
      L4_2[L5_2] = L6_2
    end
    L5_2 = L3_2.cook
    if L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L6_2 = L3_2.cook
      L4_2[L5_2] = L6_2
    end
    L5_2 = L3_2.light
    if true ~= L5_2 then
      L5_2 = type
      L6_2 = L3_2.light
      L5_2 = L5_2(L6_2)
      if "table" ~= L5_2 then
        goto lbl_103
      end
    end
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L4_2[L5_2] = "light"
    ::lbl_103::
    L5_2 = type
    L6_2 = L3_2.speaker
    L5_2 = L5_2(L6_2)
    if "table" == L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L4_2[L5_2] = "music"
    end
    L5_2 = type
    L6_2 = L3_2.tv
    L5_2 = L5_2(L6_2)
    if "table" == L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L4_2[L5_2] = "television"
    end
    L5_2 = L3_2.frame
    if true ~= L5_2 then
      L5_2 = type
      L6_2 = L3_2.frame
      L5_2 = L5_2(L6_2)
      if "table" ~= L5_2 then
        goto lbl_133
      end
    end
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L4_2[L5_2] = "frame"
    ::lbl_133::
    L5_2 = type
    L6_2 = L3_2.use
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L6_2 = L3_2.use
      L4_2[L5_2] = L6_2
    end
  end
  L5_2 = L10_1
  L5_2[L1_2] = L4_2
  return L4_2
end
L11_1.GetFurnitureKinds = L12_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = Config
    L7_2 = L7_2.FurnitureUses
    if L7_2 then
      L7_2 = L7_2[L6_2]
    end
    if L7_2 then
      L8_2 = L7_2.action
      if not L8_2 then
        L8_2 = L6_2
      end
      if L8_2 == A1_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L13_1 = Utils
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.kinds
  if not L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.GetFurnitureKinds
    L2_2 = A0_2.model
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L13_1.GetEntryKinds = L14_1
L13_1 = Utils
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L11_1
  L3_2 = Utils
  L3_2 = L3_2.GetEntryKinds
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L13_1.EntryHasKind = L14_1
L13_1 = Utils
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L12_1
  L3_2 = Utils
  L3_2 = L3_2.GetEntryKinds
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L13_1.GetEntryKindWithHandler = L14_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = tonumber
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = Config
    L4_2 = L4_2.Electricity
    if L4_2 then
      L4_2 = L4_2.standbyWatts
      if L4_2 then
        L4_2 = L4_2[A1_2]
      end
    end
  end
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = L3_2
  L6_2 = tonumber
  L7_2 = A2_2 or L7_2
  if A2_2 then
    L7_2 = Config
    L7_2 = L7_2.Electricity
    if L7_2 then
      L7_2 = L7_2.standbyWatts
      if L7_2 then
        L7_2 = L7_2[A2_2]
      end
    end
  end
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = 1
  L5_2 = #A0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = math
    L8_2 = L8_2.max
    L9_2 = L3_2
    L10_2 = tonumber
    L11_2 = Config
    L11_2 = L11_2.Electricity
    if L11_2 then
      L11_2 = L11_2.standbyWatts
      if L11_2 then
        L12_2 = A0_2[L7_2]
        L11_2 = L11_2[L12_2]
      end
    end
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = 0
    end
    L8_2 = L8_2(L9_2, L10_2)
    L3_2 = L8_2
  end
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 0
  L6_2 = L3_2
  return L4_2(L5_2, L6_2)
end
L14_1 = Utils
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = Utils
  L2_2 = L2_2.GetEntryKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L11_1
  L4_2 = L2_2
  L5_2 = "generator"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L11_1
    L4_2 = L2_2
    L5_2 = "battery"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      goto lbl_19
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_19::
  L3_2 = Utils
  L3_2 = L3_2.GetCatalogEntryByModel
  L4_2 = A0_2.model
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.temperature
  end
  if "heat" ~= L4_2 and "cool" ~= L4_2 then
    L4_2 = nil
  end
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.power
  end
  L6_2 = type
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "string" ~= L6_2 then
    L5_2 = nil
  end
  L6_2 = tonumber
  L7_2 = L3_2 or L7_2
  if L3_2 then
    L7_2 = L3_2.electricityWatts
  end
  L6_2 = L6_2(L7_2)
  if not L6_2 and L4_2 then
    L7_2 = tonumber
    L8_2 = Config
    L8_2 = L8_2.Temperature
    L8_2 = L8_2.devices
    if L8_2 then
      L8_2 = L8_2[L4_2]
      if L8_2 then
        L8_2 = L8_2.wattsPerDevice
      end
    end
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2 or L6_2
    if not L7_2 then
      L7_2 = tonumber
      L8_2 = Config
      L8_2 = L8_2.Electricity
      if L8_2 then
        L8_2 = L8_2.furnitureWatts
        if L8_2 then
          L8_2 = L8_2[L4_2]
        end
      end
      L7_2 = L7_2(L8_2)
      L6_2 = L7_2
    end
  end
  if not L6_2 then
    L7_2 = 1
    L8_2 = #L2_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = tonumber
      L12_2 = Config
      L12_2 = L12_2.Electricity
      if L12_2 then
        L12_2 = L12_2.furnitureWatts
        if L12_2 then
          L13_2 = L2_2[L10_2]
          L12_2 = L12_2[L13_2]
        end
      end
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L12_2 = math
        L12_2 = L12_2.max
        L13_2 = L6_2 or L13_2
        if not L6_2 then
          L13_2 = 0
        end
        L14_2 = L11_2
        L12_2 = L12_2(L13_2, L14_2)
        L6_2 = L12_2
      end
    end
    L7_2 = tonumber
    L8_2 = L5_2 or L8_2
    if L5_2 then
      L8_2 = Config
      L8_2 = L8_2.Electricity
      if L8_2 then
        L8_2 = L8_2.furnitureWatts
        if L8_2 then
          L8_2 = L8_2[L5_2]
        end
      end
    end
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = math
      L8_2 = L8_2.max
      L9_2 = L6_2 or L9_2
      if not L6_2 then
        L9_2 = 0
      end
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L6_2 = L8_2
    end
  end
  if not L6_2 then
    L7_2 = nil
    return L7_2
  end
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 0
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L7_2
  if A1_2 then
    L7_2 = math
    L7_2 = L7_2.min
    L8_2 = L6_2
    L9_2 = L13_1
    L10_2 = L2_2
    L11_2 = L4_2
    L12_2 = L5_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2)
    return L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  return L6_2
end
L14_1.GetElectricityWatts = L15_1
L14_1 = nil
L15_1 = 20
L16_1 = Utils
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = L14_1
  if L0_2 then
    L0_2 = L14_1
    return L0_2
  end
  L0_2 = Utils
  L0_2 = L0_2.RemoveDuplicateFurniture
  L0_2()
  L0_2 = {}
  L1_2 = {}
  L14_1 = L1_2
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Furniture
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = {}
    L8_2 = ipairs
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = type
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if "table" ~= L14_2 then
        L14_2 = #L7_2
        L14_2 = L14_2 + 1
        L7_2[L14_2] = L13_2
      else
        L14_2 = Utils
        L14_2 = L14_2.MeetsMinBuild
        L15_2 = L13_2.model
        L14_2 = L14_2(L15_2)
        if not L14_2 then
        else
          L14_2 = Utils
          L14_2 = L14_2.IsModelSpawnable
          L15_2 = L13_2.model
          L14_2 = L14_2(L15_2)
          if not L14_2 then
            L14_2 = #L0_2
            L14_2 = L14_2 + 1
            L15_2 = tostring
            L16_2 = L13_2.model
            L15_2 = L15_2(L16_2)
            L0_2[L14_2] = L15_2
          else
            L14_2 = Utils
            L14_2 = L14_2.GetFurnitureKinds
            L15_2 = L13_2.model
            L14_2 = L14_2(L15_2)
            L15_2 = #L14_2
            L15_2 = L15_2 > 0
            L16_2 = L13_2.interactions
            if nil ~= L16_2 or L15_2 then
              L16_2 = {}
              L17_2 = pairs
              L18_2 = L13_2
              L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
              for L21_2, L22_2 in L17_2, L18_2, L19_2, L20_2 do
                if "interactions" ~= L21_2 then
                  L16_2[L21_2] = L22_2
                end
              end
              if L15_2 then
                L16_2.uses = L14_2
              end
              L17_2 = #L7_2
              L17_2 = L17_2 + 1
              L7_2[L17_2] = L16_2
            else
              L16_2 = #L7_2
              L16_2 = L16_2 + 1
              L7_2[L16_2] = L13_2
            end
          end
        end
      end
    end
    L8_2 = #L7_2
    if L8_2 > 0 then
      L8_2 = L14_1
      L8_2[L5_2] = L7_2
    end
  end
  L1_2 = #L0_2
  if L1_2 > 0 then
    L1_2 = {}
    L2_2 = 1
    L3_2 = math
    L3_2 = L3_2.min
    L4_2 = #L0_2
    L5_2 = L15_1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L0_2[L5_2]
      L1_2[L5_2] = L6_2
    end
    L2_2 = #L0_2
    L3_2 = L15_1
    if L2_2 > L3_2 then
      L2_2 = #L1_2
      L2_2 = L2_2 + 1
      L3_2 = "(+%s more)"
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = #L0_2
      L6_2 = L15_1
      L5_2 = L5_2 - L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L1_2[L2_2] = L3_2
    end
    L2_2 = Utils
    L2_2 = L2_2.Warn
    L3_2 = "Hid furniture models that the game has no archetype for. Remove or fix them in config/furniture.lua"
    L4_2 = #L0_2
    L5_2 = table
    L5_2 = L5_2.concat
    L6_2 = L1_2
    L7_2 = ", "
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L5_2(L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
  L1_2 = L14_1
  return L1_2
end
L16_1.GetFurnitureForNui = L17_1
L16_1 = {}
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.isIpl
    if true ~= L10_2 then
      L10_2 = L9_2.model
      if nil ~= L10_2 then
        L10_2 = L9_2.isCustomShell
        if not L10_2 then
          L10_2 = Utils
          L10_2 = L10_2.IsShellModelSpawnable
          L11_2 = L9_2.model
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = {}
            L11_2 = pairs
            L12_2 = L9_2
            L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
            for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
              L10_2[L15_2] = L16_2
            end
            L10_2.modelMissing = true
            L3_2[L8_2] = L10_2
            L11_2 = #L2_2
            L11_2 = L11_2 + 1
            L2_2[L11_2] = L8_2
        end
      end
    end
    else
      L3_2[L8_2] = L9_2
    end
  end
  L4_2 = #L2_2
  if L4_2 > 0 then
    L4_2 = L16_1
    L4_2 = L4_2[A1_2]
    if not L4_2 then
      L4_2 = L16_1
      L4_2[A1_2] = true
      L4_2 = Utils
      L4_2 = L4_2.Debug
      L5_2 = "Hiding %s entries whose shell model is not installed"
      L6_2 = L5_2
      L5_2 = L5_2.format
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = table
      L6_2 = L6_2.concat
      L7_2 = L2_2
      L8_2 = ", "
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  return L3_2
end
L18_1 = Utils
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Config
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2[L5_2] = L6_2
  end
  L1_2 = Utils
  L1_2 = L1_2.GetFurnitureForNui
  L1_2 = L1_2()
  L0_2.Furniture = L1_2
  L1_2 = L17_1
  L2_2 = Config
  L2_2 = L2_2.HouseInteriors
  L3_2 = "HouseInteriors"
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.HouseInteriors = L1_2
  L1_2 = L17_1
  L2_2 = Config
  L2_2 = L2_2.GarageInteriors
  L3_2 = "GarageInteriors"
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.GarageInteriors = L1_2
  L1_2 = AccessPoints
  L1_2 = L1_2.GetKinds
  L1_2 = L1_2()
  L0_2.SpotKinds = L1_2
  return L0_2
end
L18_1.GetConfigForNui = L19_1
L18_1 = Utils
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.upper
    L2_2 = string
    L2_2 = L2_2.sub
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = 7
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = "WEAPON_" == L1_2
  end
  return L1_2
end
L18_1.IsWeapon = L19_1
L18_1 = nil
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L18_1
  if not L1_2 then
    L1_2 = {}
    L18_1 = L1_2
    L1_2 = pairs
    L2_2 = Config
    L2_2 = L2_2.StorageBlacklist
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2 in L1_2, L2_2, L3_2, L4_2 do
      L6_2 = string
      L6_2 = L6_2.lower
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = L18_1
      L7_2[L6_2] = true
    end
  end
  L1_2 = nil ~= A0_2
  return L1_2
end
L19_1.IsStorageBlacklisted = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "storage"
  return L1_2(L2_2, L3_2)
end
L19_1.IsStorage = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "wardrobe"
  return L1_2(L2_2, L3_2)
end
L19_1.IsWardrobe = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.GetWaterUseType
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L19_1.HasWaterUse = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L12_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "water"
  return L1_2(L2_2, L3_2)
end
L19_1.GetWaterUseType = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Utils
  L2_2 = L2_2.GetWaterUseType
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.WaterUse
    L3_2 = L3_2[L2_2]
  end
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = L1_2.waterUse
  L5_2 = L3_2.anchor
  L6_2 = L4_2 or L6_2
  if L4_2 then
    L6_2 = L4_2.anchor
  end
  if nil ~= L6_2 then
    L5_2 = L4_2.anchor
  end
  L6_2 = {}
  L7_2 = L3_2.anim
  L6_2.anim = L7_2
  L7_2 = L3_2.duration
  L6_2.duration = L7_2
  L6_2.anchor = L5_2
  L7_2 = {}
  L8_2 = L3_2.ptfx
  L8_2 = L8_2.asset
  L7_2.asset = L8_2
  L8_2 = L3_2.ptfx
  L8_2 = L8_2.name
  L7_2.name = L8_2
  L8_2 = L4_2 or L8_2
  if L4_2 then
    L8_2 = L4_2.ptfx
    if L8_2 then
      L8_2 = L8_2.offset
    end
  end
  if not L8_2 then
    L8_2 = L3_2.ptfx
    L8_2 = L8_2.offset
  end
  L7_2.offset = L8_2
  L8_2 = L4_2 or L8_2
  if L4_2 then
    L8_2 = L4_2.ptfx
    if L8_2 then
      L8_2 = L8_2.rot
    end
  end
  if not L8_2 then
    L8_2 = L3_2.ptfx
    L8_2 = L8_2.rot
  end
  L7_2.rot = L8_2
  L8_2 = L4_2 or L8_2
  if L4_2 then
    L8_2 = L4_2.ptfx
    if L8_2 then
      L8_2 = L8_2.scale
    end
  end
  if not L8_2 then
    L8_2 = L3_2.ptfx
    L8_2 = L8_2.scale
  end
  L7_2.scale = L8_2
  L6_2.ptfx = L7_2
  return L6_2
end
L19_1.GetWaterUseEffect = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.GetCookType
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L19_1.IsCooking = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L12_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "cook"
  return L1_2(L2_2, L3_2)
end
L19_1.GetCookType = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.UsableFurniture
  if L1_2 then
    L1_2 = L1_2.enable
  end
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L12_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "seat"
  return L1_2(L2_2, L3_2)
end
L19_1.GetFurnitureUse = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Utils
  L1_2 = L1_2.GetFurnitureUse
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.UsableFurniture
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.anchor
  L3_2 = Utils
  L3_2 = L3_2.GetCatalogEntryByModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.useAnchor
  end
  L4_2 = {}
  L5_2 = L2_2.offset
  L4_2.offset = L5_2
  L5_2 = L2_2.heading
  L4_2.heading = L5_2
  L5_2 = L2_2.zOffset
  L4_2.zOffset = L5_2
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.seats
  end
  L4_2.seats = L5_2
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.seatOffsets
  end
  L4_2.seatOffsets = L5_2
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.offset
  end
  if nil ~= L5_2 then
    L5_2 = L3_2.offset
    L4_2.offset = L5_2
  end
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.heading
  end
  if nil ~= L5_2 then
    L5_2 = L3_2.heading
    L4_2.heading = L5_2
  end
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.zOffset
  end
  if nil ~= L5_2 then
    L5_2 = L3_2.zOffset
    L4_2.zOffset = L5_2
  end
  return L4_2
end
L19_1.GetFurnitureUseAnchor = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = Utils
  L1_2 = L1_2.GetFurnitureUse
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureUseAnchor
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.seatOffsets
  if L3_2 then
    L3_2 = {}
    L4_2 = 1
    L5_2 = L2_2.seatOffsets
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L2_2.seatOffsets
      L8_2 = L8_2[L7_2]
      L3_2[L7_2] = L8_2
    end
    return L3_2
  end
  L3_2 = Config
  L3_2 = L3_2.UsableFurniture
  L3_2 = L3_2[L1_2]
  L4_2 = Utils
  L4_2 = L4_2.GetModelBounds
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  if not L6_2 then
    L7_2 = {}
    L8_2 = {}
    L9_2 = vec3
    L10_2 = L2_2.offset
    L10_2 = L10_2.x
    L11_2 = L2_2.offset
    L11_2 = L11_2.y
    L12_2 = L2_2.offset
    L12_2 = L12_2.z
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.offset = L9_2
    L9_2 = L2_2.heading
    L8_2.heading = L9_2
    L7_2[1] = L8_2
    return L7_2
  end
  L7_2 = L4_2.x
  L8_2 = L5_2.x
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 / 2
  L8_2 = L4_2.y
  L9_2 = L5_2.y
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 / 2
  L9_2 = L5_2.x
  L10_2 = L4_2.x
  L9_2 = L9_2 - L10_2
  L10_2 = L2_2.seats
  if not L10_2 then
    if L9_2 > 0 then
      L11_2 = math
      L11_2 = L11_2.floor
      L12_2 = L3_2.seatWidth
      L12_2 = L9_2 / L12_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        goto lbl_85
        L10_2 = L11_2 or L10_2
      end
    end
    L10_2 = 1
    ::lbl_85::
    L11_2 = math
    L11_2 = L11_2.max
    L12_2 = 1
    L13_2 = math
    L13_2 = L13_2.min
    L14_2 = L10_2
    L15_2 = L3_2.maxSeats
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L10_2 = L11_2
  end
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = 0.0
  L13_2 = L9_2 / 2
  L14_2 = L3_2.seatWidth
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = {}
  L13_2 = 1
  L14_2 = L10_2
  L15_2 = 1
  for L16_2 = L13_2, L14_2, L15_2 do
    L17_2 = L10_2 + 1
    L17_2 = L17_2 / 2
    L17_2 = L16_2 - L17_2
    L18_2 = L3_2.seatSpacing
    L17_2 = L17_2 * L18_2
    L18_2 = math
    L18_2 = L18_2.max
    L19_2 = -L11_2
    L20_2 = math
    L20_2 = L20_2.min
    L21_2 = L11_2
    L22_2 = L17_2
    L20_2, L21_2, L22_2 = L20_2(L21_2, L22_2)
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
    L17_2 = L18_2
    L18_2 = {}
    L19_2 = vec3
    L20_2 = L2_2.offset
    L20_2 = L20_2.x
    L20_2 = L7_2 + L20_2
    L20_2 = L20_2 + L17_2
    L21_2 = L2_2.offset
    L21_2 = L21_2.y
    L21_2 = L8_2 + L21_2
    L22_2 = L2_2.offset
    L22_2 = L22_2.z
    L19_2 = L19_2(L20_2, L21_2, L22_2)
    L18_2.offset = L19_2
    L19_2 = L2_2.heading
    L18_2.heading = L19_2
    L12_2[L16_2] = L18_2
  end
  return L12_2
end
L19_1.GetFurnitureSeats = L20_1
L19_1 = Utils
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "light"
  return L1_2(L2_2, L3_2)
end
L19_1.IsLight = L20_1
L19_1 = {}
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L1_2 then
      goto lbl_22
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_22::
  L2_2 = L19_1
  L2_2 = L2_2[L1_2]
  if nil ~= L2_2 then
    L3_2 = L2_2 or L3_2
    if not L2_2 then
      L3_2 = nil
    end
    return L3_2
  end
  L3_2 = Utils
  L3_2 = L3_2.GetCatalogEntryByModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.light
  end
  if true ~= L3_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "table" ~= L4_2 then
      L4_2 = L19_1
      L4_2[L1_2] = false
      L4_2 = nil
      return L4_2
    end
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L3_2 or L4_2
  if "table" ~= L4_2 or not L3_2 then
    L4_2 = {}
  end
  L5_2 = Config
  L5_2 = L5_2.Lights
  if L5_2 then
    L5_2 = L5_2.defaults
  end
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = {}
  L7_2 = L4_2.color
  if not L7_2 then
    L7_2 = L5_2.color
    if not L7_2 then
      L7_2 = {}
      L8_2 = 255
      L9_2 = 214
      L10_2 = 170
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
    end
  end
  L6_2.color = L7_2
  L7_2 = L4_2.range
  if not L7_2 then
    L7_2 = L5_2.range
    if not L7_2 then
      L7_2 = 6.0
    end
  end
  L7_2 = L7_2 + 0.0
  L6_2.range = L7_2
  L7_2 = L4_2.intensity
  if not L7_2 then
    L7_2 = L5_2.intensity
    if not L7_2 then
      L7_2 = 2.5
    end
  end
  L7_2 = L7_2 + 0.0
  L6_2.intensity = L7_2
  L7_2 = L4_2.offset
  L6_2.offset = L7_2
  L7_2 = L4_2.type
  if not L7_2 then
    L7_2 = "point"
  end
  L6_2.type = L7_2
  L7_2 = L19_1
  L7_2[L1_2] = L6_2
  return L6_2
end
L20_1.GetLightData = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "switch"
  return L1_2(L2_2, L3_2)
end
L20_1.IsSwitch = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "assistant"
  return L1_2(L2_2, L3_2)
end
L20_1.IsAssistant = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "pole"
  return L1_2(L2_2, L3_2)
end
L20_1.IsPole = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "music"
  return L1_2(L2_2, L3_2)
end
L20_1.IsSpeaker = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.speaker
  end
  return L2_2
end
L20_1.GetSpeakerData = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L2_2 = Utils
  L2_2 = L2_2.GetFurnitureKinds
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "television"
  return L1_2(L2_2, L3_2)
end
L20_1.IsTelevision = L21_1
L20_1 = Utils
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.tv
  end
  return L2_2
end
L20_1.GetScreenData = L21_1
L20_1 = {}
L21_1 = Utils
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if nil == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.NormalizeModelHash
    L2_2 = joaat
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    if L1_2 then
      goto lbl_22
    end
  end
  L1_2 = Utils
  L1_2 = L1_2.NormalizeModelHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  ::lbl_22::
  L2_2 = L20_1
  L2_2 = L2_2[L1_2]
  if nil ~= L2_2 then
    L3_2 = L2_2 or L3_2
    if not L2_2 then
      L3_2 = nil
    end
    return L3_2
  end
  L3_2 = Utils
  L3_2 = L3_2.GetCatalogEntryByModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_2.frame
  end
  if true ~= L3_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "table" ~= L4_2 then
      L4_2 = L20_1
      L4_2[L1_2] = false
      L4_2 = nil
      return L4_2
    end
  end
  L4_2 = {}
  L5_2 = type
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = L3_2.plane
    if L5_2 then
      goto lbl_59
    end
  end
  L5_2 = "auto"
  ::lbl_59::
  L4_2.plane = L5_2
  L5_2 = L20_1
  L5_2[L1_2] = L4_2
  return L4_2
end
L21_1.GetFrameData = L22_1
L21_1 = {}
L22_1 = "_%d%d?%a?$"
L23_1 = "_%a$"
L24_1 = "%d%d%a?$"
L21_1[1] = L22_1
L21_1[2] = L23_1
L21_1[3] = L24_1
L22_1 = Utils
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.model
  end
  if not L2_2 then
    L2_2 = type
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = A0_2 or L2_2
    if "string" ~= L2_2 or not A0_2 then
      L2_2 = nil
    end
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "string" ~= L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = L21_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L10_2 = L2_2
    L9_2 = L2_2.gsub
    L11_2 = L8_2
    L12_2 = ""
    L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
    if L10_2 > 0 then
      return L9_2
    end
  end
  return L2_2
end
L22_1.GetModelFamily = L23_1
L22_1 = nil
L23_1 = {}
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = Utils
  L0_2 = L0_2.RemoveDuplicateFurniture
  L0_2()
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Furniture
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = type
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if "table" == L13_2 then
        L13_2 = type
        L14_2 = L12_2.model
        L13_2 = L13_2(L14_2)
        if "string" == L13_2 then
          L13_2 = Utils
          L13_2 = L13_2.GetModelFamily
          L14_2 = L12_2.model
          L13_2 = L13_2(L14_2)
          L14_2 = L0_2[L13_2]
          if not L14_2 then
            L14_2 = {}
          end
          L0_2[L13_2] = L14_2
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L0_2[L13_2]
          L16_2 = L12_2
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.sort
    L8_2 = L6_2
    function L9_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.label
      if not L2_3 then
        L2_3 = ""
      end
      L3_3 = A1_3.label
      if not L3_3 then
        L3_3 = ""
      end
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
L25_1 = Utils
function L26_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L22_1
  if not L1_2 then
    L1_2 = L24_1
    L1_2 = L1_2()
    L22_1 = L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.GetModelFamily
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L22_1
    L2_2 = L2_2[L1_2]
  end
  if L2_2 then
    L3_2 = #L2_2
    if not (L3_2 < 2) then
      goto lbl_22
    end
  end
  L3_2 = L23_1
  do return L3_2 end
  ::lbl_22::
  return L2_2
end
L25_1.GetModelVariants = L26_1
L25_1 = Utils
function L26_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = Utils
  L1_2 = L1_2.GetCatalogEntryByModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = {}
    L3_2 = L1_2.weight
    L2_2.weight = L3_2
    L3_2 = L1_2.slots
    L2_2.slots = L3_2
    return L2_2
  end
  L2_2 = {}
  return L2_2
end
L25_1.GetStorageStashDataByModel = L26_1
L25_1 = Utils
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2[A1_2]
  L3_2 = L2_2.doors
  if L3_2 then
    L3_2 = L3_2.house
    if L3_2 then
      L3_2 = L3_2[1]
      if L3_2 then
        L3_2 = L3_2.coords
      end
    end
  end
  if not L3_2 then
    L3_2 = L2_2.doors
    if L3_2 then
      L3_2 = L3_2.garage
      if L3_2 then
        L3_2 = L3_2[1]
        if L3_2 then
          L3_2 = L3_2.coords
        end
      end
    end
    if not L3_2 then
      L3_2 = L2_2.interior
      if L3_2 then
        L3_2 = L3_2.doors
        if L3_2 then
          L3_2 = L3_2[1]
          if L3_2 then
            L3_2 = L3_2.coords
          end
        end
      end
    end
  end
  if L3_2 then
    L4_2 = vec3
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L7_2 = L3_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
  end
  return L3_2
end
L25_1.GetPropertyBlipCoords = L26_1
L25_1 = Utils
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 and "" ~= A0_2 then
    L1_2 = ipairs
    L2_2 = Config
    L2_2 = L2_2.PropertyTypes
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.id
      if L7_2 == A0_2 then
        return L6_2
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.PropertyTypes
  L1_2 = L1_2[1]
  return L1_2
end
L25_1.GetPropertyType = L26_1
L25_1 = Utils
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.EnableMotels
  if L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.GetPropertyType
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L1_2.rental
    end
    L1_2 = true == L1_2
  end
  return L1_2
end
L25_1.IsMotelType = L26_1
L25_1 = Utils
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.GetPropertyType
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.label
  if not L2_2 then
    L2_2 = L1_2.id
  end
  return L2_2
end
L25_1.GetPropertyTypeLabel = L26_1
L25_1 = Utils
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.ShowPropertyName
  if not L2_2 then
    return A1_2
  end
  L2_2 = A0_2 or L2_2
  if A0_2 then
    L2_2 = A0_2.name
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.match
    L5_2 = "%S"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_23
    end
  end
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.address
  end
  L2_2 = L3_2
  ::lbl_23::
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.match
    L5_2 = "%S"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_34
    end
  end
  do return A1_2 end
  ::lbl_34::
  L3_2 = _U
  L4_2 = "property_label_with_name"
  L5_2 = A1_2
  L6_2 = L2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L25_1.GetPropertyLabel = L26_1
L25_1 = Utils
function L26_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Inventory
  L0_2 = "default" ~= L0_2
  return L0_2
end
L25_1.InventorySupportsMetadata = L26_1
L25_1 = Utils
function L26_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Keys
  if L0_2 then
    L0_2 = L0_2.enable
  end
  L0_2 = Utils
  L0_2 = L0_2.InventorySupportsMetadata
  L0_2 = true == L0_2 and L0_2
  return L0_2
end
L25_1.KeysEnabled = L26_1
L25_1 = Utils
function L26_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Lights
  if L0_2 then
    L0_2 = L0_2.control
  end
  if "anyone" == L0_2 then
    L1_2 = "use"
    if L1_2 then
      goto lbl_17
    end
  end
  if "owner" == L0_2 then
    L1_2 = "owner"
    if L1_2 then
      goto lbl_17
    end
  end
  L1_2 = "furnish"
  ::lbl_17::
  return L1_2
end
L25_1.GetLightingPermission = L26_1
L25_1 = Utils
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "number" == L1_2 and A0_2 == A0_2
  return L1_2
end
L25_1.IsFiniteNumber = L26_1
L25_1 = Utils
function L26_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Contracts
  if L1_2 then
    L1_2 = L1_2.enable
  end
  L1_2 = true == L1_2
  return L1_2
end
L25_1.ContractEnabled = L26_1
L25_1 = Utils
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if "mortgage" == A0_2 then
    L2_2 = "finance"
    if L2_2 then
      goto lbl_19
    end
  end
  if "motel" == A0_2 then
    L2_2 = "motel"
    if L2_2 then
      goto lbl_19
    end
  end
  if "rent" == A0_2 and not A1_2 then
    L2_2 = "rent"
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = "purchase"
  ::lbl_19::
  L3_2 = Utils
  L3_2 = L3_2.ContractEnabled
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2 or L3_2
  if not L3_2 or not L2_2 then
    L3_2 = nil
  end
  return L3_2
end
L25_1.GetContractKind = L26_1
L25_1 = Utils
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2 or L8_2
    if A0_2 then
      L8_2 = A0_2[L7_2]
    end
    if false == L8_2 then
      return L7_2
    end
  end
end
L25_1.MissingService = L26_1
L25_1 = {}
L26_1 = Utils
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L25_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L25_1
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^business:(%d+)$"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.match
  L5_2 = "^job:(.+)$"
  L3_2 = not L2_2 and L3_2
  if L2_2 then
    L4_2 = {}
    L4_2.type = "business"
    L5_2 = tonumber
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L4_2.id = L5_2
    L1_2 = L4_2
  elseif L3_2 then
    L4_2 = {}
    L4_2.type = "job"
    L4_2.id = L3_2
    L1_2 = L4_2
  else
    L4_2 = {}
    L4_2.type = "player"
    L4_2.id = A0_2
    L1_2 = L4_2
  end
  L4_2 = L25_1
  L4_2[A0_2] = L1_2
  return L1_2
end
L26_1.ParseOwner = L27_1
L26_1 = Utils
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2
  L3_2 = ":"
  L4_2 = A1_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  return L2_2
end
L26_1.EntityOwner = L27_1
L26_1 = Utils
function L27_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.ParseOwner
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil ~= L1_2
  return L2_2
end
L26_1.IsEntityOwner = L27_1
L26_1 = {}
L26_1.job = true
L26_1.business = true
L26_1.both = true
L26_1.none = true
L27_1 = {}
L27_1.everyone = true
L27_1.agents = true
L28_1 = Utils
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Config
  L0_2 = L0_2.PropertyList
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = L0_2.agents
  L2_2 = L0_2.listing
  if nil == L1_2 then
    L3_2 = L0_2.allowRealEstateToList
    if false == L3_2 then
      L1_2 = "none"
    else
      L3_2 = Config
      L3_2 = L3_2.RealEstateBusiness
      if L3_2 then
        L3_2 = L3_2.enabled
      end
      if L3_2 then
        L3_2 = "business"
        if L3_2 then
          goto lbl_27
          L1_2 = L3_2 or L1_2
        end
      end
      L1_2 = "job"
    end
  end
  ::lbl_27::
  if nil == L2_2 then
    L3_2 = L0_2.allowPlayersToList
    if false == L3_2 then
      L3_2 = "agents"
      if L3_2 then
        goto lbl_36
        L2_2 = L3_2 or L2_2
      end
    end
    L2_2 = "everyone"
  end
  ::lbl_36::
  L3_2 = {}
  L4_2 = L26_1
  L4_2 = L4_2[L1_2]
  L4_2 = L1_2 or L4_2
  if not L4_2 or not L1_2 then
    L4_2 = "both"
  end
  L3_2.agents = L4_2
  L4_2 = L27_1
  L4_2 = L4_2[L2_2]
  L4_2 = L2_2 or L4_2
  if not L4_2 or not L2_2 then
    L4_2 = "everyone"
  end
  L3_2.listing = L4_2
  return L3_2
end
L28_1.GetListingRules = L29_1
L28_1 = {}
L28_1.job = true
L28_1.business = true
L28_1.both = true
L28_1.none = true
L29_1 = Utils
function L30_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.ShellBuild
  if L0_2 then
    L0_2 = L0_2.agents
  end
  L1_2 = L28_1
  L1_2 = L1_2[L0_2]
  L1_2 = L0_2 or L1_2
  if not L1_2 or not L0_2 then
    L1_2 = "none"
  end
  return L1_2
end
L29_1.GetShellBuildAgents = L30_1
L29_1 = {}
L30_1 = Utils
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if nil ~= A0_2 then
    L1_2 = L29_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = L29_1
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  L1_2 = {}
  L2_2 = Config
  L2_2 = L2_2.JobOwnedProperties
  if L2_2 then
    L2_2 = L2_2.defaults
  end
  if not L2_2 then
    L2_2 = {}
    L2_2.access = 0
    L2_2.manage = "boss"
    L2_2.furnish = true
    L2_2.storage = true
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L1_2[L7_2] = L8_2
  end
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.JobOwnedProperties
  if L4_2 then
    L4_2 = L4_2.jobs
    if L4_2 then
      L4_2 = L4_2[A0_2]
    end
  end
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L1_2[L7_2] = L8_2
  end
  if nil ~= A0_2 then
    L3_2 = L29_1
    L3_2[A0_2] = L1_2
  end
  return L1_2
end
L30_1.GetJobOwnedConf = L31_1
L30_1 = Utils
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Utils
  L1_2 = L1_2.GetJobOwnedConf
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.label
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.sub
    L4_2 = 1
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L2_2
    L2_2 = L2_2.upper
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.sub
    L5_2 = 2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2 .. L3_2
  end
  return L2_2
end
L30_1.GetJobLabel = L31_1
L30_1 = Utils
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.Blips
  L2_2 = L2_2[A0_2]
  L3_2 = Utils
  L3_2 = L3_2.GetPropertyType
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.blip
  if L3_2 then
    L3_2 = L3_2[A0_2]
  end
  if not L2_2 and not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = L2_2.enable
  end
  L5_2 = L3_2 or L5_2
  if L3_2 then
    L5_2 = L3_2.enable
  end
  if nil ~= L5_2 then
    L4_2 = L3_2.enable
  end
  L5_2 = {}
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = L3_2.sprite
  end
  L6_2 = L2_2 or L6_2
  if not L6_2 and L2_2 then
    L6_2 = L2_2.sprite
  end
  L5_2.sprite = L6_2
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = L3_2.color
  end
  L6_2 = L2_2 or L6_2
  if not L6_2 and L2_2 then
    L6_2 = L2_2.color
  end
  L5_2.color = L6_2
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = L3_2.scale
  end
  L6_2 = L2_2 or L6_2
  if not L6_2 and L2_2 then
    L6_2 = L2_2.scale
  end
  L5_2.scale = L6_2
  L5_2.enable = L4_2
  return L5_2
end
L30_1.GetBlipSettings = L31_1
L30_1 = Utils
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return L2_2
  end
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = A1_2 or L8_2
    if A1_2 then
      L8_2 = L7_2.id
      L8_2 = A1_2[L8_2]
    end
    if nil ~= L8_2 then
      L9_2 = L7_2.id
      L2_2[L9_2] = L8_2
    else
      L9_2 = L7_2.type
      if "toggle" == L9_2 then
        L9_2 = L7_2.id
        L2_2[L9_2] = false
      else
        L9_2 = L7_2.type
        if "choice" ~= L9_2 then
          L9_2 = L7_2.type
          if "color" ~= L9_2 then
            goto lbl_46
          end
        end
        L9_2 = L7_2.options
        if L9_2 then
          L9_2 = L9_2[1]
          if L9_2 then
            L9_2 = L9_2.id
          end
        end
        if nil ~= L9_2 then
          L10_2 = L7_2.id
          L2_2[L10_2] = L9_2
        end
      end
    end
    ::lbl_46::
  end
  return L2_2
end
L30_1.GetInteriorStyleSelections = L31_1
L30_1 = Utils
function L31_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = #A1_2
  if L4_2 < 3 then
    L4_2 = false
    return L4_2
  end
  if not A3_2 then
    A3_2 = 0.0
  end
  L4_2 = A3_2 + 50.0
  L5_2 = A1_2[1]
  L5_2 = L5_2.z
  L6_2 = L5_2 + A2_2
  L7_2 = A0_2.z
  L8_2 = L5_2 - L4_2
  if not (L7_2 < L8_2) then
    L7_2 = A0_2.z
    L8_2 = L6_2 + L4_2
    if not (L7_2 > L8_2) then
      goto lbl_27
    end
  end
  L7_2 = false
  do return L7_2 end
  ::lbl_27::
  L7_2 = false
  L8_2 = #A1_2
  L9_2 = L8_2
  if A3_2 > 0.0 then
    L10_2 = 1
    L11_2 = L8_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = A1_2[L13_2]
      L15_2 = A1_2[L9_2]
      L16_2 = {}
      L17_2 = L15_2.x
      L18_2 = L14_2.x
      L17_2 = L17_2 - L18_2
      L16_2.x = L17_2
      L17_2 = L15_2.y
      L18_2 = L14_2.y
      L17_2 = L17_2 - L18_2
      L16_2.y = L17_2
      L17_2 = math
      L17_2 = L17_2.sqrt
      L18_2 = L16_2.x
      L19_2 = L16_2.x
      L18_2 = L18_2 * L19_2
      L19_2 = L16_2.y
      L20_2 = L16_2.y
      L19_2 = L19_2 * L20_2
      L18_2 = L18_2 + L19_2
      L17_2 = L17_2(L18_2)
      if L17_2 > 0 then
        L18_2 = L16_2.x
        L18_2 = L18_2 / L17_2
        L16_2.x = L18_2
        L18_2 = L16_2.y
        L18_2 = L18_2 / L17_2
        L16_2.y = L18_2
        L18_2 = {}
        L19_2 = A0_2.x
        L20_2 = L14_2.x
        L19_2 = L19_2 - L20_2
        L18_2.x = L19_2
        L19_2 = A0_2.y
        L20_2 = L14_2.y
        L19_2 = L19_2 - L20_2
        L18_2.y = L19_2
        L19_2 = L18_2.x
        L20_2 = L16_2.x
        L19_2 = L19_2 * L20_2
        L20_2 = L18_2.y
        L21_2 = L16_2.y
        L20_2 = L20_2 * L21_2
        L19_2 = L19_2 + L20_2
        L20_2 = math
        L20_2 = L20_2.max
        L21_2 = 0
        L22_2 = math
        L22_2 = L22_2.min
        L23_2 = L19_2
        L24_2 = L17_2
        L22_2, L23_2, L24_2 = L22_2(L23_2, L24_2)
        L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
        L19_2 = L20_2
        L20_2 = {}
        L21_2 = L14_2.x
        L22_2 = L16_2.x
        L22_2 = L19_2 * L22_2
        L21_2 = L21_2 + L22_2
        L20_2.x = L21_2
        L21_2 = L14_2.y
        L22_2 = L16_2.y
        L22_2 = L19_2 * L22_2
        L21_2 = L21_2 + L22_2
        L20_2.y = L21_2
        L21_2 = math
        L21_2 = L21_2.sqrt
        L22_2 = A0_2.x
        L23_2 = L20_2.x
        L22_2 = L22_2 - L23_2
        L22_2 = L22_2 ^ 2
        L23_2 = A0_2.y
        L24_2 = L20_2.y
        L23_2 = L23_2 - L24_2
        L23_2 = L23_2 ^ 2
        L22_2 = L22_2 + L23_2
        L21_2 = L21_2(L22_2)
        if A3_2 >= L21_2 then
          L22_2 = true
          return L22_2
        end
      end
      L9_2 = L13_2
    end
  end
  L9_2 = L8_2
  L10_2 = 1
  L11_2 = L8_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = A1_2[L13_2]
    L15_2 = A1_2[L9_2]
    L16_2 = L14_2.y
    L17_2 = A0_2.y
    L16_2 = L16_2 > L17_2
    L17_2 = L15_2.y
    L18_2 = A0_2.y
    L17_2 = L17_2 > L18_2
    if L16_2 ~= L17_2 then
      L16_2 = L14_2.x
      L17_2 = A0_2.y
      L18_2 = L14_2.y
      L17_2 = L17_2 - L18_2
      L18_2 = L15_2.x
      L19_2 = L14_2.x
      L18_2 = L18_2 - L19_2
      L17_2 = L17_2 * L18_2
      L18_2 = L15_2.y
      L19_2 = L14_2.y
      L18_2 = L18_2 - L19_2
      L17_2 = L17_2 / L18_2
      L16_2 = L16_2 + L17_2
      L17_2 = A0_2.x
      if L16_2 > L17_2 then
        L7_2 = not L7_2
      end
    end
    L9_2 = L13_2
  end
  return L7_2
end
L30_1.IsPointInside3D = L31_1
L30_1 = Utils
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = #A1_2
  if L2_2 < 3 then
    L3_2 = A0_2.x
    L4_2 = A0_2.y
    return L3_2, L4_2
  end
  L3_2 = false
  L4_2 = L2_2
  L5_2 = 1
  L6_2 = L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A1_2[L8_2]
    L10_2 = A1_2[L4_2]
    L11_2 = L9_2.y
    L12_2 = A0_2.y
    L11_2 = L11_2 > L12_2
    L12_2 = L10_2.y
    L13_2 = A0_2.y
    L12_2 = L12_2 > L13_2
    if L11_2 ~= L12_2 then
      L11_2 = L9_2.x
      L12_2 = A0_2.y
      L13_2 = L9_2.y
      L12_2 = L12_2 - L13_2
      L13_2 = L10_2.x
      L14_2 = L9_2.x
      L13_2 = L13_2 - L14_2
      L12_2 = L12_2 * L13_2
      L13_2 = L10_2.y
      L14_2 = L9_2.y
      L13_2 = L13_2 - L14_2
      L12_2 = L12_2 / L13_2
      L11_2 = L11_2 + L12_2
      L12_2 = A0_2.x
      if L11_2 > L12_2 then
        L3_2 = not L3_2
      end
    end
    L4_2 = L8_2
  end
  if L3_2 then
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    return L5_2, L6_2
  end
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L4_2 = L2_2
  L8_2 = 1
  L9_2 = L2_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A1_2[L11_2]
    L13_2 = A1_2[L4_2]
    L14_2 = {}
    L15_2 = L13_2.x
    L16_2 = L12_2.x
    L15_2 = L15_2 - L16_2
    L14_2.x = L15_2
    L15_2 = L13_2.y
    L16_2 = L12_2.y
    L15_2 = L15_2 - L16_2
    L14_2.y = L15_2
    L15_2 = math
    L15_2 = L15_2.sqrt
    L16_2 = L14_2.x
    L17_2 = L14_2.x
    L16_2 = L16_2 * L17_2
    L17_2 = L14_2.y
    L18_2 = L14_2.y
    L17_2 = L17_2 * L18_2
    L16_2 = L16_2 + L17_2
    L15_2 = L15_2(L16_2)
    if L15_2 > 0 then
      L16_2 = L14_2.x
      L16_2 = L16_2 / L15_2
      L14_2.x = L16_2
      L16_2 = L14_2.y
      L16_2 = L16_2 / L15_2
      L14_2.y = L16_2
      L16_2 = {}
      L17_2 = A0_2.x
      L18_2 = L12_2.x
      L17_2 = L17_2 - L18_2
      L16_2.x = L17_2
      L17_2 = A0_2.y
      L18_2 = L12_2.y
      L17_2 = L17_2 - L18_2
      L16_2.y = L17_2
      L17_2 = L16_2.x
      L18_2 = L14_2.x
      L17_2 = L17_2 * L18_2
      L18_2 = L16_2.y
      L19_2 = L14_2.y
      L18_2 = L18_2 * L19_2
      L17_2 = L17_2 + L18_2
      L18_2 = math
      L18_2 = L18_2.max
      L19_2 = 0
      L20_2 = math
      L20_2 = L20_2.min
      L21_2 = L17_2
      L22_2 = L15_2
      L20_2, L21_2, L22_2 = L20_2(L21_2, L22_2)
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
      L17_2 = L18_2
      L18_2 = L12_2.x
      L19_2 = L14_2.x
      L19_2 = L17_2 * L19_2
      L18_2 = L18_2 + L19_2
      L19_2 = L12_2.y
      L20_2 = L14_2.y
      L20_2 = L17_2 * L20_2
      L19_2 = L19_2 + L20_2
      L20_2 = math
      L20_2 = L20_2.sqrt
      L21_2 = A0_2.x
      L21_2 = L21_2 - L18_2
      L21_2 = L21_2 ^ 2
      L22_2 = A0_2.y
      L22_2 = L22_2 - L19_2
      L22_2 = L22_2 ^ 2
      L21_2 = L21_2 + L22_2
      L20_2 = L20_2(L21_2)
      if not L7_2 or L7_2 > L20_2 then
        L7_2 = L20_2
        L21_2 = L18_2
        L6_2 = L19_2
        L5_2 = L21_2
      end
    end
    L4_2 = L11_2
  end
  L8_2 = L5_2 or L8_2
  if not L5_2 then
    L8_2 = A0_2.x
  end
  L9_2 = L6_2 or L9_2
  if not L6_2 then
    L9_2 = A0_2.y
  end
  return L8_2, L9_2
end
L30_1.ClampPointInside2D = L31_1
L30_1 = Utils
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.z
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = -L4_2
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L3_2.x = L4_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L3_2.y = L4_2
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2.z = L4_2
  return L3_2
end
L30_1.RotationToDirection = L31_1
L30_1 = Utils
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = #A0_2
  if 0 == L1_2 then
    return A0_2
  end
  L2_2 = A0_2 / L1_2
  return L2_2
end
L30_1.Normalize = L31_1
L30_1 = Utils
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = math
  L1_2 = L1_2.deg
  L2_2 = math
  L2_2 = L2_2.asin
  L3_2 = A0_2.z
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = math
  L2_2 = L2_2.deg
  L3_2 = math
  L3_2 = L3_2.atan2
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = vector3
  L4_2 = L1_2
  L5_2 = 0.0
  L6_2 = L2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L30_1.GetRotationFromDirection = L31_1
L30_1 = Utils
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 or 0.0 == A1_2 then
    return A0_2
  end
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.w
  L2_2 = L2_2(L3_2)
  L3_2 = vec4
  L4_2 = A0_2.x
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * A1_2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.y
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * A1_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.z
  L7_2 = A0_2.w
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L30_1.OffsetFromDoor = L31_1
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = A1_2
  L3_2()
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + 2500
  while true do
    L4_2 = A0_2
    L4_2 = L4_2()
    if L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if not (L3_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 10
    L4_2(L5_2)
  end
  L4_2 = A0_2
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = Utils
  L4_2 = L4_2.Warn
  L5_2 = "Asset did not load in time"
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = false
  return L4_2
end
L31_1 = Utils
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L30_1
  function L2_2()
    local L0_3, L1_3
    L0_3 = HasAnimDictLoaded
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  function L3_2()
    local L0_3, L1_3
    L0_3 = RequestAnimDict
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L4_2 = A0_2
  return L1_2(L2_2, L3_2, L4_2)
end
L31_1.LoadDict = L32_1
L31_1 = Utils
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = joaat
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = L30_1
  function L3_2()
    local L0_3, L1_3
    L0_3 = HasModelLoaded
    L1_3 = L1_2
    return L0_3(L1_3)
  end
  function L4_2()
    local L0_3, L1_3
    L0_3 = RequestModel
    L1_3 = L1_2
    L0_3(L1_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = HasModelLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 or L2_2
  if not L2_2 or not L1_2 then
    L2_2 = false
  end
  return L2_2
end
L31_1.LoadModel = L32_1
L31_1 = Utils
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L30_1
  function L2_2()
    local L0_3, L1_3
    L0_3 = HasNamedPtfxAssetLoaded
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  function L3_2()
    local L0_3, L1_3
    L0_3 = RequestNamedPtfxAsset
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L4_2 = A0_2
  return L1_2(L2_2, L3_2, L4_2)
end
L31_1.LoadPtfx = L32_1
L31_1 = Utils
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetControlInstructionalButton
  L2_2 = 0
  L3_2 = A0_2
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = tostring
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.sub
  L4_2 = 1
  L5_2 = 2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if "t_" == L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.sub
    L4_2 = 3
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  return L1_2
end
L31_1.GetKeyLabel = L32_1
L31_1 = Utils
function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not A2_2 then
    A2_2 = 0.0
  end
  L3_2 = GetEntityMatrix
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L7_2 = SetEntityMatrix
  L8_2 = A0_2
  L9_2 = L3_2 * A1_2
  L10_2 = L4_2 * A1_2
  L11_2 = L5_2 * A1_2
  L12_2 = vec3
  L13_2 = 0
  L14_2 = 0
  L15_2 = A2_2
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L12_2 = L6_2 - L12_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L31_1.SetEntityScale = L32_1
L31_1 = Utils
function L32_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = SetEntityRotation
  L6_2 = A0_2
  L7_2 = A1_2.x
  L8_2 = A1_2.y
  L9_2 = A1_2.z
  L10_2 = 2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = FreezeEntityPosition
  L6_2 = A0_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityCoordsNoOffset
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L31_1.PlaceGridProp = L32_1
L31_1 = {}
L32_1 = Utils
function L33_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = KitNames
  L5_2 = L5_2.StairCollider
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = nil
    return L6_2
  end
  L6_2 = Utils
  L6_2 = L6_2.IsModelSpawnable
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = Utils
    L6_2 = L6_2.LoadModel
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_34
    end
  end
  L6_2 = L31_1
  L6_2 = L6_2[L5_2]
  if not L6_2 then
    L6_2 = L31_1
    L6_2[L5_2] = true
    L6_2 = Utils
    L6_2 = L6_2.Warn
    L7_2 = "Stair collision model missing, stairs will have no collision. Update housing_props and make sure it is started"
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = nil
  do return L6_2 end
  ::lbl_34::
  L6_2 = CreateObjectNoOffset
  L7_2 = L5_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetModelAsNoLongerNeeded
  L8_2 = L5_2
  L7_2(L8_2)
  L7_2 = DoesEntityExist
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = nil
    return L7_2
  end
  L7_2 = SetEntityCollision
  L8_2 = L6_2
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Utils
  L7_2 = L7_2.PlaceGridProp
  L8_2 = L6_2
  L9_2 = A4_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  return L6_2
end
L32_1.SpawnStairCollider = L33_1
L32_1 = Utils
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = StartShapeTestSweptSphere
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = A2_2
  L12_2 = 83
  L13_2 = A3_2
  L14_2 = 4
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = GetShapeTestResult
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  if 1 == L5_2 then
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3
      while true do
        L0_3 = GetShapeTestResult
        L1_3 = L4_2
        L0_3 = L0_3(L1_3)
        if 1 ~= L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
    end
    L10_2(L11_2)
    L10_2 = false
    return L10_2
  end
  if 2 ~= L5_2 then
    L10_2 = false
    return L10_2
  end
  L10_2 = true == L6_2 or 1 == L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  L13_2 = L8_2
  return L10_2, L11_2, L12_2, L13_2
end
L32_1.SweepRay = L33_1
L32_1 = {}
L33_1 = nil
L34_1 = 0.002
L35_1 = 0.03
L36_1 = Utils
function L37_1(A0_2)
  local L1_2
  if nil == A0_2 then
    L1_2 = nil
    L33_1 = L1_2
    L1_2 = true
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.DebugMode
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L33_1 = A0_2
  L1_2 = true
  return L1_2
end
L36_1.SetCursorRayObserver = L37_1
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 - A0_2
  L3_2 = #L2_2
  L4_2 = 1.0E-4
  if L3_2 <= L4_2 then
    L4_2 = nil
    L5_2 = 0.0
    return L4_2, L5_2
  end
  L4_2 = 1.0
  L4_2 = L4_2 / L3_2
  L4_2 = L2_2 * L4_2
  L5_2 = L3_2
  return L4_2, L5_2
end
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetActiveScreenResolution
  L0_2, L1_2 = L0_2()
  L2_2 = GetFinalRenderedCamFov
  L2_2 = L2_2()
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = L1_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 / L3_2
  L2_2 = L2_2 * 1.25
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = L2_2
  return L3_2(L4_2)
end
function L38_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L36_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = A0_2.from
    L5_2 = L5_2 - A1_2
    L5_2 = #L5_2
    L6_2 = L35_1
    if not (L5_2 > L6_2) then
      goto lbl_16
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_16::
  L5_2 = A0_2.direction
  L5_2 = L5_2.x
  L6_2 = L3_2.x
  L5_2 = L5_2 * L6_2
  L6_2 = A0_2.direction
  L6_2 = L6_2.y
  L7_2 = L3_2.y
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.direction
  L6_2 = L6_2.z
  L7_2 = L3_2.z
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L37_1
  L7_2 = L7_2()
  L6_2 = L6_2(L7_2)
  L6_2 = L5_2 >= L6_2
  return L6_2
end
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L36_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = A0_2 - A1_2
  L6_2 = L5_2.x
  L7_2 = L3_2.x
  L6_2 = L6_2 * L7_2
  L7_2 = L5_2.y
  L8_2 = L3_2.y
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L7_2 = L5_2.z
  L8_2 = L3_2.z
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  if L6_2 < 0.0 or L4_2 < L6_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = L3_2 * L6_2
  L7_2 = L5_2 - L7_2
  L7_2 = #L7_2
  L8_2 = math
  L8_2 = L8_2.max
  L9_2 = 0.002
  L10_2 = math
  L10_2 = L10_2.tan
  L11_2 = L37_1
  L11_2 = L11_2()
  L10_2 = L10_2(L11_2)
  L10_2 = L6_2 * L10_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L7_2 <= L8_2
  return L9_2
end
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityRotation
  L3_2 = A0_2
  L4_2 = 2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2, L2_2, L3_2, L4_2
end
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.entityCoords
  if not L1_2 then
    L1_2 = A0_2.entity
    L1_2 = 0 == L1_2
    return L1_2
  end
  L1_2 = DoesEntityExist
  L2_2 = A0_2.entity
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetEntityCoords
  L2_2 = A0_2.entity
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.entityCoords
  L1_2 = L1_2 - L2_2
  L1_2 = #L1_2
  L2_2 = 0.01
  L1_2 = L1_2 <= L2_2
  return L1_2
end
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = L36_1
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L6_2 = math
  L6_2 = L6_2.min
  L7_2 = A3_2 or L7_2
  if not A3_2 then
    L7_2 = L34_1
  end
  L8_2 = L34_1
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = {}
  L7_2.from = A0_2
  L7_2.to = A1_2
  L7_2.direction = L4_2
  L7_2.length = L5_2
  L7_2.radius = L6_2
  L8_2 = StartShapeTestSweptSphere
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A0_2.z
  L12_2 = A1_2.x
  L13_2 = A1_2.y
  L14_2 = A1_2.z
  L15_2 = L6_2
  L16_2 = 83
  L17_2 = A2_2
  L18_2 = 4
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2.sweep = L8_2
  return L7_2
end
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetShapeTestResult
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
  if 1 == L1_2 then
    L6_2 = nil
    L7_2 = L1_2
    return L6_2, L7_2
  end
  if 2 ~= L1_2 or true ~= L2_2 and 1 ~= L2_2 then
    L6_2 = false
    L7_2 = L1_2
    return L6_2, L7_2
  end
  L6_2 = {}
  L6_2.coords = L3_2
  L6_2.entity = L5_2
  L6_2.normal = L4_2
  L7_2 = L1_2
  return L6_2, L7_2
end
function L44_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3
    while true do
      L0_3 = GetShapeTestResult
      L1_3 = A0_2.sweep
      L0_3 = L0_3(L1_3)
      if 1 ~= L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L45_1 = Utils
function L46_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L32_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L32_1
  L2_2[A0_2] = nil
  L2_2 = L44_1
  L3_2 = L1_2.probe
  L2_2(L3_2)
end
L45_1.ClearCursorRay = L46_1
function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.probe
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L43_1
  L4_2 = A0_2.probe
  L4_2 = L4_2.sweep
  L3_2, L4_2 = L3_2(L4_2)
  if nil == L3_2 then
    L5_2 = false
    L6_2 = nil
    L7_2 = L4_2
    return L5_2, L6_2, L7_2
  end
  L5_2 = A0_2.probe
  A0_2.probe = nil
  A0_2.result = nil
  if L3_2 then
    L6_2 = L38_1
    L7_2 = L5_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = L39_1
      L7_2 = L3_2.coords
      L8_2 = A1_2
      L9_2 = A2_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 then
        L6_2 = L5_2.from
        L3_2.from = L6_2
        L6_2 = L5_2.to
        L3_2.to = L6_2
        L6_2 = L5_2.direction
        L3_2.direction = L6_2
        L6_2 = L5_2.length
        L3_2.length = L6_2
        L6_2 = L5_2.radius
        L3_2.radius = L6_2
        L6_2 = L40_1
        L7_2 = L3_2.entity
        L6_2, L7_2 = L6_2(L7_2)
        L3_2.entityRotation = L7_2
        L3_2.entityCoords = L6_2
        A0_2.result = L3_2
      end
    end
  end
  L6_2 = true
  L7_2 = L3_2
  L8_2 = L4_2
  return L6_2, L7_2, L8_2
end
L46_1 = Utils
function L47_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L5_2 = L32_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L6_2 = {}
    L5_2 = L6_2
    L6_2 = L32_1
    L6_2[A0_2] = L5_2
  end
  L6_2 = L5_2.result
  if L6_2 then
    L6_2 = L38_1
    L7_2 = L5_2.result
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = L39_1
      L7_2 = L5_2.result
      L7_2 = L7_2.coords
      L8_2 = A1_2
      L9_2 = A2_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 then
        L6_2 = L41_1
        L7_2 = L5_2.result
        L6_2 = L6_2(L7_2)
        if L6_2 then
          goto lbl_34
        end
      end
    end
    L5_2.result = nil
  end
  ::lbl_34::
  L6_2 = L45_1
  L7_2 = L5_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
  L9_2 = L5_2.probe
  if not L9_2 and not L6_2 then
    L9_2 = L42_1
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = A4_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L5_2.probe = L9_2
    L9_2 = L45_1
    L10_2 = L5_2
    L11_2 = A1_2
    L12_2 = A2_2
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2)
    if L11_2 then
      L6_2 = L9_2
      L7_2 = L10_2
      L8_2 = L11_2
    end
  end
  L9_2 = _ENV
  L10_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L9_2 = L9_2[L10_2]
  L10_2 = A1_2.x
  L11_2 = A1_2.y
  L12_2 = A1_2.z
  L13_2 = A2_2.x
  L14_2 = A2_2.y
  L15_2 = A2_2.z
  L16_2 = 83
  L17_2 = A3_2
  L18_2 = 4
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L43_1
  L11_2 = L9_2
  L10_2, L11_2 = L10_2(L11_2)
  if nil == L10_2 then
    L10_2 = false
  end
  L12_2 = L10_2 or L12_2
  if not L10_2 then
    L12_2 = L5_2.result
  end
  if L10_2 then
    L13_2 = "line"
    if L13_2 then
      goto lbl_95
    end
  end
  L13_2 = L5_2.result
  if L13_2 then
    L13_2 = "sweep"
    if L13_2 then
      goto lbl_95
    end
  end
  L13_2 = "miss"
  ::lbl_95::
  L14_2 = nil
  if L10_2 then
    L15_2 = L5_2.result
    if L15_2 then
      L15_2 = L10_2.entity
      L16_2 = L5_2.result
      L16_2 = L16_2.entity
      L15_2 = L15_2 == L16_2
      L16_2 = L10_2.coords
      L16_2 = L16_2 - A1_2
      L16_2 = #L16_2
      L17_2 = L5_2.result
      L17_2 = L17_2.coords
      L17_2 = L17_2 - A1_2
      L17_2 = #L17_2
      L14_2 = L16_2 - L17_2
      if not L15_2 then
        L16_2 = L5_2.result
        L16_2 = L16_2.radius
        if L14_2 > L16_2 then
          L12_2 = L5_2.result
          L13_2 = "sweep"
        end
      end
    end
  end
  L15_2 = L33_1
  if L15_2 then
    L15_2 = Config
    L15_2 = L15_2.DebugMode
    if L15_2 then
      L15_2 = pcall
      L16_2 = L33_1
      L17_2 = A0_2
      L18_2 = A1_2
      L19_2 = A2_2
      L20_2 = L10_2
      L21_2 = L5_2.result
      L22_2 = L12_2
      L23_2 = {}
      L23_2.source = L13_2
      L23_2.lineStatus = L11_2
      L23_2.sweepStatus = L8_2
      L23_2.sweepCompleted = L6_2
      L23_2.polledSweep = L7_2
      L24_2 = L5_2.probe
      if L24_2 then
        L24_2 = L5_2.probe
        L24_2 = L24_2.sweep
        if L24_2 then
          goto lbl_157
        end
      end
      L24_2 = nil
      ::lbl_157::
      L23_2.pendingHandle = L24_2
      L23_2.sweepLead = L14_2
      L15_2, L16_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      if not L15_2 then
        L17_2 = nil
        L33_1 = L17_2
        L17_2 = Utils
        L17_2 = L17_2.Warn
        L18_2 = "Cursor ray observer failed"
        L19_2 = L16_2
        L17_2(L18_2, L19_2)
      end
    end
  end
  if not L12_2 then
    L15_2 = false
    return L15_2
  end
  L15_2 = true
  L16_2 = L12_2.coords
  L17_2 = L12_2.entity
  L18_2 = L12_2.normal
  return L15_2, L16_2, L17_2, L18_2
end
L46_1.CursorRay = L47_1
L46_1 = Utils
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetFinalRenderedCamCoord
  L1_2 = L1_2()
  L2_2 = Utils
  L2_2 = L2_2.RotationToDirection
  L3_2 = GetFinalRenderedCamRot
  L4_2 = 2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = vec3
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = GetFinalRenderedCamNearClip
  L4_2 = L4_2()
  L4_2 = L3_2 * L4_2
  L4_2 = L1_2 + L4_2
  L5_2 = GetEntityCoords
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L5_2 - L4_2
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = 0.0
  L8_2 = L5_2.x
  L9_2 = L3_2.x
  L8_2 = L8_2 * L9_2
  L9_2 = L5_2.y
  L10_2 = L3_2.y
  L9_2 = L9_2 * L10_2
  L8_2 = L8_2 + L9_2
  L9_2 = L5_2.z
  L10_2 = L3_2.z
  L9_2 = L9_2 * L10_2
  L8_2 = L8_2 + L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2 + L6_2
  L7_2 = L3_2 * L7_2
  L7_2 = L4_2 + L7_2
  L8_2 = L4_2
  L9_2 = L7_2
  L10_2 = L3_2
  return L8_2, L9_2, L10_2
end
L46_1.GetCameraRay = L47_1
L46_1 = Utils
function L47_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = Utils
  L4_2 = L4_2.GetCameraRay
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = Utils
  L7_2 = L7_2.CursorRay
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = "gameplay_camera"
  end
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = L3_2
  L12_2 = A1_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L11_2 = L7_2
  L12_2 = L8_2 or L12_2
  if not L8_2 then
    L12_2 = L5_2
  end
  L13_2 = L9_2
  L14_2 = L10_2
  L15_2 = L6_2
  L16_2 = L5_2
  return L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
end
L46_1.RayCastGamePlayCamera = L47_1
L46_1 = Utils
function L47_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = L5_2 + 1
    L7_2 = A0_2[L7_2]
    if not L7_2 then
      L7_2 = A0_2[1]
    end
    L8_2 = DrawLine
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L12_2 = L6_2.x
    L13_2 = L6_2.y
    L14_2 = L6_2.z
    L14_2 = L14_2 + A1_2
    L15_2 = 255
    L16_2 = 0
    L17_2 = 0
    L18_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = DrawLine
    L9_2 = L7_2.x
    L10_2 = L7_2.y
    L11_2 = L7_2.z
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L14_2 = L14_2 + A1_2
    L15_2 = 255
    L16_2 = 0
    L17_2 = 0
    L18_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = DrawLine
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L15_2 = 255
    L16_2 = 0
    L17_2 = 0
    L18_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = DrawLine
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L11_2 = L11_2 + A1_2
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L14_2 = L14_2 + A1_2
    L15_2 = 255
    L16_2 = 0
    L17_2 = 0
    L18_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = DrawPoly
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L17_2 = L6_2.z
    L17_2 = L17_2 + A1_2
    L18_2 = 0
    L19_2 = 255
    L20_2 = 0
    L21_2 = 50
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L8_2 = DrawPoly
    L9_2 = L7_2.x
    L10_2 = L7_2.y
    L11_2 = L7_2.z
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L14_2 = L14_2 + A1_2
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L17_2 = L6_2.z
    L17_2 = L17_2 + A1_2
    L18_2 = 0
    L19_2 = 255
    L20_2 = 0
    L21_2 = 50
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L8_2 = DrawPoly
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L11_2 = L11_2 + A1_2
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L14_2 = L14_2 + A1_2
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L17_2 = L6_2.z
    L18_2 = 0
    L19_2 = 255
    L20_2 = 0
    L21_2 = 50
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L8_2 = DrawPoly
    L9_2 = L7_2.x
    L10_2 = L7_2.y
    L11_2 = L7_2.z
    L11_2 = L11_2 + A1_2
    L12_2 = L7_2.x
    L13_2 = L7_2.y
    L14_2 = L7_2.z
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L17_2 = L6_2.z
    L18_2 = 0
    L19_2 = 255
    L20_2 = 0
    L21_2 = 50
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  end
end
L46_1.DrawWalls = L47_1
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ClonePed
  L3_2 = A0_2
  L4_2 = GetEntityHeading
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = SetEntityCoords
  L4_2 = L2_2
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetEntityHeading
  L4_2 = L2_2
  L5_2 = A1_2.w
  L3_2(L4_2, L5_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityInvincible
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityCollision
  L4_2 = L2_2
  L5_2 = false
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetBlockingOfNonTemporaryEvents
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityAsMissionEntity
  L4_2 = L2_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityAlpha
  L4_2 = L2_2
  L5_2 = 200
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L47_1 = Utils
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = type
    L3_2 = A0_2.entrances
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_14
    end
  end
  do return L1_2 end
  ::lbl_14::
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = A0_2.entrances
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L46_1
    L10_2 = L2_2
    L11_2 = L8_2.coords
    L9_2 = L9_2(L10_2, L11_2)
    L1_2[L7_2] = L9_2
  end
  return L1_2
end
L47_1.SpawnPlacedEntrances = L48_1
L47_1 = Utils
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = type
    L3_2 = A0_2.access
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_14
    end
  end
  do return L1_2 end
  ::lbl_14::
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = A0_2.access
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L46_1
    L10_2 = L2_2
    L11_2 = L8_2.coords
    L9_2 = L9_2(L10_2, L11_2)
    L1_2[L7_2] = L9_2
  end
  return L1_2
end
L47_1.SpawnPlacedAccess = L48_1
L47_1 = Utils
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
end
L47_1.DeletePlacedEntrances = L48_1
L47_1 = Utils
function L48_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = ipairs
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = A0_2.entrances
      L9_2 = L9_2[L7_2]
      if L9_2 then
        L9_2 = GetEntityCoords
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = Draw3DText
        L11_2 = vec3
        L12_2 = L9_2.x
        L13_2 = L9_2.y
        L14_2 = L9_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = A0_2.entrances
        L12_2 = L12_2[L7_2]
        L12_2 = L12_2.label
        L10_2(L11_2, L12_2)
      end
    end
  end
  L3_2 = ipairs
  L4_2 = A0_2.doors
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.centroid
    L10_2 = DrawMarker
    L11_2 = 20
    L12_2 = L9_2.x
    L13_2 = L9_2.y
    L14_2 = L9_2.z
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 0.0
    L21_2 = 0.3
    L22_2 = 0.3
    L23_2 = 0.3
    L24_2 = 0
    L25_2 = 200
    L26_2 = 255
    L27_2 = 150
    L28_2 = false
    L29_2 = false
    L30_2 = 2
    L31_2 = false
    L32_2 = nil
    L33_2 = nil
    L34_2 = false
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
    L10_2 = Draw3DText
    L11_2 = vec3
    L12_2 = L9_2.x
    L13_2 = L9_2.y
    L14_2 = L9_2.z
    L14_2 = L14_2 + 0.3
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = L8_2.label
    L10_2(L11_2, L12_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2.areas
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Utils
    L9_2 = L9_2.DrawWalls
    L10_2 = L8_2.points
    L11_2 = L8_2.height
    L9_2(L10_2, L11_2)
  end
  L3_2 = ipairs
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = A0_2.access
      L9_2 = L9_2[L7_2]
      if L9_2 then
        L9_2 = GetEntityCoords
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = Draw3DText
        L11_2 = vec3
        L12_2 = L9_2.x
        L13_2 = L9_2.y
        L14_2 = L9_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = A0_2.access
        L12_2 = L12_2[L7_2]
        L12_2 = L12_2.label
        L10_2(L11_2, L12_2)
      end
    end
  end
end
L47_1.DrawPlaced = L48_1
L47_1 = Utils
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = Utils
  L2_2 = L2_2.GetModelBounds
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  if not L4_2 then
    L5_2 = vec3
    L6_2 = -0.2
    L7_2 = -0.2
    L8_2 = -0.2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = vec3
    L7_2 = 0.2
    L8_2 = 0.2
    L9_2 = 0.2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L3_2 = L6_2
    L2_2 = L5_2
  end
  L5_2 = 0.001
  L6_2 = {}
  L7_2 = GetOffsetFromEntityInWorldCoords
  L8_2 = A0_2
  L9_2 = L2_2.x
  L9_2 = L9_2 - L5_2
  L10_2 = L2_2.y
  L10_2 = L10_2 - L5_2
  L11_2 = L2_2.z
  L11_2 = L11_2 - L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = GetOffsetFromEntityInWorldCoords
  L9_2 = A0_2
  L10_2 = L3_2.x
  L10_2 = L10_2 + L5_2
  L11_2 = L2_2.y
  L11_2 = L11_2 - L5_2
  L12_2 = L2_2.z
  L12_2 = L12_2 - L5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = GetOffsetFromEntityInWorldCoords
  L10_2 = A0_2
  L11_2 = L3_2.x
  L11_2 = L11_2 + L5_2
  L12_2 = L3_2.y
  L12_2 = L12_2 + L5_2
  L13_2 = L2_2.z
  L13_2 = L13_2 - L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = GetOffsetFromEntityInWorldCoords
  L11_2 = A0_2
  L12_2 = L2_2.x
  L12_2 = L12_2 - L5_2
  L13_2 = L3_2.y
  L13_2 = L13_2 + L5_2
  L14_2 = L2_2.z
  L14_2 = L14_2 - L5_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = GetOffsetFromEntityInWorldCoords
  L12_2 = A0_2
  L13_2 = L2_2.x
  L13_2 = L13_2 - L5_2
  L14_2 = L2_2.y
  L14_2 = L14_2 - L5_2
  L15_2 = L3_2.z
  L15_2 = L15_2 + L5_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = GetOffsetFromEntityInWorldCoords
  L13_2 = A0_2
  L14_2 = L3_2.x
  L14_2 = L14_2 + L5_2
  L15_2 = L2_2.y
  L15_2 = L15_2 - L5_2
  L16_2 = L3_2.z
  L16_2 = L16_2 + L5_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = A0_2
  L15_2 = L3_2.x
  L15_2 = L15_2 + L5_2
  L16_2 = L3_2.y
  L16_2 = L16_2 + L5_2
  L17_2 = L3_2.z
  L17_2 = L17_2 + L5_2
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L14_2 = GetOffsetFromEntityInWorldCoords
  L15_2 = A0_2
  L16_2 = L2_2.x
  L16_2 = L16_2 - L5_2
  L17_2 = L3_2.y
  L17_2 = L17_2 + L5_2
  L18_2 = L3_2.z
  L18_2 = L18_2 + L5_2
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L6_2[7] = L13_2
  L6_2[8] = L14_2
  L6_2[9] = L15_2
  L6_2[10] = L16_2
  L6_2[11] = L17_2
  L6_2[12] = L18_2
  L6_2[13] = L19_2
  L6_2[14] = L20_2
  L6_2[15] = L21_2
  L6_2[16] = L22_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = L6_2[1]
  L10_2 = L6_2[2]
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L9_2 = {}
  L10_2 = L6_2[2]
  L11_2 = L6_2[3]
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L10_2 = {}
  L11_2 = L6_2[3]
  L12_2 = L6_2[4]
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L11_2 = {}
  L12_2 = L6_2[4]
  L13_2 = L6_2[1]
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L12_2 = {}
  L13_2 = L6_2[5]
  L14_2 = L6_2[6]
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L13_2 = {}
  L14_2 = L6_2[6]
  L15_2 = L6_2[7]
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L14_2 = {}
  L15_2 = L6_2[7]
  L16_2 = L6_2[8]
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L15_2 = {}
  L16_2 = L6_2[8]
  L17_2 = L6_2[5]
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L16_2 = {}
  L17_2 = L6_2[1]
  L18_2 = L6_2[5]
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L17_2 = {}
  L18_2 = L6_2[2]
  L19_2 = L6_2[6]
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L18_2 = {}
  L19_2 = L6_2[3]
  L20_2 = L6_2[7]
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L19_2 = {}
  L20_2 = L6_2[4]
  L21_2 = L6_2[8]
  L19_2[1] = L20_2
  L19_2[2] = L21_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L7_2[9] = L16_2
  L7_2[10] = L17_2
  L7_2[11] = L18_2
  L7_2[12] = L19_2
  L8_2 = pairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = DrawLine
    L15_2 = L13_2[1]
    L15_2 = L15_2.x
    L16_2 = L13_2[1]
    L16_2 = L16_2.y
    L17_2 = L13_2[1]
    L17_2 = L17_2.z
    L18_2 = L13_2[2]
    L18_2 = L18_2.x
    L19_2 = L13_2[2]
    L19_2 = L19_2.y
    L20_2 = L13_2[2]
    L20_2 = L20_2.z
    L21_2 = table
    L21_2 = L21_2.unpack
    L22_2 = A1_2
    L21_2, L22_2 = L21_2(L22_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  end
end
L47_1.DrawEntityBox = L48_1
