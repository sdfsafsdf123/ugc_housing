local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = "data/shells.json"
L1_1 = "data/shells.json.bak"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsAdmin
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = Main
    L1_2 = L1_2.CanBuildShells
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.isCustomShell = true
  L2_2 = A0_2.id
  L1_2.customShell = L2_2
  L2_2 = A0_2.name
  L1_2.label = L2_2
  L2_2 = Shells
  L2_2 = L2_2.BuildExits
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.exits = L2_2
  L2_2 = A0_2.interiorKind
  L1_2.interiorKind = L2_2
  L2_2 = "custom_%s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Config
  L3_2 = L3_2.HouseInteriors
  L3_2[L2_2] = L1_2
  L3_2 = Config
  L3_2 = L3_2.GarageInteriors
  L3_2[L2_2] = L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "custom_%s"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Config
  L2_2 = L2_2.HouseInteriors
  L2_2[L1_2] = nil
  L2_2 = Config
  L2_2 = L2_2.GarageInteriors
  L2_2[L1_2] = nil
end
L5_1 = false
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L5_1
  if L0_2 then
    return
  end
  L0_2 = true
  L5_1 = L0_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = type
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == L0_2 then
    return
  end
  L1_2 = SaveResourceFile
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = L1_1
  L4_2 = L0_2
  L5_2 = -1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = type
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == L0_2 then
    return
  end
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_32
    end
  end
  L3_2 = Utils
  L3_2 = L3_2.Warn
  L4_2 = "Could not parse the shells file, it may be corrupt"
  L5_2 = L0_1
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_32::
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Shells
    L9_2 = L9_2.Validate
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2.id = L7_2
      L10_2 = Shells
      L10_2[L7_2] = L9_2
      L10_2 = L3_1
      L11_2 = L9_2
      L10_2(L11_2)
    else
      L10_2 = Utils
      L10_2 = L10_2.Warn
      L11_2 = "Skipping a bad shell on load"
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
    end
  end
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L6_1
  L0_2()
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Shells
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L0_2[L5_2] = L6_2
    end
  end
  L1_2 = SaveResourceFile
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = L0_1
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L5_2 = -1
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "tk_housing:shellsChanged"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Shells
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = #L0_2
      L7_2 = L7_2 + 1
      L0_2[L7_2] = L6_2
    end
  end
  return L0_2
end
L11_1 = RegisterCallback
L12_1 = "tk_housing:listShells"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = L10_1
  L3_2 = L3_2()
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCallback
L12_1 = "tk_housing:getShell"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "string" ~= L3_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = Shells
  L4_2 = L4_2[A2_2]
  L3_2(L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = false
L12_1 = RegisterCallback
L13_1 = "tk_housing:saveShell"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = Shells
  L3_2 = L3_2.Validate
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = L11_1
  if L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = true
  L11_1 = L4_2
  L4_2 = pcall
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L3_2.id
    if L0_3 then
      L0_3 = Shells
      L1_3 = L3_2.id
      L0_3 = L0_3[L1_3]
      if L0_3 then
        L0_3 = L3_2.id
        if L0_3 then
          goto lbl_15
        end
      end
    end
    L0_3 = Shells
    L0_3 = L0_3.NewId
    L0_3 = L0_3()
    ::lbl_15::
    L3_2.id = L0_3
    L1_3 = Shells
    L1_3 = L1_3[L0_3]
    L2_3 = Shells
    L3_3 = L3_2
    L2_3[L0_3] = L3_3
    L2_3 = L8_1
    L2_3 = L2_3()
    if not L2_3 then
      L2_3 = Shells
      L2_3[L0_3] = L1_3
      L2_3 = {}
      L2_3.success = false
      return L2_3
    end
    L2_3 = L3_1
    L3_3 = L3_2
    L2_3(L3_3)
    L2_3 = L9_1
    L3_3 = L3_2
    L2_3(L3_3)
    L2_3 = {}
    L2_3.success = true
    L2_3.id = L0_3
    return L2_3
  end
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = false
  L11_1 = L6_2
  L6_2 = A1_2
  L7_2 = L5_2 or L7_2
  if not L4_2 or not L5_2 then
    L7_2 = {}
    L7_2.success = false
  end
  L6_2(L7_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:deleteShell"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = Shells
    L3_2 = L3_2[A2_2]
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.success = false
  L3_2(L4_2)
  do return end
  ::lbl_27::
  L3_2 = Shells
  L3_2 = L3_2[A2_2]
  L4_2 = Shells
  L4_2[A2_2] = nil
  L4_2 = L8_1
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = Shells
    L4_2[A2_2] = L3_2
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = L4_1
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = ShellThumbnails
  L4_2 = L4_2.Delete
  L5_2 = "custom_%s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L9_1
  L5_2 = nil
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.success = true
  L4_2(L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = 60
L13_1 = RegisterCallback
L14_1 = "tk_housing:renameShell"
function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = L2_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = Shells
    L4_2 = L4_2[A2_2]
    if L4_2 then
      L4_2 = type
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if "string" == L4_2 then
        goto lbl_32
      end
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.success = false
  L4_2(L5_2)
  do return end
  ::lbl_32::
  L5_2 = A3_2
  L4_2 = A3_2.match
  L6_2 = "^%s*(.-)%s*$"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.sub
  L6_2 = 1
  L7_2 = L12_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A3_2 = L4_2
  if "" == A3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = Shells
  L4_2 = L4_2[A2_2]
  L5_2 = L4_2.name
  L4_2.name = A3_2
  L6_2 = L8_1
  L6_2 = L6_2()
  if not L6_2 then
    L4_2.name = L5_2
    L6_2 = A1_2
    L7_2 = {}
    L7_2.success = false
    L6_2(L7_2)
    return
  end
  L6_2 = L3_1
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = L9_1
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = A1_2
  L7_2 = {}
  L7_2.success = true
  L6_2(L7_2)
end
L13_1(L14_1, L15_1)
L13_1 = {}
L13_1.house = true
L13_1.garage = true
L13_1.both = true
L14_1 = RegisterCallback
L15_1 = "tk_housing:setShellKind"
function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = L2_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = Shells
    L4_2 = L4_2[A2_2]
    if L4_2 then
      L4_2 = type
      L5_2 = A3_2
      L4_2 = L4_2(L5_2)
      if "string" == L4_2 then
        L4_2 = L13_1
        L4_2 = L4_2[A3_2]
        if L4_2 then
          goto lbl_36
        end
      end
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.success = false
  L4_2(L5_2)
  do return end
  ::lbl_36::
  L4_2 = Shells
  L4_2 = L4_2[A2_2]
  L5_2 = L4_2.interiorKind
  L4_2.interiorKind = A3_2
  L6_2 = L8_1
  L6_2 = L6_2()
  if not L6_2 then
    L4_2.interiorKind = L5_2
    L6_2 = A1_2
    L7_2 = {}
    L7_2.success = false
    L6_2(L7_2)
    return
  end
  L6_2 = L3_1
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = L9_1
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = A1_2
  L7_2 = {}
  L7_2.success = true
  L6_2(L7_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCallback
L15_1 = "tk_housing:duplicateShell"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = Shells
    L3_2 = L3_2[A2_2]
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.success = false
  L3_2(L4_2)
  do return end
  ::lbl_27::
  L3_2 = Shells
  L3_2 = L3_2.Validate
  L4_2 = Shells
  L4_2 = L4_2[A2_2]
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = Shells
  L4_2 = L4_2.NewId
  L4_2 = L4_2()
  L3_2.id = L4_2
  L4_2 = L3_2.name
  L5_2 = " (copy)"
  L4_2 = L4_2 .. L5_2
  L5_2 = L4_2
  L4_2 = L4_2.sub
  L6_2 = 1
  L7_2 = L12_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.name = L4_2
  L4_2 = Shells
  L5_2 = L3_2.id
  L4_2[L5_2] = L3_2
  L4_2 = L8_1
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = Shells
    L5_2 = L3_2.id
    L4_2[L5_2] = nil
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = L3_1
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = ShellThumbnails
  L4_2 = L4_2.Copy
  L5_2 = "custom_%s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = "custom_%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = L3_2.id
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L9_1
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.success = true
  L6_2 = L3_2.id
  L5_2.id = L6_2
  L4_2(L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCallback
L15_1 = "tk_housing:importShell"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = Shells
  L3_2 = L3_2.Validate
  L4_2 = Shells
  L4_2 = L4_2.Decode
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.id
  if L4_2 then
    L4_2 = Shells
    L5_2 = L3_2.id
    L4_2 = L4_2[L5_2]
    if not L4_2 then
      L4_2 = L3_2.id
      if L4_2 then
        goto lbl_41
      end
    end
  end
  L4_2 = Shells
  L4_2 = L4_2.NewId
  L4_2 = L4_2()
  ::lbl_41::
  L3_2.id = L4_2
  L5_2 = Shells
  L5_2[L4_2] = L3_2
  L5_2 = L8_1
  L5_2 = L5_2()
  if not L5_2 then
    L5_2 = Shells
    L5_2[L4_2] = nil
    L5_2 = A1_2
    L6_2 = {}
    L6_2.success = false
    L5_2(L6_2)
    return
  end
  L5_2 = L3_1
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = L9_1
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.success = true
  L6_2.id = L4_2
  L5_2(L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCallback
L15_1 = "tk_housing:exportShell"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.success = false
    L3_2(L4_2)
    return
  end
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L3_2 = Shells
  L3_2 = "string" == L3_2 and L3_2
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.success = false
    L4_2(L5_2)
    return
  end
  L4_2 = Shells
  L4_2 = L4_2.Encode
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.success = false
    L5_2(L6_2)
    return
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.success = true
  L6_2.code = L4_2
  L5_2(L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = {}
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L14_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L14_1
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L14_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2[L7_2] = true
  end
  L2_2 = 0
  L3_2 = Config
  L3_2 = L3_2.ShellBuild
  L3_2 = L3_2.maxBuilders
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if not L6_2 then
      L6_2 = L14_1
      L6_2[A0_2] = L5_2
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
function L16_1(A0_2)
  local L1_2
  L1_2 = L14_1
  L1_2[A0_2] = nil
end
L17_1 = AddEventHandler
L18_1 = "playerDropped"
function L19_1()
  local L0_2, L1_2
  L0_2 = L16_1
  L1_2 = source
  L0_2(L1_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCallback
L18_1 = "tk_housing:enterBuildBucket"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = false
    return L2_2(L3_2)
  end
  L2_2 = L15_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = Utils
    L3_2 = L3_2.Warn
    L4_2 = "Refused a shell build session, the build bucket range is full"
    L5_2 = A0_2
    L6_2 = Config
    L6_2 = L6_2.ShellBuild
    L6_2 = L6_2.maxBuilders
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Notify
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "shell_creator_builders_full"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A1_2
    L4_2 = false
    return L3_2(L4_2)
  end
  L3_2 = GetPlayerRoutingBucket
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = SetPlayerRoutingBucket
  L5_2 = A0_2
  L6_2 = Config
  L6_2 = L6_2.ShellBuild
  L6_2 = L6_2.routingBucket
  L6_2 = L6_2 + L2_2
  L4_2(L5_2, L6_2)
  L4_2 = Properties
  L4_2 = L4_2.SendRoutingBucket
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = true
  L4_2(L5_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "tk_housing:leaveBuildBucket"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L2_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = GetPlayerRoutingBucket
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = SetPlayerRoutingBucket
  L3_2 = L0_2
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = Properties
  L2_2 = L2_2.SendRoutingBucket
  L3_2 = L0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L17_1(L18_1, L19_1)
L17_1 = AddEventHandler
L18_1 = "onResourceStop"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L14_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = SetPlayerRoutingBucket
    L7_2 = L5_2
    L8_2 = 0
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  L14_1 = L1_2
end
L17_1(L18_1, L19_1)
L17_1 = L7_1
L17_1()
