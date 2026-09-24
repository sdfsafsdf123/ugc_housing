local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^https://([^/?#]+)"
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
  return L2_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.Frames
  L1_2 = L1_2.hosts
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
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.lower
    L8_2 = L8_2(L9_2)
    if A0_2 == L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.furniture
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = type
      L15_2 = L13_2.data
      if L15_2 then
        L15_2 = L15_2.frame
      end
      L14_2 = L14_2(L15_2)
      if "table" == L14_2 then
        L14_2 = L13_2.data
        L14_2 = L14_2.frame
        L14_2 = L14_2.url
        if L14_2 then
          L1_2 = L1_2 + 1
        end
      end
    end
  end
  return L1_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = type
  L3_2 = A1_2.data
  if L3_2 then
    L3_2 = L3_2.frame
  end
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A1_2.data
    L2_2 = L2_2.frame
    L2_2 = L2_2.url
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = Config
  L2_2 = L2_2.Frames
  L2_2 = L2_2.maxPerProperty
  if not L2_2 then
    L2_2 = 6
  end
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L2_2 <= L3_2 then
    L3_2 = false
    L4_2 = "frame_limit"
    L5_2 = L2_2
    return L3_2, L4_2, L5_2
  end
  L3_2 = true
  return L3_2
end
L4_1 = {}
L4_1.fill = true
L4_1.fit = true
L4_1.stretch = true
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = "number" == L3_2 and A0_2 == A0_2 and A1_2 <= A0_2 and A0_2 <= A2_2
  return L3_2
end
L6_1 = Furniture
L6_1 = L6_1.RegisterDataField
L7_1 = "frame"
L8_1 = {}
L8_1.permission = "furnish"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Config
  L4_2 = L4_2.Frames
  if L4_2 then
    L4_2 = L4_2.enable
  end
  if L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.GetFrameData
    L5_2 = A1_2.model
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_16::
  if false == A0_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = type
    L5_2 = A0_2.url
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      goto lbl_32
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_32::
  L4_2 = A0_2.fit
  if nil ~= L4_2 then
    L5_2 = A0_2.fit
    L4_2 = L4_1
    L4_2 = L4_2[L5_2]
    if not L4_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = A0_2.crop
  if nil ~= L4_2 then
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if "table" == L5_2 then
      L5_2 = L5_1
      L6_2 = L4_2.zoom
      L7_2 = 1
      L8_2 = 4
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if L5_2 then
        L5_2 = L5_1
        L6_2 = L4_2.x
        L7_2 = -1
        L8_2 = 1
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        if L5_2 then
          L5_2 = L5_1
          L6_2 = L4_2.y
          L7_2 = -1
          L8_2 = 1
          L5_2 = L5_2(L6_2, L7_2, L8_2)
          if L5_2 then
            goto lbl_73
          end
        end
      end
    end
    L5_2 = false
    return L5_2
  end
  ::lbl_73::
  L5_2 = A0_2.url
  L6_2 = #L5_2
  L7_2 = 512
  if not (L6_2 > L7_2) then
    L7_2 = L5_2
    L6_2 = L5_2.find
    L8_2 = "%s"
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.sub
      L8_2 = 1
      L9_2 = 8
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if "https://" == L6_2 then
        goto lbl_92
      end
    end
  end
  L6_2 = false
  L7_2 = "invalid_picture_url"
  do return L6_2, L7_2 end
  ::lbl_92::
  L6_2 = L0_1
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = false
    L8_2 = "invalid_picture_url"
    return L7_2, L8_2
  end
  L7_2 = L1_1
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = false
    L8_2 = "picture_host_not_allowed"
    return L7_2, L8_2
  end
  L7_2 = L3_1
  L8_2 = A3_2
  L9_2 = A2_2
  return L7_2(L8_2, L9_2)
end
L8_1.validate = L9_1
L6_1(L7_1, L8_1)
L6_1 = 1500000
L7_1 = 10000
L8_1 = {}
L9_1 = AddEventHandler
L10_1 = "playerDropped"
function L11_1()
  local L0_2, L1_2
  L1_2 = source
  L0_2 = L8_1
  L0_2[L1_2] = nil
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "tk_housing:uploadFramePhoto"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Frames
  if L5_2 then
    L5_2 = L5_2.enable
  end
  if not L5_2 then
    return
  end
  L5_2 = type
  L6_2 = ConfigSV
  L6_2 = L6_2.FivemanageToken
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = ConfigSV
    L5_2 = L5_2.FivemanageToken
    if "" ~= L5_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_33
    end
  end
  do return end
  ::lbl_33::
  L5_2 = FurnitureDb
  L5_2 = L5_2.IsValidType
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      goto lbl_45
    end
  end
  do return end
  ::lbl_45::
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = #A3_2
    L6_2 = L6_1
    if not (L5_2 > L6_2) then
      goto lbl_55
    end
  end
  do return end
  ::lbl_55::
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = L8_1
  L6_2 = L6_2[L4_2]
  if L6_2 then
    L6_2 = L8_1
    L6_2 = L6_2[L4_2]
    L6_2 = L5_2 - L6_2
    L7_2 = L7_1
    if L6_2 < L7_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "tk_housing:framePhotoDone"
      L8_2 = L4_2
      L9_2 = A2_2
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
      return
    end
  end
  L6_2 = L8_1
  L6_2[L4_2] = L5_2
  L6_2 = Main
  L6_2 = L6_2.LoadPropertyData
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.furniture
  L6_2 = L6_2[A1_2]
  L7_2 = Main
  L7_2 = L7_2.GetFurnitureIndexById
  L8_2 = L6_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L7_2 or L8_2
  if L7_2 then
    L8_2 = L6_2[L7_2]
  end
  if L8_2 then
    L9_2 = Utils
    L9_2 = L9_2.GetFrameData
    L10_2 = L8_2.model
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_104
    end
  end
  do return end
  ::lbl_104::
  L9_2 = Furniture
  L9_2 = L9_2.CanEditField
  L10_2 = L4_2
  L11_2 = A0_2
  L12_2 = "furnish"
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  if not L9_2 then
    L9_2 = Utils
    L9_2 = L9_2.Debug
    L10_2 = "upload frame photo stopped: missing permission"
    L11_2 = L4_2
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = L3_1
  L10_2 = A0_2
  L11_2 = L8_2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L12_2 = Notify
    L13_2 = L4_2
    L14_2 = _U
    L15_2 = L10_2
    L16_2 = L11_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = "error"
    L12_2(L13_2, L14_2, L15_2)
    return
  end
  L12_2 = Utils
  L12_2 = L12_2.Debug
  L13_2 = "upload frame photo"
  L14_2 = L4_2
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = A2_2
  L18_2 = #A3_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = Photos
  L12_2 = L12_2.GetFilename
  L13_2 = A3_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L13_2 = Utils
    L13_2 = L13_2.Debug
    L14_2 = "upload frame photo stopped: not a jpeg or png data url"
    L15_2 = L4_2
    L16_2 = A0_2
    L13_2(L14_2, L15_2, L16_2)
    L13_2 = TriggerClientEvent
    L14_2 = "tk_housing:framePhotoDone"
    L15_2 = L4_2
    L16_2 = A2_2
    L17_2 = false
    L13_2(L14_2, L15_2, L16_2, L17_2)
    return
  end
  L13_2 = UploadPhoto
  L14_2 = A3_2
  L15_2 = L12_2
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = Utils
    L1_3 = L1_3.Debug
    L2_3 = "upload frame photo done"
    L3_3 = L4_2
    L4_3 = A0_2
    L5_3 = A2_2
    L6_3 = A0_3
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = Main
    L1_3 = L1_3.GetProperty
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L1_3.furniture
      if L1_3 then
        L2_3 = A1_2
        L1_3 = L1_3[L2_3]
      end
    end
    L2_3 = A0_3 or L2_3
    if A0_3 then
      L2_3 = Main
      L2_3 = L2_3.GetFurnitureIndexById
      L3_3 = L1_3
      L4_3 = A2_2
      L2_3 = L2_3(L3_3, L4_3)
    end
    if L2_3 then
      L3_3 = L3_1
      L4_3 = A0_2
      L5_3 = L1_3[L2_3]
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        goto lbl_42
      end
    end
    L3_3 = TriggerClientEvent
    L4_3 = "tk_housing:framePhotoDone"
    L5_3 = L4_2
    L6_3 = A2_2
    L7_3 = false
    L3_3(L4_3, L5_3, L6_3, L7_3)
    do return end
    ::lbl_42::
    L3_3 = Furniture
    L3_3 = L3_3.SetData
    L4_3 = A0_2
    L5_3 = A1_2
    L6_3 = A2_2
    L7_3 = {}
    L8_3 = {}
    L8_3.url = A0_3
    L9_3 = L1_3[L2_3]
    L9_3 = L9_3.data
    if L9_3 then
      L9_3 = L9_3.frame
      if L9_3 then
        L9_3 = L9_3.fit
      end
    end
    L8_3.fit = L9_3
    L7_3.frame = L8_3
    L8_3 = L4_2
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = TriggerClientEvent
    L4_3 = "tk_housing:framePhotoDone"
    L5_3 = L4_2
    L6_3 = A2_2
    L7_3 = A0_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L13_2(L14_2, L15_2, L16_2)
end
L9_1(L10_1, L11_1)
