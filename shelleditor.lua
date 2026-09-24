local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
ShellEditor = L0_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "'"
  L4_2 = "\\'"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.find
  L3_2 = "[%c\\]"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = "string" == L1_2 and L1_2
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "number" == L1_2
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.table
  if "house" ~= L1_2 then
    L1_2 = A0_2.table
    if "garage" ~= L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = type
  L2_2 = A0_2.key
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = A0_2.key
    if "" ~= L1_2 then
      L1_2 = A0_2.key
      L2_2 = L1_2
      L1_2 = L1_2.match
      L3_2 = "^[%w_]+$"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        goto lbl_32
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_32::
  L1_2 = L2_1
  L2_2 = A0_2.label
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.model
  if nil ~= L1_2 then
    L1_2 = type
    L2_2 = A0_2.model
    L1_2 = L1_2(L2_2)
    if "string" == L1_2 then
      L1_2 = A0_2.model
      L2_2 = L1_2
      L1_2 = L1_2.match
      L3_2 = "^[%w_]+$"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        goto lbl_55
      end
    end
    L1_2 = false
    return L1_2
  end
  ::lbl_55::
  L1_2 = type
  L2_2 = A0_2.exits
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.exits
    L1_2 = #L1_2
    if 0 ~= L1_2 then
      goto lbl_66
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_66::
  L1_2 = A0_2.exits
  L1_2 = #L1_2
  if L1_2 > 8 then
    L1_2 = false
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2.exits
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = L2_1
      L8_2 = L6_2.label
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_88
      end
    end
    L7_2 = false
    do return L7_2 end
    ::lbl_88::
    L7_2 = L6_2.coords
    L8_2 = Utils
    L8_2 = L8_2.IsFiniteNumber
    L9_2 = L7_2 or L9_2
    if L7_2 then
      L9_2 = L7_2.x
    end
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.IsFiniteNumber
      L9_2 = L7_2 or L9_2
      if L7_2 then
        L9_2 = L7_2.y
      end
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = Utils
        L8_2 = L8_2.IsFiniteNumber
        L9_2 = L7_2 or L9_2
        if L7_2 then
          L9_2 = L7_2.z
        end
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = Utils
          L8_2 = L8_2.IsFiniteNumber
          L9_2 = L7_2 or L9_2
          if L7_2 then
            L9_2 = L7_2.w
          end
          L8_2 = L8_2(L9_2)
          if L8_2 then
            goto lbl_123
          end
        end
      end
    end
    L8_2 = false
    do return L8_2 end
    ::lbl_123::
  end
  L1_2 = A0_2.access
  if nil ~= L1_2 then
    L1_2 = type
    L2_2 = A0_2.access
    L1_2 = L1_2(L2_2)
    if "table" == L1_2 then
      L1_2 = A0_2.access
      L1_2 = #L1_2
      if not (L1_2 > 8) then
        goto lbl_140
      end
    end
    L1_2 = false
    do return L1_2 end
    ::lbl_140::
    L1_2 = ipairs
    L2_2 = A0_2.access
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "table" ~= L7_2 then
        L7_2 = false
        return L7_2
      end
      L7_2 = type
      L8_2 = L6_2.kind
      L7_2 = L7_2(L8_2)
      if "string" == L7_2 then
        L7_2 = L6_2.kind
        L7_2 = #L7_2
        if not (L7_2 > 32) then
          L7_2 = L6_2.kind
          L8_2 = L7_2
          L7_2 = L7_2.match
          L9_2 = "^[%w_]+$"
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            goto lbl_168
          end
        end
      end
      L7_2 = false
      do return L7_2 end
      ::lbl_168::
      L7_2 = L2_1
      L8_2 = L6_2.label
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = false
        return L7_2
      end
      L7_2 = L6_2.model
      if nil ~= L7_2 then
        L7_2 = L3_1
        L8_2 = L6_2.model
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = false
          return L7_2
        end
      end
      L7_2 = L6_2.coords
      L8_2 = Utils
      L8_2 = L8_2.IsFiniteNumber
      L9_2 = L7_2 or L9_2
      if L7_2 then
        L9_2 = L7_2.x
      end
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = Utils
        L8_2 = L8_2.IsFiniteNumber
        L9_2 = L7_2 or L9_2
        if L7_2 then
          L9_2 = L7_2.y
        end
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = Utils
          L8_2 = L8_2.IsFiniteNumber
          L9_2 = L7_2 or L9_2
          if L7_2 then
            L9_2 = L7_2.z
          end
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = Utils
            L8_2 = L8_2.IsFiniteNumber
            L9_2 = L7_2 or L9_2
            if L7_2 then
              L9_2 = L7_2.w
            end
            L8_2 = L8_2(L9_2)
            if L8_2 then
              goto lbl_220
            end
          end
        end
      end
      L8_2 = false
      do return L8_2 end
      ::lbl_220::
    end
  end
  L1_2 = true
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      L1_2 = #A0_2
      if not (L1_2 > 8) then
        goto lbl_14
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_14::
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = L2_1
      L8_2 = L6_2.label
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_30
      end
    end
    L7_2 = false
    do return L7_2 end
    ::lbl_30::
    L7_2 = L6_2.coords
    L8_2 = Utils
    L8_2 = L8_2.IsFiniteNumber
    L9_2 = L7_2 or L9_2
    if L7_2 then
      L9_2 = L7_2.x
    end
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.IsFiniteNumber
      L9_2 = L7_2 or L9_2
      if L7_2 then
        L9_2 = L7_2.y
      end
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = Utils
        L8_2 = L8_2.IsFiniteNumber
        L9_2 = L7_2 or L9_2
        if L7_2 then
          L9_2 = L7_2.z
        end
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = Utils
          L8_2 = L8_2.IsFiniteNumber
          L9_2 = L7_2 or L9_2
          if L7_2 then
            L9_2 = L7_2.w
          end
          L8_2 = L8_2(L9_2)
          if L8_2 then
            goto lbl_65
          end
        end
      end
    end
    L8_2 = false
    do return L8_2 end
    ::lbl_65::
  end
  L1_2 = true
  return L1_2
end
L6_1 = ShellEditor
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = {}
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L4_2 = "    %s = {"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A0_2.key
  L4_2 = L4_2(L5_2, L6_2)
  L2_2[L3_2] = L4_2
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L4_2 = "        model = `%s`,"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_1
  L7_2 = A0_2.model
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L2_2[L3_2] = L4_2
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L4_2 = "        label = '%s',"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_1
  L7_2 = A0_2.label
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L2_2[L3_2] = L4_2
  L3_2 = type
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A1_2.maxStorages
  end
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = #L2_2
    L3_2 = L3_2 + 1
    L4_2 = "        maxStorages = %d,"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A1_2.maxStorages
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  end
  L3_2 = type
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A1_2.maxFurniture
  end
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = #L2_2
    L3_2 = L3_2 + 1
    L4_2 = "        maxFurniture = %d,"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A1_2.maxFurniture
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  end
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = "        exits = {"
  L3_2 = ipairs
  L4_2 = A0_2.exits
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.coords
    L10_2 = #L2_2
    L10_2 = L10_2 + 1
    L11_2 = "            {label = '%s', coords = vec4(%.3f, %.3f, %.3f, %.3f)},"
    L12_2 = L11_2
    L11_2 = L11_2.format
    L13_2 = L1_1
    L14_2 = L8_2.label
    L13_2 = L13_2(L14_2)
    L14_2 = L9_2.x
    L15_2 = L9_2.y
    L16_2 = L9_2.z
    L17_2 = L9_2.w
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L2_2[L10_2] = L11_2
  end
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = "        },"
  L3_2 = type
  L4_2 = A0_2.access
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = A0_2.access
    L3_2 = #L3_2
    if L3_2 > 0 then
      L3_2 = #L2_2
      L3_2 = L3_2 + 1
      L2_2[L3_2] = "        spots = {"
      L3_2 = ipairs
      L4_2 = A0_2.access
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.coords
        L10_2 = ""
        L11_2 = L8_2.model
        if nil ~= L11_2 then
          L11_2 = type
          L12_2 = L8_2.model
          L11_2 = L11_2(L12_2)
          if "number" == L11_2 then
            L11_2 = " model = %d,"
            L12_2 = L11_2
            L11_2 = L11_2.format
            L13_2 = L8_2.model
            L11_2 = L11_2(L12_2, L13_2)
            if L11_2 then
              goto lbl_131
              L10_2 = L11_2 or L10_2
            end
          end
          L11_2 = " model = `%s`,"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = L1_1
          L14_2 = L8_2.model
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L10_2 = L11_2
        end
        ::lbl_131::
        L11_2 = #L2_2
        L11_2 = L11_2 + 1
        L12_2 = "            {kind = '%s', label = '%s',%s coords = vec4(%.3f, %.3f, %.3f, %.3f)},"
        L13_2 = L12_2
        L12_2 = L12_2.format
        L14_2 = L8_2.kind
        L15_2 = L1_1
        L16_2 = L8_2.label
        L15_2 = L15_2(L16_2)
        L16_2 = L10_2
        L17_2 = L9_2.x
        L18_2 = L9_2.y
        L19_2 = L9_2.z
        L20_2 = L9_2.w
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L2_2[L11_2] = L12_2
      end
      L3_2 = #L2_2
      L3_2 = L3_2 + 1
      L2_2[L3_2] = "        },"
    end
  end
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = "    },"
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  L5_2 = "\n"
  return L3_2(L4_2, L5_2)
end
L6_1.BuildEntryText = L7_1
function L6_1(A0_2)
  local L1_2
  if "house" == A0_2 then
    L1_2 = "Config.HouseInteriors = {"
    if L1_2 then
      goto lbl_7
    end
  end
  L1_2 = "Config.GarageInteriors = {"
  ::lbl_7::
  return L1_2
end
L7_1 = ShellEditor
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = L6_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.find
  L7_2 = L4_2
  L8_2 = 1
  L9_2 = true
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L7_2 = nil
    return L7_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.find
  L9_2 = [[

}]]
  L10_2 = L6_2
  L11_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L8_2 = nil
    return L8_2
  end
  L9_2 = A0_2
  L8_2 = A0_2.find
  L10_2 = [[

    %s = {]]
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = A2_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L5_2
  L12_2 = true
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if L8_2 and L7_2 > L8_2 then
    L9_2 = nil
    return L9_2
  end
  L10_2 = A0_2
  L9_2 = A0_2.find
  L11_2 = "\n"
  L12_2 = L6_2
  L13_2 = true
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  if not L9_2 then
    L10_2 = nil
    return L10_2
  end
  L11_2 = A0_2
  L10_2 = A0_2.sub
  L12_2 = 1
  L13_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = A3_2
  L12_2 = "\n"
  L14_2 = A0_2
  L13_2 = A0_2.sub
  L15_2 = L9_2 + 1
  L13_2 = L13_2(L14_2, L15_2)
  L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
  return L10_2
end
L7_1.AddEntry = L8_1
L7_1 = ShellEditor
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = L6_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.find
  L7_2 = L4_2
  L8_2 = 1
  L9_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = nil
    return L6_2
  end
  L7_2 = A0_2
  L6_2 = A0_2.find
  L8_2 = [[

}]]
  L9_2 = L5_2
  L10_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L7_2 = nil
    return L7_2
  end
  L7_2 = [[

    %s = {]]
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.find
  L10_2 = L7_2
  L11_2 = L5_2
  L12_2 = true
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 or L6_2 < L8_2 then
    L9_2 = nil
    return L9_2
  end
  L9_2 = [[

    },]]
  L11_2 = A0_2
  L10_2 = A0_2.find
  L12_2 = L9_2
  L13_2 = #L7_2
  L13_2 = L8_2 + L13_2
  L14_2 = true
  L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  if not L10_2 then
    L12_2 = nil
    return L12_2
  end
  L13_2 = A0_2
  L12_2 = A0_2.sub
  L14_2 = 1
  L15_2 = L8_2
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = A3_2
  L15_2 = A0_2
  L14_2 = A0_2.sub
  L16_2 = L11_2 + 1
  L14_2 = L14_2(L15_2, L16_2)
  L12_2 = L12_2 .. L13_2 .. L14_2
  return L12_2
end
L7_1.EditEntry = L8_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = "        exits = {"
  L1_2[1] = L2_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.coords
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L10_2 = "            {label = '%s', coords = vec4(%.3f, %.3f, %.3f, %.3f)},"
    L11_2 = L10_2
    L10_2 = L10_2.format
    L12_2 = L1_1
    L13_2 = L7_2.label
    L12_2 = L12_2(L13_2)
    L13_2 = L8_2.x
    L14_2 = L8_2.y
    L15_2 = L8_2.z
    L16_2 = L8_2.w
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L1_2[L9_2] = L10_2
  end
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = "        },"
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = L1_2
  L4_2 = "\n"
  return L2_2(L3_2, L4_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      goto lbl_11
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_11::
  L1_2 = {}
  L2_2 = "        spots = {"
  L1_2[1] = L2_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.coords
    L9_2 = ""
    L10_2 = L7_2.model
    if nil ~= L10_2 then
      L10_2 = type
      L11_2 = L7_2.model
      L10_2 = L10_2(L11_2)
      if "number" == L10_2 then
        L10_2 = " model = %d,"
        L11_2 = L10_2
        L10_2 = L10_2.format
        L12_2 = L7_2.model
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          goto lbl_42
          L9_2 = L10_2 or L9_2
        end
      end
      L10_2 = " model = `%s`,"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L1_1
      L13_2 = L7_2.model
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L9_2 = L10_2
    end
    ::lbl_42::
    L10_2 = #L1_2
    L10_2 = L10_2 + 1
    L11_2 = "            {kind = '%s', label = '%s',%s coords = vec4(%.3f, %.3f, %.3f, %.3f)},"
    L12_2 = L11_2
    L11_2 = L11_2.format
    L13_2 = L7_2.kind
    L14_2 = L1_1
    L15_2 = L7_2.label
    L14_2 = L14_2(L15_2)
    L15_2 = L9_2
    L16_2 = L8_2.x
    L17_2 = L8_2.y
    L18_2 = L8_2.z
    L19_2 = L8_2.w
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L1_2[L10_2] = L11_2
  end
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = "        },"
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = L1_2
  L4_2 = "\n"
  return L2_2(L3_2, L4_2)
end
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = [[

        ]]
  L4_2 = A1_2
  L5_2 = " = "
  L3_2 = L3_2 .. L4_2 .. L5_2
  L5_2 = A0_2
  L4_2 = A0_2.find
  L6_2 = L3_2
  L7_2 = 1
  L8_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L5_2 = nil
    return L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.find
  L7_2 = "\n"
  L8_2 = L4_2 + 1
  L9_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = nil
    return L6_2
  end
  L7_2 = A0_2
  L6_2 = A0_2.sub
  L8_2 = 1
  L9_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A2_2
  L9_2 = A0_2
  L8_2 = A0_2.sub
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L6_2 = L6_2 .. L7_2 .. L8_2
  return L6_2
end
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = [[

        ]]
  L5_2 = A1_2
  L6_2 = " = {"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L6_2 = A0_2
  L5_2 = A0_2.find
  L7_2 = L4_2
  L8_2 = 1
  L9_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    if A3_2 then
      L6_2 = nil
      return L6_2
    end
    if not A2_2 then
      return A0_2
    end
    L7_2 = A0_2
    L6_2 = A0_2.find
    L8_2 = [[

    }]]
    L9_2 = 1
    L10_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if not L6_2 then
      L7_2 = nil
      return L7_2
    end
    L8_2 = A0_2
    L7_2 = A0_2.sub
    L9_2 = 1
    L10_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = "\n"
    L9_2 = A2_2
    L11_2 = A0_2
    L10_2 = A0_2.sub
    L12_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2)
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    return L7_2
  end
  L7_2 = A0_2
  L6_2 = A0_2.find
  L8_2 = [[

        }]]
  L9_2 = #L4_2
  L9_2 = L5_2 + L9_2
  L10_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L7_2 = nil
    return L7_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.find
  L9_2 = [[

        [%a_][%w_]*%s*=]]
  L10_2 = #L4_2
  L10_2 = L5_2 + L10_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if L7_2 and L6_2 > L7_2 then
    L8_2 = nil
    return L8_2
  end
  L8_2 = [[

        }]]
  L8_2 = #L8_2
  L8_2 = L6_2 + L8_2
  L8_2 = L8_2 - 1
  L10_2 = A0_2
  L9_2 = A0_2.sub
  L11_2 = L8_2 + 1
  L12_2 = L8_2 + 1
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  if "," == L9_2 then
    L8_2 = L8_2 + 1
  end
  L10_2 = A0_2
  L9_2 = A0_2.sub
  L11_2 = 1
  L12_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = ""
  end
  L12_2 = A0_2
  L11_2 = A0_2.sub
  L13_2 = L8_2 + 1
  L11_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2 .. L10_2 .. L11_2
  return L9_2
end
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L6_2 = L6_1
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2.find
  L9_2 = L6_2
  L10_2 = 1
  L11_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L8_2 = nil
    return L8_2
  end
  L9_2 = A0_2
  L8_2 = A0_2.find
  L10_2 = [[

}]]
  L11_2 = L7_2
  L12_2 = true
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L9_2 = nil
    return L9_2
  end
  L9_2 = [[

    %s = {]]
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = A2_2
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.find
  L12_2 = L9_2
  L13_2 = L7_2
  L14_2 = true
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  if not L10_2 or L8_2 < L10_2 then
    L11_2 = nil
    return L11_2
  end
  L12_2 = A0_2
  L11_2 = A0_2.find
  L13_2 = [[

    }]]
  L14_2 = #L9_2
  L14_2 = L10_2 + L14_2
  L15_2 = true
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  if not L11_2 then
    L12_2 = nil
    return L12_2
  end
  L12_2 = [[

    }]]
  L12_2 = #L12_2
  L12_2 = L11_2 + L12_2
  L12_2 = L12_2 - 1
  L14_2 = A0_2
  L13_2 = A0_2.sub
  L15_2 = L12_2 + 1
  L16_2 = L12_2 + 1
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  if "," == L13_2 then
    L12_2 = L12_2 + 1
  end
  L14_2 = A0_2
  L13_2 = A0_2.sub
  L15_2 = L10_2 + 1
  L16_2 = L12_2
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = L10_1
  L15_2 = L13_2
  L16_2 = "exits"
  L17_2 = L7_1
  L18_2 = A3_2.exits
  L17_2 = L17_2(L18_2)
  L18_2 = true
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L13_2 = L14_2
  if not L13_2 then
    L14_2 = nil
    return L14_2
  end
  if not A5_2 then
    L14_2 = L9_1
    L15_2 = L13_2
    L16_2 = "label"
    L17_2 = "        label = '%s',"
    L18_2 = L17_2
    L17_2 = L17_2.format
    L19_2 = L1_1
    L20_2 = A3_2.label
    L19_2, L20_2 = L19_2(L20_2)
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L13_2 = L14_2
    if not L13_2 then
      L14_2 = nil
      return L14_2
    end
    L14_2 = L10_1
    L15_2 = L13_2
    L16_2 = "spots"
    L17_2 = L8_1
    L18_2 = A3_2.access
    L17_2 = L17_2(L18_2)
    L18_2 = false
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L13_2 = L14_2
    if not L13_2 then
      L14_2 = nil
      return L14_2
    end
    if not A4_2 then
      L14_2 = L9_1
      L15_2 = L13_2
      L16_2 = "model"
      L17_2 = "        model = `%s`,"
      L18_2 = L17_2
      L17_2 = L17_2.format
      L19_2 = L1_1
      L20_2 = A3_2.model
      L19_2, L20_2 = L19_2(L20_2)
      L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L14_2
      if not L13_2 then
        L14_2 = nil
        return L14_2
      end
    end
  end
  L15_2 = A0_2
  L14_2 = A0_2.sub
  L16_2 = 1
  L17_2 = L10_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = L13_2
  L17_2 = A0_2
  L16_2 = A0_2.sub
  L18_2 = L12_2 + 1
  L16_2 = L16_2(L17_2, L18_2)
  L14_2 = L14_2 .. L15_2 .. L16_2
  return L14_2
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = A0_2.table
  if "house" == L1_2 then
    L1_2 = Config
    L1_2 = L1_2.HouseInteriors
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = Config
  L1_2 = L1_2.GarageInteriors
  ::lbl_10::
  L2_2 = A0_2.key
  L2_2 = L1_2[L2_2]
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.model
  end
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = L2_2.isIpl
    L4_2 = L2_2.model
    L4_2 = true == L4_2 or L4_2
  end
  if not L4_2 then
    L5_2 = type
    L6_2 = A0_2.model
    L5_2 = L5_2(L6_2)
    if "string" ~= L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L5_2 = LoadResourceFile
  L6_2 = GetCurrentResourceName
  L6_2 = L6_2()
  L7_2 = "config/interiors.lua"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = type
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "string" ~= L6_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = nil
  if L2_2 then
    L7_2 = L11_1
    L8_2 = L5_2
    L9_2 = A0_2.table
    L10_2 = A0_2.key
    L11_2 = A0_2
    L12_2 = L4_2
    L13_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = L7_2
  else
    L7_2 = ShellEditor
    L7_2 = L7_2.AddEntry
    L8_2 = L5_2
    L9_2 = A0_2.table
    L10_2 = A0_2.key
    L11_2 = ShellEditor
    L11_2 = L11_2.BuildEntryText
    L12_2 = A0_2
    L13_2 = L2_2
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L11_2(L12_2, L13_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L6_2 = L7_2
  end
  if not L6_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = SaveResourceFile
  L8_2 = GetCurrentResourceName
  L8_2 = L8_2()
  L9_2 = "config/interiors.lua"
  L10_2 = L6_2
  L11_2 = -1
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = nil
  L8_2 = type
  L9_2 = A0_2.access
  L8_2 = L8_2(L9_2)
  if "table" == L8_2 then
    L8_2 = A0_2.access
    L8_2 = #L8_2
    if L8_2 > 0 then
      L8_2 = {}
      L7_2 = L8_2
      L8_2 = ipairs
      L9_2 = A0_2.access
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.coords
        L15_2 = {}
        L16_2 = L13_2.kind
        L15_2.kind = L16_2
        L16_2 = L13_2.label
        L15_2.label = L16_2
        L16_2 = L13_2.model
        L15_2.model = L16_2
        L16_2 = vec4
        L17_2 = L14_2.x
        L18_2 = L14_2.y
        L19_2 = L14_2.z
        L20_2 = L14_2.w
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
        L15_2.coords = L16_2
        L7_2[L12_2] = L15_2
      end
    end
  end
  L8_2 = L2_2 or L8_2
  if not L2_2 then
    L8_2 = {}
  end
  if not L4_2 then
    L9_2 = joaat
    L10_2 = A0_2.model
    L9_2 = L9_2(L10_2)
    L8_2.model = L9_2
  end
  L9_2 = A0_2.label
  L8_2.label = L9_2
  L9_2 = {}
  L10_2 = ipairs
  L11_2 = A0_2.exits
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.coords
    L17_2 = {}
    L18_2 = L15_2.label
    L17_2.label = L18_2
    L18_2 = vec4
    L19_2 = L16_2.x
    L20_2 = L16_2.y
    L21_2 = L16_2.z
    L22_2 = L16_2.w
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
    L17_2.coords = L18_2
    L9_2[L14_2] = L17_2
  end
  L8_2.exits = L9_2
  L8_2.spots = L7_2
  L10_2 = A0_2.key
  L1_2[L10_2] = L8_2
  if not L4_2 and L3_2 then
    L10_2 = Utils
    L10_2 = L10_2.DoModelsMatch
    L11_2 = L3_2
    L12_2 = A0_2.model
    L10_2 = L10_2(L11_2, L12_2)
    if not L10_2 then
      L10_2 = ShellThumbnails
      L10_2 = L10_2.Delete
      L11_2 = A0_2.key
      L10_2(L11_2)
    end
  end
  L10_2 = true
  return L10_2
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = IsAdmin
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L4_1
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_13::
  L2_2 = L0_1
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  L0_1 = L2_2
  L2_2 = pcall
  L3_2 = L12_1
  L4_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L5_2 = false
  L0_1 = L5_2
  L5_2 = L2_2 or L5_2
  L5_2 = L2_2 and true == L3_2
  L6_2 = L4_2 or L6_2
  if not L2_2 or not L4_2 then
    L6_2 = nil
  end
  return L5_2, L6_2
end
L14_1 = ShellEditor
function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L4_2 = IsAdmin
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  if "house" ~= A1_2 and "garage" ~= A1_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 and "" ~= A2_2 then
    L5_2 = A2_2
    L4_2 = A2_2.match
    L6_2 = "^[%w_]+$"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_28
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_28::
  L4_2 = L5_1
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L0_1
    if not L4_2 then
      goto lbl_38
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_38::
  if "house" == A1_2 then
    L4_2 = Config
    L4_2 = L4_2.HouseInteriors
    if L4_2 then
      goto lbl_46
    end
  end
  L4_2 = Config
  L4_2 = L4_2.GarageInteriors
  ::lbl_46::
  L5_2 = L4_2[A2_2]
  if L5_2 then
    L6_2 = L5_2.isCustomShell
    if not L6_2 then
      goto lbl_54
    end
  end
  L6_2 = false
  do return L6_2 end
  ::lbl_54::
  L6_2 = LoadResourceFile
  L7_2 = GetCurrentResourceName
  L7_2 = L7_2()
  L8_2 = "config/interiors.lua"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = type
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if "string" ~= L7_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = true
  L0_1 = L7_2
  L7_2 = pcall
  L8_2 = L11_1
  L9_2 = L6_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = {}
  L12_2.exits = A3_2
  L13_2 = true
  L14_2 = true
  L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = L7_2 or L9_2
  L9_2 = L8_2 or L9_2
  if L7_2 and L8_2 then
    L9_2 = SaveResourceFile
    L10_2 = GetCurrentResourceName
    L10_2 = L10_2()
    L11_2 = "config/interiors.lua"
    L12_2 = L8_2
    L13_2 = -1
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if L9_2 then
    L10_2 = {}
    L11_2 = ipairs
    L12_2 = A3_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
    for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
      L17_2 = L16_2.coords
      L18_2 = {}
      L19_2 = L16_2.label
      L18_2.label = L19_2
      L19_2 = vec4
      L20_2 = L17_2.x
      L21_2 = L17_2.y
      L22_2 = L17_2.z
      L23_2 = L17_2.w
      L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
      L18_2.coords = L19_2
      L10_2[L15_2] = L18_2
    end
    L5_2.exits = L10_2
  end
  L10_2 = false
  L0_1 = L10_2
  if L9_2 then
    L10_2 = true
    if L10_2 then
      goto lbl_123
    end
  end
  L10_2 = false
  ::lbl_123::
  return L10_2
end
L14_1.SaveExits = L15_1
L14_1 = RegisterCallback
L15_1 = "tk_housing:saveShellInterior"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L13_1
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.success = L3_2
  L6_2.reason = L4_2
  L5_2(L6_2)
end
L14_1(L15_1, L16_1)
