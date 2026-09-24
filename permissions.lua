local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = {}
Permissions = L0_1
L0_1 = {}
L1_1 = "furnish"
L2_1 = "changeCode"
L3_1 = "lock"
L4_1 = "managePermissions"
L5_1 = "manageSecurity"
L6_1 = "viewCamera"
L7_1 = "sell"
L8_1 = "transfer"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L1_1 = {}
L2_1 = "open"
L3_1 = "changeCode"
L4_1 = "lock"
L5_1 = "managePermissions"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^job:(.+):(%d+)$"
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L4_2 = tonumber
    L5_2 = L2_2
    L4_2, L5_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.match
  L5_2 = "^job:(.+)$"
  return L3_2(L4_2, L5_2)
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = #A0_2
    if not (L2_2 < 2) then
      L2_2 = #A0_2
      if not (L2_2 > 40) then
        goto lbl_14
      end
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_14::
  L3_2 = A0_2
  L2_2 = A0_2.lower
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.find
  L4_2 = "[^%w_-]"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 and A1_2 == A1_2 then
    L2_2 = math
    L2_2 = L2_2.huge
    if A1_2 ~= L2_2 then
      L2_2 = math
      L2_2 = L2_2.huge
      L2_2 = -L2_2
      if A1_2 ~= L2_2 then
        goto lbl_42
      end
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_42::
  L2_2 = A0_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  return L2_2, L3_2, L4_2, L5_2, L6_2
end
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = {}
  if L3_2 then
    L6_2 = Utils
    L6_2 = L6_2.GetJobLabel
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_17
    end
  end
  L6_2 = GetCharName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  ::lbl_17::
  L5_2.name = L6_2
  L5_2.identifier = A0_2
  L6_2 = {}
  L5_2.permissions = L6_2
  L6_2 = 1
  L7_2 = #A2_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A2_2[L9_2]
    L11_2 = L5_2.permissions
    L12_2 = A1_2[L10_2]
    L11_2[L10_2] = L12_2
  end
  if L3_2 then
    L6_2 = A1_2.grade
    L6_2 = L4_2 or L6_2
    if not L6_2 and not L4_2 then
      L6_2 = 0
    end
    L5_2.grade = L6_2
  end
  return L5_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L6_1 = {}
L7_1 = Permissions
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      L2_2 = next
      L3_2 = A1_2
      L2_2 = L2_2(L3_2)
      if nil ~= L2_2 then
        goto lbl_15
      end
    end
  end
  L2_2 = L6_1
  do return L2_2 end
  ::lbl_15::
  L2_2 = GetJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetGradeId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L2_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      goto lbl_30
    end
  end
  L4_2 = L6_1
  do return L4_2 end
  ::lbl_30::
  L4_2 = {}
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L2_1
    L12_2 = L9_2
    L11_2, L12_2 = L11_2(L12_2)
    if L11_2 == L2_2 then
      L13_2 = L10_2.grade
      L13_2 = L12_2 or L13_2
      if not L13_2 and not L12_2 then
        L13_2 = 0
      end
      if L3_2 >= L13_2 then
        L13_2 = #L4_2
        L13_2 = L13_2 + 1
        L4_2[L13_2] = L9_2
      end
    end
  end
  return L4_2
end
L7_1.GetMatchingJobKeys = L8_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = false
    L10_2 = type
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = type
      L11_2 = L8_2.permissions
      L10_2 = L10_2(L11_2)
      if "table" == L10_2 then
        L10_2 = type
        L11_2 = L8_2.identifier
        L10_2 = L10_2(L11_2)
        if "string" == L10_2 then
          L10_2 = 1
          L11_2 = #A1_2
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = L8_2.permissions
            L15_2 = A1_2[L13_2]
            L14_2 = L14_2[L15_2]
            if L14_2 then
              L9_2 = true
              break
            end
          end
        end
      end
    end
    if not L9_2 then
      A0_2[L7_2] = nil
    end
  end
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = {}
    L11_2 = 1
    L12_2 = #A1_2
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = A1_2[L14_2]
      L16_2 = L9_2.permissions
      L16_2 = L16_2[L15_2]
      L10_2[L15_2] = L16_2
    end
    L11_2 = L9_2.identifier
    L12_2 = L2_1
    L13_2 = L11_2
    L12_2, L13_2 = L12_2(L13_2)
    if L12_2 then
      L14_2 = tonumber
      L15_2 = L9_2.grade
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = L13_2
      end
      if L14_2 and L14_2 >= 0 then
        L15_2 = math
        L15_2 = L15_2.huge
        if L14_2 < L15_2 then
          L15_2 = math
          L15_2 = L15_2.floor
          L16_2 = L14_2
          L15_2 = L15_2(L16_2)
          if L15_2 then
            goto lbl_83
          end
        end
      end
      L15_2 = 0
      ::lbl_83::
      L10_2.grade = L15_2
      L15_2 = Utils
      L15_2 = L15_2.EntityOwner
      L16_2 = "job"
      L17_2 = L12_2
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = ":"
      L17_2 = L10_2.grade
      L15_2 = L15_2 .. L16_2 .. L17_2
      L11_2 = L15_2
      L15_2 = L3_2[L11_2]
      if L15_2 then
        L16_2 = 1
        L17_2 = #A1_2
        L18_2 = 1
        for L19_2 = L16_2, L17_2, L18_2 do
          L20_2 = A1_2[L19_2]
          L21_2 = A1_2[L19_2]
          L21_2 = L10_2[L21_2]
          if not L21_2 then
            L21_2 = A1_2[L19_2]
            L21_2 = L15_2[L21_2]
          end
          L10_2[L20_2] = L21_2
        end
      end
    end
    L3_2[L11_2] = L10_2
  end
  if A2_2 then
    L4_2 = L5_1
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if A2_2 < L4_2 then
      L4_2 = nil
      return L4_2
    end
  end
  return L3_2
end
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  if not A3_2 then
    L5_2 = A0_2[A2_2]
    if L5_2 then
      L6_2 = {}
      L7_2 = L4_1
      L8_2 = A2_2
      L9_2 = L5_2
      L10_2 = A1_2
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2(L8_2, L9_2, L10_2)
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
      return L6_2
    end
    L6_2 = Permissions
    L6_2 = L6_2.GetMatchingJobKeys
    L7_2 = A4_2
    L8_2 = A0_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2[1]
    if L7_2 then
      L7_2 = {}
      L8_2 = L6_2[1]
      L9_2 = -1
      L10_2 = 1
      L11_2 = #L6_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L6_2[L13_2]
        L15_2 = A0_2[L14_2]
        L16_2 = 1
        L17_2 = #A1_2
        L18_2 = 1
        for L19_2 = L16_2, L17_2, L18_2 do
          L20_2 = A1_2[L19_2]
          L21_2 = L7_2[L20_2]
          if not L21_2 then
            L21_2 = L15_2[L20_2]
          end
          L7_2[L20_2] = L21_2
        end
        L16_2 = L2_1
        L17_2 = L14_2
        L16_2, L17_2 = L16_2(L17_2)
        L18_2 = L15_2.grade
        L18_2 = L17_2 or L18_2
        if not L18_2 and not L17_2 then
          L18_2 = 0
        end
        if L9_2 < L18_2 then
          L19_2 = L14_2
          L9_2 = L18_2
          L8_2 = L19_2
        end
      end
      L7_2.grade = L9_2
      L10_2 = {}
      L11_2 = L4_1
      L12_2 = L8_2
      L13_2 = L7_2
      L14_2 = A1_2
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L10_2[3] = L13_2
      L10_2[4] = L14_2
      L10_2[5] = L15_2
      L10_2[6] = L16_2
      L10_2[7] = L17_2
      L10_2[8] = L18_2
      L10_2[9] = L19_2
      L10_2[10] = L20_2
      L10_2[11] = L21_2
      return L10_2
    end
    L7_2 = {}
    return L7_2
  end
  L5_2 = {}
  L6_2 = pairs
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = #L5_2
    L12_2 = L12_2 + 1
    L13_2 = L4_1
    L14_2 = L10_2
    L15_2 = L11_2
    L16_2 = A1_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L5_2[L12_2] = L13_2
  end
  return L5_2
end
L9_1 = Permissions
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Webhook
  L4_2 = _U
  L5_2 = "webhook_cheater"
  L6_2 = Utils
  L6_2 = L6_2.GetIdentifiers
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = A2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Notify
  L4_2 = A0_2
  L5_2 = _U
  L6_2 = "missing_permission"
  L5_2 = L5_2(L6_2)
  L6_2 = "error"
  L3_2(L4_2, L5_2, L6_2)
end
L9_1.DenyCheater = L10_1
L9_1 = Permissions
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.owner
  L3_2 = GetIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 == L3_2
  return L2_2
end
L9_1.DoesPlayerOwnHouse = L10_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetJob
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.isboss
  end
  if true ~= L2_2 then
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L2_2 = L1_2.grade_name
    end
    if "boss" ~= L2_2 then
      goto lbl_16
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_16::
  L2_2 = type
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L3_2 = L1_2.grade
  end
  L2_2 = L2_2(L3_2)
  L2_2 = "table" == L2_2
  return L2_2
end
L10_1 = Permissions
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Permissions
  L2_2 = L2_2.DoesPlayerOwnHouse
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = "owner"
    return L2_2
  end
  L2_2 = Utils
  L2_2 = L2_2.ParseOwner
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.owner
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.type
  if "business" == L3_2 then
    L3_2 = Business
    if L3_2 then
      L3_2 = Business
      L3_2 = L3_2.GetBusiness
      L4_2 = L2_2.id
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L4_2 = nil
        return L4_2
      end
      L4_2 = GetIdentifier
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = Business
      L5_2 = L5_2.GetPlayerBusiness
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = L5_2.id
      end
      L6_2 = L3_2.id
      if L5_2 ~= L6_2 then
        L5_2 = nil
        return L5_2
      end
      L5_2 = L3_2.owner
      if L5_2 ~= L4_2 then
        L5_2 = Business
        L5_2 = L5_2.HasPermission
        L6_2 = L3_2
        L7_2 = L4_2
        L8_2 = "editBusiness"
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        if not L5_2 then
          goto lbl_68
        end
      end
      L5_2 = "manager"
      do return L5_2 end
      ::lbl_68::
      L5_2 = Business
      L5_2 = L5_2.HasPermission
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = "sellProperty"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if L5_2 then
        L5_2 = "agent"
        return L5_2
      end
      L5_2 = nil
      return L5_2
    end
  end
  L3_2 = L2_2.type
  if "job" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.JobOwnedProperties
    if L3_2 then
      L3_2 = L3_2.enabled
    end
    if L3_2 then
      L3_2 = GetJobName
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L2_2.id
      if L3_2 ~= L4_2 then
        L3_2 = nil
        return L3_2
      end
      L3_2 = Utils
      L3_2 = L3_2.GetJobOwnedConf
      L4_2 = L2_2.id
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.manage
      if "boss" == L4_2 then
        L4_2 = L9_1
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = "manager"
          return L4_2
        end
      end
      L4_2 = type
      L5_2 = L3_2.manage
      L4_2 = L4_2(L5_2)
      if "number" == L4_2 then
        L4_2 = GetGradeId
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        L5_2 = L3_2.manage
        if L4_2 >= L5_2 then
          L4_2 = "manager"
          return L4_2
        end
      end
      L4_2 = GetGradeId
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = L3_2.access
      if not L5_2 then
        L5_2 = 0
      end
      if L4_2 >= L5_2 then
        L4_2 = "agent"
        return L4_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L10_1.GetOwnerRole = L11_1
L10_1 = Permissions
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Permissions
  L2_2 = L2_2.DoesPlayerOwnHouse
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Permissions
  L2_2 = L2_2.GetOwnerRole
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = "manager" == L2_2
  return L2_2
end
L10_1.IsOwnerOrManager = L11_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if "manager" == A0_2 then
    L3_2 = true
    return L3_2
  end
  if "agent" ~= A0_2 then
    L3_2 = false
    return L3_2
  end
  if "lock" == A2_2 or "changeCode" == A2_2 or "viewCamera" == A2_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = Utils
  L3_2 = L3_2.ParseOwner
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.owner
  L3_2 = L3_2(L4_2)
  if "furnish" == A2_2 then
    L4_2 = L3_2.type
    if "job" == L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.GetJobOwnedConf
      L5_2 = L3_2.id
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.furnish
      L4_2 = true == L4_2
      return L4_2
    end
    L4_2 = Config
    L4_2 = L4_2.RealEstateBusiness
    if L4_2 then
      L4_2 = L4_2.ownedProperties
      if L4_2 then
        L4_2 = L4_2.agentFurnish
      end
    end
    L4_2 = true == L4_2
    return L4_2
  end
  if "open" == A2_2 then
    L4_2 = L3_2.type
    if "job" == L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.GetJobOwnedConf
      L5_2 = L3_2.id
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.storage
      L4_2 = true == L4_2
      return L4_2
    end
    L4_2 = Config
    L4_2 = L4_2.RealEstateBusiness
    if L4_2 then
      L4_2 = L4_2.ownedProperties
      if L4_2 then
        L4_2 = L4_2.agentStorage
      end
    end
    L4_2 = true == L4_2
    return L4_2
  end
  L4_2 = false
  return L4_2
end
L11_1 = {}
L11_1.furnish = true
L11_1.managePermissions = true
L11_1.manageSecurity = true
L11_1.viewCamera = true
L12_1 = Permissions
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L11_1
  L4_2 = L4_2[A2_2]
  if L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.IsMotelType
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L5_2.propertyType
    end
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = Permissions
  L4_2 = L4_2.DoesPlayerOwnHouse
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = Permissions
  L4_2 = L4_2.GetOwnerRole
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L10_1
    L6_2 = L4_2
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L5_2 = type
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if "table" ~= L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = GetIdentifier
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A3_2[L5_2]
  if L6_2 then
    L6_2 = L6_2[A2_2]
  end
  if L6_2 then
    L6_2 = true
    return L6_2
  end
  L6_2 = Permissions
  L6_2 = L6_2.GetMatchingJobKeys
  L7_2 = A0_2
  L8_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2[L10_2]
    L11_2 = A3_2[L11_2]
    L11_2 = L11_2[A2_2]
    if true == L11_2 then
      L11_2 = true
      return L11_2
    end
  end
  L7_2 = false
  return L7_2
end
L12_1.HasPermission = L13_1
L12_1 = Permissions
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if not A0_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.permissions
  L5_2 = Permissions
  L5_2 = L5_2.DoesPlayerOwnHouse
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = {}
    L5_2.furnish = true
    L5_2.changeCode = true
    L5_2.lock = true
    L5_2.managePermissions = true
    L5_2.manageSecurity = true
    L5_2.viewCamera = true
    L5_2.sell = true
    L5_2.transfer = true
    return L5_2
  end
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = L4_2[L3_2]
    if L5_2 then
      goto lbl_40
    end
  end
  L5_2 = nil
  ::lbl_40::
  L6_2 = Permissions
  L6_2 = L6_2.GetMatchingJobKeys
  L7_2 = A0_2
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Permissions
  L7_2 = L7_2.GetOwnerRole
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L8_2 = L6_2[1]
    if not L8_2 then
      goto lbl_97
    end
  end
  L8_2 = {}
  L9_2 = 1
  L10_2 = L0_1
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L0_1
    L13_2 = L13_2[L12_2]
    if L7_2 then
      L14_2 = L10_1
      L15_2 = L7_2
      L16_2 = A1_2
      L17_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_80
      end
    end
    L14_2 = L5_2 or L14_2
    if L5_2 then
      L14_2 = L5_2[L13_2]
    end
    L14_2 = true == L14_2
    ::lbl_80::
    L15_2 = 1
    L16_2 = #L6_2
    L17_2 = 1
    for L18_2 = L15_2, L16_2, L17_2 do
      if not L14_2 then
        L19_2 = L6_2[L18_2]
        L19_2 = L4_2[L19_2]
        L19_2 = L19_2[L13_2]
        L14_2 = true == L19_2
      end
    end
    L8_2[L13_2] = L14_2
  end
  do return L8_2 end
  ::lbl_97::
  return L5_2
end
L12_1.GetPlayerPermissionsByProperty = L13_1
L12_1 = RegisterNetEvent
L13_1 = "tk_housing:savePermissions"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    return
  end
  L4_2 = Permissions
  L4_2 = L4_2.HasPermission
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = "managePermissions"
  L8_2 = Main
  L8_2 = L8_2.GetProperty
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.permissions
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = Permissions
    L4_2 = L4_2.DenyCheater
    L5_2 = L2_2
    L6_2 = L3_2
    L7_2 = "savePermissions"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Utils
  L4_2 = L4_2.IsMotelType
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.propertyType
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = L7_1
  L5_2 = A1_2
  L6_2 = L0_1
  L7_2 = Config
  L7_2 = L7_2.MaxPermissions
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L5_2 = Notify
    L6_2 = L2_2
    L7_2 = _U
    L8_2 = "max_permissions_reached"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.properties
  L5_2 = L5_2[A0_2]
  L5_2.permissions = L4_2
  L5_2 = Main
  L5_2 = L5_2.ClearExportCache
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = PropertyDb
  L5_2 = L5_2.UpdatePermissions
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = Notify
  L6_2 = L2_2
  L7_2 = _U
  L8_2 = "permissions_saved"
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Webhook
  L6_2 = _U
  L7_2 = "webhook_action"
  L8_2 = Utils
  L8_2 = L8_2.GetIdentifiers
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L9_2 = "Save Permissions"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = L4_2
  L12_2 = {}
  L12_2.indent = true
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "tk_housing:saveStoragePermissions"
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = source
  L5_2 = GetPlayerFromId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if "number" == L6_2 then
    L6_2 = Main
    L6_2 = L6_2.GetProperty
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  if "house" ~= A1_2 and "yard" ~= A1_2 and "garage" ~= A1_2 then
    return
  end
  L6_2 = type
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if "table" ~= L6_2 then
    return
  end
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
  if not L7_2 then
    return
  end
  L8_2 = Permissions
  L8_2 = L8_2.HasPermission
  L9_2 = L5_2
  L10_2 = A0_2
  L11_2 = "managePermissions"
  L12_2 = L6_2[L7_2]
  L12_2 = L12_2.permissions
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L8_2 = Permissions
    L8_2 = L8_2.DenyCheater
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = "saveStoragePermissions"
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L8_2 = L7_1
  L9_2 = A3_2
  L10_2 = L1_1
  L11_2 = Config
  L11_2 = L11_2.MaxPermissions
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if not L8_2 then
    L9_2 = Notify
    L10_2 = L4_2
    L11_2 = _U
    L12_2 = "max_permissions_reached"
    L11_2 = L11_2(L12_2)
    L12_2 = "error"
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = L6_2[L7_2]
  L9_2.permissions = L8_2
  L9_2 = Main
  L9_2 = L9_2.SaveAccessPointRow
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = L6_2[L7_2]
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = FurnitureDb
  L9_2 = L9_2.UpdateStoragePermissions
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = L6_2[L7_2]
  L12_2 = L12_2.id
  L13_2 = L6_2[L7_2]
  L13_2 = L13_2.permissions
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = Storage
  L9_2 = L9_2.RevokeStorageAccessGrants
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Notify
  L10_2 = L4_2
  L11_2 = _U
  L12_2 = "permissions_saved"
  L11_2 = L11_2(L12_2)
  L12_2 = "success"
  L9_2(L10_2, L11_2, L12_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:hasPermission"
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A2_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "number" == L4_2 then
      L4_2 = Main
      L4_2 = L4_2.GetProperty
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_23
      end
    end
  end
  L4_2 = Utils
  L4_2 = L4_2.Debug
  L5_2 = "Got a property id that does not exist when checking a permission"
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = false
  L4_2(L5_2)
  do return end
  ::lbl_23::
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L4_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = Main
  L10_2 = L10_2.GetProperty
  L11_2 = A2_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2.permissions
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:getPermissionsByProperty"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 then
    L3_2 = type
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if "number" == L3_2 then
      L3_2 = Main
      L3_2 = L3_2.GetProperty
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_23
      end
    end
  end
  L3_2 = Utils
  L3_2 = L3_2.Debug
  L4_2 = "Got a property id that does not exist when getting permissions for a property"
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_23::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = Permissions
  L5_2 = L5_2.GetPlayerPermissionsByProperty
  L6_2 = L3_2
  L7_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:getOwnerRole"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = A1_2
  L4_2 = nil
  L3_2(L4_2)
  do return end
  ::lbl_16::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
    return
  end
  L4_2 = A1_2
  L5_2 = Permissions
  L5_2 = L5_2.GetOwnerRole
  L6_2 = L3_2
  L7_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2)
end
L12_1(L13_1, L14_1)
L12_1 = Permissions
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = {}
    return L3_2
  end
  L3_2 = {}
  L4_2 = Utils
  L4_2 = L4_2.IsEntityOwner
  L5_2 = L2_2.owner
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = Permissions
    L4_2 = L4_2.GetOwnerRole
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = nil
  ::lbl_26::
  L3_2.role = L4_2
  L4_2 = Permissions
  L4_2 = L4_2.HasPermission
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = "furnish"
  L8_2 = L2_2.permissions
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = true == L4_2
  L3_2.canFurnish = L4_2
  return L3_2
end
L12_1.GetPropertyAccess = L13_1
L12_1 = RegisterCallback
L13_1 = "tk_housing:getPropertyAccess"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L4_2(L5_2)
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = A1_2
  L6_2 = Permissions
  L6_2 = L6_2.GetPropertyAccess
  L7_2 = L4_2
  L8_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L5_2(L6_2, L7_2, L8_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:getPropertyPermissions"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
  do return end
  ::lbl_17::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L4_2(L5_2)
    return
  end
  L4_2 = Main
  L4_2 = L4_2.properties
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.permissions
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = Permissions
  L5_2 = L5_2.HasPermission
  L6_2 = L3_2
  L7_2 = A2_2
  L8_2 = "managePermissions"
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A1_2
  L7_2 = L8_1
  L8_2 = L4_2
  L9_2 = L0_1
  L10_2 = GetIdentifier
  L11_2 = L3_2
  L10_2 = L10_2(L11_2)
  L11_2 = L5_2
  L12_2 = L3_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:getStoragePermissions"
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_17
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  L5_2(L6_2)
  do return end
  ::lbl_17::
  if "house" ~= A3_2 and "yard" ~= A3_2 and "garage" ~= A3_2 then
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = A1_2
    L7_2 = {}
    L6_2(L7_2)
    return
  end
  L6_2 = Main
  L6_2 = L6_2.properties
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.furniture
  L6_2 = L6_2[A3_2]
  L7_2 = Main
  L7_2 = L7_2.GetFurnitureIndexById
  L8_2 = L6_2
  L9_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L8_2 = A1_2
    L9_2 = {}
    L8_2(L9_2)
    return
  end
  L8_2 = L6_2[L7_2]
  L9_2 = L8_2.permissions
  if not L9_2 then
    L9_2 = {}
  end
  L10_2 = Permissions
  L10_2 = L10_2.HasPermission
  L11_2 = L5_2
  L12_2 = A2_2
  L13_2 = "managePermissions"
  L14_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = A1_2
  L12_2 = L8_1
  L13_2 = L9_2
  L14_2 = L1_1
  L15_2 = GetIdentifier
  L16_2 = L5_2
  L15_2 = L15_2(L16_2)
  L16_2 = L10_2
  L17_2 = L5_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:getStorageOpenContext"
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_17
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  L5_2(L6_2)
  do return end
  ::lbl_17::
  if "house" ~= A3_2 and "yard" ~= A3_2 and "garage" ~= A3_2 then
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.LoadPropertyData
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = Main
  L5_2 = L5_2.properties
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.furniture
  L5_2 = L5_2[A3_2]
  L6_2 = Main
  L6_2 = L6_2.GetFurnitureIndexById
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L7_2 = A1_2
    L8_2 = {}
    L7_2(L8_2)
    return
  end
  L7_2 = L5_2[L6_2]
  L8_2 = GetPlayerFromId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = A1_2
    L10_2 = {}
    L9_2(L10_2)
    return
  end
  L9_2 = Permissions
  L9_2 = L9_2.HasPermission
  L10_2 = L8_2
  L11_2 = A2_2
  L12_2 = "changeCode"
  L13_2 = L7_2.permissions
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L7_2.permissions
  if not L10_2 then
    L10_2 = {}
  end
  L11_2 = Permissions
  L11_2 = L11_2.HasPermission
  L12_2 = L8_2
  L13_2 = A2_2
  L14_2 = "managePermissions"
  L15_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = A1_2
  L13_2 = {}
  if L9_2 then
    L14_2 = L7_2.code
    if L14_2 then
      goto lbl_88
    end
  end
  L14_2 = nil
  ::lbl_88::
  L13_2.code = L14_2
  L14_2 = Main
  L14_2 = L14_2.GetFurnitureLockState
  L15_2 = A2_2
  L16_2 = A3_2
  L17_2 = A4_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2.isOpen = L14_2
  L14_2 = L8_1
  L15_2 = L10_2
  L16_2 = L1_1
  L17_2 = GetIdentifier
  L18_2 = L8_2
  L17_2 = L17_2(L18_2)
  L18_2 = L11_2
  L19_2 = L8_2
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L13_2.permissions = L14_2
  L12_2(L13_2)
end
L12_1(L13_1, L14_1)
L12_1 = Permissions
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Main
  L2_2 = L2_2.properties
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.permissions
  L3_2 = L2_2[A1_2]
  if L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L3_2.furnish = false
  L3_2.changeCode = false
  L3_2.lock = false
  L3_2.managePermissions = false
  L3_2.manageSecurity = false
  L3_2.viewCamera = false
  L3_2.sell = false
  L3_2.transfer = false
  L2_2[A1_2] = L3_2
  L3_2 = Main
  L3_2 = L3_2.ClearExportCache
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = PropertyDb
  L3_2 = L3_2.UpdatePermissions
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = GetCharName
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2.name = L4_2
  L3_2.identifier = A1_2
  return L3_2
end
L12_1.AddKeyholder = L13_1
L12_1 = Permissions
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Main
  L2_2 = L2_2.properties
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.permissions
  L3_2 = L2_2[A1_2]
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L2_2[A1_2] = nil
  L3_2 = Main
  L3_2 = L3_2.ClearExportCache
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = PropertyDb
  L3_2 = L3_2.UpdatePermissions
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L12_1.RemoveKeyholder = L13_1
L12_1 = RegisterCallback
L13_1 = "tk_housing:addPermission"
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = A1_2
  L5_2 = nil
  L4_2(L5_2)
  do return end
  ::lbl_16::
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetPlayerFromId
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L4_2
  L8_2 = A2_2
  L9_2 = "managePermissions"
  L10_2 = Main
  L10_2 = L10_2.properties
  L10_2 = L10_2[A2_2]
  L10_2 = L10_2.permissions
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    L6_2 = Permissions
    L6_2 = L6_2.DenyCheater
    L7_2 = A0_2
    L8_2 = L4_2
    L9_2 = "addPermission"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  if not L5_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    L6_2 = Notify
    L7_2 = A0_2
    L8_2 = _U
    L9_2 = "player_not_found"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  if A3_2 == A0_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    L6_2 = Notify
    L7_2 = A0_2
    L8_2 = _U
    L9_2 = "cannot_add_self"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = Config
  L6_2 = L6_2.MaxPermissions
  if L6_2 then
    L6_2 = L5_1
    L7_2 = Main
    L7_2 = L7_2.properties
    L7_2 = L7_2[A2_2]
    L7_2 = L7_2.permissions
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.MaxPermissions
    if L6_2 >= L7_2 then
      L7_2 = A1_2
      L8_2 = nil
      L7_2(L8_2)
      L7_2 = Notify
      L8_2 = A0_2
      L9_2 = _U
      L10_2 = "max_permissions_reached"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  L6_2 = GetIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = Permissions
  L7_2 = L7_2.AddKeyholder
  L8_2 = A2_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L8_2 = A1_2
    L9_2 = nil
    L8_2(L9_2)
    L8_2 = Notify
    L9_2 = A0_2
    L10_2 = _U
    L11_2 = "player_already_has_permission"
    L10_2 = L10_2(L11_2)
    L11_2 = "error"
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L8_2 = A1_2
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = Webhook
  L9_2 = _U
  L10_2 = "webhook_action"
  L11_2 = Utils
  L11_2 = L11_2.GetIdentifiers
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L12_2 = "Add Permission"
  L13_2 = json
  L13_2 = L13_2.encode
  L14_2 = {}
  L15_2 = L7_2.name
  L14_2.name = L15_2
  L14_2.identifier = L6_2
  L15_2 = {}
  L15_2.indent = true
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:addJobPermission"
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = type
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_16
    end
  end
  L5_2 = A1_2
  L6_2 = nil
  L5_2(L6_2)
  do return end
  ::lbl_16::
  L5_2 = GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = Permissions
  L6_2 = L6_2.HasPermission
  L7_2 = L5_2
  L8_2 = A2_2
  L9_2 = "managePermissions"
  L10_2 = Main
  L10_2 = L10_2.properties
  L10_2 = L10_2[A2_2]
  L10_2 = L10_2.permissions
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    L6_2 = Permissions
    L6_2 = L6_2.DenyCheater
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = "addJobPermission"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = Utils
  L6_2 = L6_2.IsMotelType
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.propertyType
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    return
  end
  L6_2 = L3_1
  L7_2 = A3_2
  L8_2 = A4_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  A4_2 = L7_2
  A3_2 = L6_2
  if not A3_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    return
  end
  L6_2 = Config
  L6_2 = L6_2.MaxPermissions
  if L6_2 then
    L6_2 = L5_1
    L7_2 = Main
    L7_2 = L7_2.properties
    L7_2 = L7_2[A2_2]
    L7_2 = L7_2.permissions
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.MaxPermissions
    if L6_2 >= L7_2 then
      L7_2 = A1_2
      L8_2 = nil
      L7_2(L8_2)
      L7_2 = Notify
      L8_2 = A0_2
      L9_2 = _U
      L10_2 = "max_permissions_reached"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L7_2(L8_2, L9_2, L10_2)
      return
    end
  end
  L6_2 = Main
  L6_2 = L6_2.properties
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.permissions
  L7_2 = Utils
  L7_2 = L7_2.EntityOwner
  L8_2 = "job"
  L9_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = ":"
  L9_2 = A4_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L8_2 = Utils
  L8_2 = L8_2.EntityOwner
  L9_2 = "job"
  L10_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = L6_2[L8_2]
  L9_2 = L6_2[L7_2]
  if not L9_2 then
    if not L8_2 then
      goto lbl_132
    end
    L9_2 = L8_2.grade
    if not L9_2 then
      L9_2 = 0
    end
    if L9_2 ~= A4_2 then
      goto lbl_132
    end
  end
  L9_2 = A1_2
  L10_2 = nil
  L9_2(L10_2)
  L9_2 = Notify
  L10_2 = A0_2
  L11_2 = _U
  L12_2 = "job_already_has_permission"
  L11_2 = L11_2(L12_2)
  L12_2 = "error"
  L9_2(L10_2, L11_2, L12_2)
  do return end
  ::lbl_132::
  L9_2 = {}
  L9_2.furnish = false
  L9_2.changeCode = false
  L9_2.lock = false
  L9_2.managePermissions = false
  L9_2.manageSecurity = false
  L9_2.viewCamera = false
  L9_2.sell = false
  L9_2.transfer = false
  L9_2.grade = A4_2
  L6_2[L7_2] = L9_2
  L9_2 = Main
  L9_2 = L9_2.ClearExportCache
  L10_2 = A2_2
  L9_2(L10_2)
  L9_2 = PropertyDb
  L9_2 = L9_2.UpdatePermissions
  L10_2 = A2_2
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L9_2 = A1_2
  L10_2 = {}
  L10_2.identifier = L7_2
  L11_2 = Utils
  L11_2 = L11_2.GetJobLabel
  L12_2 = A3_2
  L11_2 = L11_2(L12_2)
  L10_2.name = L11_2
  L10_2.grade = A4_2
  L9_2(L10_2)
  L9_2 = Notify
  L10_2 = A0_2
  L11_2 = _U
  L12_2 = "job_permission_added"
  L11_2 = L11_2(L12_2)
  L12_2 = "success"
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Webhook
  L10_2 = _U
  L11_2 = "webhook_action"
  L12_2 = Utils
  L12_2 = L12_2.GetIdentifiers
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L13_2 = "Add Job Permission"
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = {}
  L15_2.identifier = L7_2
  L15_2.grade = A4_2
  L16_2 = {}
  L16_2.indent = true
  L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:addStoragePermission"
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = type
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if "number" == L6_2 then
    L6_2 = Main
    L6_2 = L6_2.GetProperty
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_16
    end
  end
  L6_2 = A1_2
  L7_2 = nil
  L6_2(L7_2)
  do return end
  ::lbl_16::
  if "house" ~= A3_2 and "yard" ~= A3_2 and "garage" ~= A3_2 then
    L6_2 = A1_2
    L7_2 = nil
    L6_2(L7_2)
    return
  end
  L6_2 = GetPlayerFromId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetPlayerFromId
  L8_2 = A5_2
  L7_2 = L7_2(L8_2)
  L8_2 = Main
  L8_2 = L8_2.properties
  L8_2 = L8_2[A2_2]
  L8_2 = L8_2.furniture
  L8_2 = L8_2[A3_2]
  L9_2 = Main
  L9_2 = L9_2.GetFurnitureIndexById
  L10_2 = L8_2
  L11_2 = A4_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L10_2 = A1_2
    L11_2 = nil
    L10_2(L11_2)
    return
  end
  L10_2 = L8_2[L9_2]
  L11_2 = L10_2.permissions
  if not L11_2 then
    L11_2 = {}
  end
  L12_2 = Permissions
  L12_2 = L12_2.HasPermission
  L13_2 = L6_2
  L14_2 = A2_2
  L15_2 = "managePermissions"
  L16_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  if not L12_2 then
    L12_2 = A1_2
    L13_2 = nil
    L12_2(L13_2)
    L12_2 = Permissions
    L12_2 = L12_2.DenyCheater
    L13_2 = A0_2
    L14_2 = L6_2
    L15_2 = "addStoragePermission"
    L12_2(L13_2, L14_2, L15_2)
    return
  end
  if not L7_2 then
    L12_2 = A1_2
    L13_2 = nil
    L12_2(L13_2)
    L12_2 = Notify
    L13_2 = A0_2
    L14_2 = _U
    L15_2 = "player_not_found"
    L14_2 = L14_2(L15_2)
    L15_2 = "error"
    L12_2(L13_2, L14_2, L15_2)
    return
  end
  if A5_2 == A0_2 then
    L12_2 = A1_2
    L13_2 = nil
    L12_2(L13_2)
    L12_2 = Notify
    L13_2 = A0_2
    L14_2 = _U
    L15_2 = "cannot_add_self"
    L14_2 = L14_2(L15_2)
    L15_2 = "error"
    L12_2(L13_2, L14_2, L15_2)
    return
  end
  L12_2 = Config
  L12_2 = L12_2.MaxPermissions
  if L12_2 then
    L12_2 = L5_1
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = Config
    L13_2 = L13_2.MaxPermissions
    if L12_2 >= L13_2 then
      L13_2 = A1_2
      L14_2 = nil
      L13_2(L14_2)
      L13_2 = Notify
      L14_2 = A0_2
      L15_2 = _U
      L16_2 = "max_permissions_reached"
      L15_2 = L15_2(L16_2)
      L16_2 = "error"
      L13_2(L14_2, L15_2, L16_2)
      return
    end
  end
  L12_2 = GetIdentifier
  L13_2 = L7_2
  L12_2 = L12_2(L13_2)
  L13_2 = L11_2[L12_2]
  if L13_2 then
    L13_2 = A1_2
    L14_2 = nil
    L13_2(L14_2)
    L13_2 = Notify
    L14_2 = A0_2
    L15_2 = _U
    L16_2 = "player_already_has_permission"
    L15_2 = L15_2(L16_2)
    L16_2 = "error"
    L13_2(L14_2, L15_2, L16_2)
    return
  end
  L13_2 = {}
  L13_2.open = false
  L13_2.changeCode = false
  L13_2.lock = false
  L13_2.managePermissions = false
  L11_2[L12_2] = L13_2
  L10_2.permissions = L11_2
  L13_2 = Main
  L13_2 = L13_2.SaveAccessPointRow
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = L10_2
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = FurnitureDb
  L13_2 = L13_2.UpdateStoragePermissions
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = L10_2.id
  L17_2 = L10_2.permissions
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = A1_2
  L14_2 = {}
  L15_2 = GetCharName
  L16_2 = L12_2
  L15_2 = L15_2(L16_2)
  L14_2.name = L15_2
  L14_2.identifier = L12_2
  L13_2(L14_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCallback
L13_1 = "tk_housing:addJobStoragePermission"
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L7_2 = type
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = Main
    L7_2 = L7_2.GetProperty
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_16
    end
  end
  L7_2 = A1_2
  L8_2 = nil
  L7_2(L8_2)
  do return end
  ::lbl_16::
  if "house" ~= A3_2 and "yard" ~= A3_2 and "garage" ~= A3_2 then
    L7_2 = A1_2
    L8_2 = nil
    L7_2(L8_2)
    return
  end
  L7_2 = GetPlayerFromId
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = Main
  L8_2 = L8_2.properties
  L8_2 = L8_2[A2_2]
  L8_2 = L8_2.furniture
  L8_2 = L8_2[A3_2]
  L9_2 = Main
  L9_2 = L9_2.GetFurnitureIndexById
  L10_2 = L8_2
  L11_2 = A4_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L10_2 = A1_2
    L11_2 = nil
    L10_2(L11_2)
    return
  end
  L10_2 = L8_2[L9_2]
  L11_2 = L10_2.permissions
  if not L11_2 then
    L11_2 = {}
  end
  L12_2 = Permissions
  L12_2 = L12_2.HasPermission
  L13_2 = L7_2
  L14_2 = A2_2
  L15_2 = "managePermissions"
  L16_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  if not L12_2 then
    L12_2 = A1_2
    L13_2 = nil
    L12_2(L13_2)
    L12_2 = Permissions
    L12_2 = L12_2.DenyCheater
    L13_2 = A0_2
    L14_2 = L7_2
    L15_2 = "addJobStoragePermission"
    L12_2(L13_2, L14_2, L15_2)
    return
  end
  L12_2 = L3_1
  L13_2 = A5_2
  L14_2 = A6_2
  L12_2, L13_2 = L12_2(L13_2, L14_2)
  A6_2 = L13_2
  A5_2 = L12_2
  if not A5_2 then
    L12_2 = A1_2
    L13_2 = nil
    L12_2(L13_2)
    return
  end
  L12_2 = Config
  L12_2 = L12_2.MaxPermissions
  if L12_2 then
    L12_2 = L5_1
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = Config
    L13_2 = L13_2.MaxPermissions
    if L12_2 >= L13_2 then
      L13_2 = A1_2
      L14_2 = nil
      L13_2(L14_2)
      L13_2 = Notify
      L14_2 = A0_2
      L15_2 = _U
      L16_2 = "max_permissions_reached"
      L15_2 = L15_2(L16_2)
      L16_2 = "error"
      L13_2(L14_2, L15_2, L16_2)
      return
    end
  end
  L12_2 = Utils
  L12_2 = L12_2.EntityOwner
  L13_2 = "job"
  L14_2 = A5_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = ":"
  L14_2 = A6_2
  L12_2 = L12_2 .. L13_2 .. L14_2
  L13_2 = Utils
  L13_2 = L13_2.EntityOwner
  L14_2 = "job"
  L15_2 = A5_2
  L13_2 = L13_2(L14_2, L15_2)
  L13_2 = L11_2[L13_2]
  L14_2 = L11_2[L12_2]
  if not L14_2 then
    if not L13_2 then
      goto lbl_140
    end
    L14_2 = L13_2.grade
    if not L14_2 then
      L14_2 = 0
    end
    if L14_2 ~= A6_2 then
      goto lbl_140
    end
  end
  L14_2 = A1_2
  L15_2 = nil
  L14_2(L15_2)
  L14_2 = Notify
  L15_2 = A0_2
  L16_2 = _U
  L17_2 = "job_already_has_permission"
  L16_2 = L16_2(L17_2)
  L17_2 = "error"
  L14_2(L15_2, L16_2, L17_2)
  do return end
  ::lbl_140::
  L14_2 = {}
  L14_2.open = false
  L14_2.changeCode = false
  L14_2.lock = false
  L14_2.managePermissions = false
  L14_2.grade = A6_2
  L11_2[L12_2] = L14_2
  L10_2.permissions = L11_2
  L14_2 = Main
  L14_2 = L14_2.SaveAccessPointRow
  L15_2 = A2_2
  L16_2 = A3_2
  L17_2 = L10_2
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = FurnitureDb
  L14_2 = L14_2.UpdateStoragePermissions
  L15_2 = A2_2
  L16_2 = A3_2
  L17_2 = L10_2.id
  L18_2 = L10_2.permissions
  L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2 = A1_2
  L15_2 = {}
  L15_2.identifier = L12_2
  L16_2 = Utils
  L16_2 = L16_2.GetJobLabel
  L17_2 = A5_2
  L16_2 = L16_2(L17_2)
  L15_2.name = L16_2
  L15_2.grade = A6_2
  L14_2(L15_2)
  L14_2 = Notify
  L15_2 = A0_2
  L16_2 = _U
  L17_2 = "job_permission_added"
  L16_2 = L16_2(L17_2)
  L17_2 = "success"
  L14_2(L15_2, L16_2, L17_2)
end
L12_1(L13_1, L14_1)
