local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
Styling = L0_1
L0_1 = Styling
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.data
    if L9_2 then
      L9_2 = L9_2.attach
    end
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = L9_2.parent
      if L10_2 == A1_2 then
        L10_2 = #L2_2
        L10_2 = L10_2 + 1
        L11_2 = L8_2.id
        L2_2[L10_2] = L11_2
      end
    end
  end
  return L2_2
end
L0_1.GetChildren = L1_1
L0_1 = Styling
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = Config
  L3_2 = L3_2.Furnishing
  L3_2 = L3_2.styling
  if L3_2 then
    L3_2 = L3_2.stacking
  end
  if L3_2 then
    L3_2 = type
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_16
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_16::
  L3_2 = type
  L4_2 = A2_2.parent
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = A2_2.parent
    if L3_2 ~= A1_2 then
      goto lbl_26
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_26::
  L3_2 = Main
  L3_2 = L3_2.GetFurnitureIndexById
  L4_2 = A0_2
  L5_2 = A2_2.parent
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2[L3_2]
    L4_2 = L4_2.data
    if L4_2 then
      L4_2 = L4_2.attach
    end
    if not L4_2 then
      goto lbl_42
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_42::
  L4_2 = Styling
  L4_2 = L4_2.GetChildren
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = #L4_2
  if L4_2 > 0 then
    L4_2 = false
    return L4_2
  end
  L4_2 = A2_2.offset
  L5_2 = A2_2.rot
  L6_2 = type
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if "table" == L6_2 then
    L6_2 = type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      goto lbl_66
    end
  end
  L6_2 = false
  do return L6_2 end
  ::lbl_66::
  L6_2 = ipairs
  L7_2 = {}
  L8_2 = "x"
  L9_2 = "y"
  L10_2 = "z"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = type
    L13_2 = L4_2[L11_2]
    L12_2 = L12_2(L13_2)
    if "number" == L12_2 then
      L12_2 = L4_2[L11_2]
      if L12_2 >= -5.0 then
        L12_2 = L4_2[L11_2]
        if L12_2 <= 5.0 then
          goto lbl_88
        end
      end
    end
    L12_2 = false
    do return L12_2 end
    ::lbl_88::
    L12_2 = type
    L13_2 = L5_2[L11_2]
    L12_2 = L12_2(L13_2)
    if "number" == L12_2 then
      L12_2 = L5_2[L11_2]
      L13_2 = -360.0
      if L12_2 >= L13_2 then
        L12_2 = L5_2[L11_2]
        L13_2 = 360.0
        if L12_2 <= L13_2 then
          goto lbl_103
        end
      end
    end
    L12_2 = false
    do return L12_2 end
    ::lbl_103::
  end
  L6_2 = {}
  L7_2 = A2_2.parent
  L6_2.parent = L7_2
  L7_2 = {}
  L8_2 = L4_2.x
  L8_2 = L8_2 + 0.0
  L7_2.x = L8_2
  L8_2 = L4_2.y
  L8_2 = L8_2 + 0.0
  L7_2.y = L8_2
  L8_2 = L4_2.z
  L8_2 = L8_2 + 0.0
  L7_2.z = L8_2
  L6_2.offset = L7_2
  L7_2 = {}
  L8_2 = L5_2.x
  L8_2 = L8_2 + 0.0
  L7_2.x = L8_2
  L8_2 = L5_2.y
  L8_2 = L8_2 + 0.0
  L7_2.y = L8_2
  L8_2 = L5_2.z
  L8_2 = L8_2 + 0.0
  L7_2.z = L8_2
  L6_2.rot = L7_2
  return L6_2
end
L0_1.ValidAttach = L1_1
L0_1 = Styling
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = Styling
  L7_2 = L7_2.GetChildren
  L8_2 = A2_2
  L9_2 = A3_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2)
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = {}
    L12_2.attach = false
    L5_2[L11_2] = L12_2
  end
  L6_2 = next
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = Furniture
    L6_2 = L6_2.SetDataBatch
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = L5_2
    L10_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1.ParentRemoved = L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = OwnedFurniture
  L4_2 = L4_2.IsEnabled
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = OwnedFurniture
    L4_2 = L4_2.Take
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = Utils
    L7_2 = L7_2.NormalizeModelHash
    L8_2 = joaat
    L9_2 = A3_2.model
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if not L4_2 then
      L4_2 = Notify
      L5_2 = A0_2
      L6_2 = _U
      L7_2 = "variant_not_owned"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = false
      return L4_2
    end
    L4_2 = OwnedFurniture
    L4_2 = L4_2.Add
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = Utils
    L7_2 = L7_2.NormalizeModelHash
    L8_2 = joaat
    L9_2 = A2_2.model
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SyncOwnedFurniture
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L4_2 = true
    return L4_2
  end
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A3_2.price
  L6_2 = A2_2.price
  L5_2 = L5_2 - L6_2
  if L5_2 > 0 then
    L6_2 = GetAccountMoney
    L7_2 = L4_2
    L8_2 = "money"
    L6_2 = L6_2(L7_2, L8_2)
    if L5_2 <= L6_2 then
      L6_2 = RemoveAccountMoney
      L7_2 = L4_2
      L8_2 = "money"
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = GetAccountMoney
      L7_2 = L4_2
      L8_2 = "bank"
      L6_2 = L6_2(L7_2, L8_2)
      if L5_2 <= L6_2 then
        L6_2 = RemoveAccountMoney
        L7_2 = L4_2
        L8_2 = "bank"
        L9_2 = L5_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = Notify
        L7_2 = A0_2
        L8_2 = _U
        L9_2 = "not_enough_money"
        L8_2 = L8_2(L9_2)
        L9_2 = "error"
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = false
        return L6_2
      end
    end
  elseif L5_2 < 0 then
    L6_2 = -L5_2
    L7_2 = Config
    L7_2 = L7_2.Furnishing
    L7_2 = L7_2.sellPercentage
    L7_2 = L7_2 / 100
    L6_2 = L6_2 * L7_2
    if L6_2 > 0 then
      L7_2 = AddAccountMoney
      L8_2 = L4_2
      L9_2 = "bank"
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L6_2 = true
  return L6_2
end
L1_1 = Styling
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.furniture
  L5_2 = L5_2[A1_2]
  L6_2 = Main
  L6_2 = L6_2.GetFurnitureIndexById
  L7_2 = L5_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L5_2[L6_2]
  L7_2 = Utils
  L7_2 = L7_2.GetCatalogEntryByModel
  L8_2 = L6_2.model
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = BuildParts
    L7_2 = L7_2.Entry
    L8_2 = L6_2.model
    L7_2 = L7_2(L8_2)
  end
  L8_2 = Utils
  L8_2 = L8_2.GetCatalogEntryByModel
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = BuildParts
    L8_2 = L8_2.Entry
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
  end
  L9_2 = BuildParts
  L9_2 = L9_2.IsFree
  L10_2 = A3_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = L0_1
    L10_2 = A4_2
    L11_2 = A0_2
    L12_2 = L7_2
    L13_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if not L9_2 then
      L9_2 = false
      return L9_2
    end
  end
  L9_2 = Utils
  L9_2 = L9_2.NormalizeModelHash
  L10_2 = joaat
  L11_2 = L8_2.model
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2.model = L9_2
  if A0_2 > 0 then
    L9_2 = FurnitureDb
    L9_2 = L9_2.Save
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = L6_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L9_2 = Utils
  L9_2 = L9_2.Debug
  L10_2 = "swap furniture"
  L11_2 = A4_2
  L12_2 = A0_2
  L13_2 = A2_2
  L14_2 = L7_2.model
  L15_2 = L8_2.model
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = Furniture
  L9_2 = L9_2.BroadcastChange
  L10_2 = A0_2
  L11_2 = {}
  L11_2.op = "upsert"
  L11_2.furnitureType = A1_2
  L12_2 = {}
  L13_2 = L6_2
  L12_2[1] = L13_2
  L11_2.items = L12_2
  L12_2 = A4_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = true
  return L9_2
end
L1_1.Swap = L2_1
L1_1 = RegisterNetEvent
L2_1 = "tk_housing:swapFurniture"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.Furnishing
  L5_2 = L5_2.styling
  if L5_2 then
    L5_2 = L5_2.variants
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
      goto lbl_23
    end
  end
  do return end
  ::lbl_23::
  L5_2 = FurnitureDb
  L5_2 = L5_2.IsValidType
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      L5_2 = type
      L6_2 = A3_2
      L5_2 = L5_2(L6_2)
      if "string" == L5_2 then
        goto lbl_40
      end
    end
  end
  do return end
  ::lbl_40::
  L5_2 = Furniture
  L5_2 = L5_2.CanEditField
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = "furnish"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.Debug
    L6_2 = "swap furniture stopped: missing permission"
    L7_2 = L4_2
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Furniture
  L5_2 = L5_2.AllowDataChange
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = Main
  L5_2 = L5_2.LoadPropertyData
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.furniture
  L5_2 = L5_2[A1_2]
  L6_2 = Main
  L6_2 = L6_2.GetFurnitureIndexById
  L7_2 = L5_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2 or L7_2
  if L6_2 then
    L7_2 = L5_2[L6_2]
  end
  if L7_2 then
    L8_2 = L7_2.isAccessPoint
    if not L8_2 then
      goto lbl_86
    end
  end
  do return end
  ::lbl_86::
  L8_2 = Utils
  L8_2 = L8_2.DoModelsMatch
  L9_2 = L7_2.model
  L10_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    return
  end
  L8_2 = BuildParts
  L8_2 = L8_2.Get
  L9_2 = L7_2.model
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = BuildParts
    L8_2 = L8_2.IsMaterialSibling
    L9_2 = L7_2.model
    L10_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.Debug
      L9_2 = "swap furniture stopped: not a material of this piece"
      L10_2 = L4_2
      L11_2 = L7_2.model
      L12_2 = A3_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      return
    end
  else
    L8_2 = Utils
    L8_2 = L8_2.GetCatalogEntryByModel
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.GetModelFamily
      L9_2 = A3_2
      L8_2 = L8_2(L9_2)
      L9_2 = Utils
      L9_2 = L9_2.GetModelFamily
      L10_2 = L7_2.model
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        goto lbl_140
      end
    end
    L8_2 = Utils
    L8_2 = L8_2.Debug
    L9_2 = "swap furniture stopped: not a sibling"
    L10_2 = L4_2
    L11_2 = L7_2.model
    L12_2 = A3_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
    return
  end
  ::lbl_140::
  L8_2 = Utils
  L8_2 = L8_2.IsStorage
  L9_2 = L7_2.model
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = Utils
    L8_2 = L8_2.IsStorage
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      goto lbl_153
    end
  end
  do return end
  ::lbl_153::
  L8_2 = Styling
  L8_2 = L8_2.Swap
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  if L8_2 then
    L8_2 = Notify
    L9_2 = L4_2
    L10_2 = _U
    L11_2 = "variant_swapped"
    L10_2 = L10_2(L11_2)
    L11_2 = "success"
    L8_2(L9_2, L10_2, L11_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCallback
L2_1 = "tk_housing:getVariantsOwned"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
      L5_2 = FurnitureDb
      L5_2 = L5_2.IsValidType
      L6_2 = A3_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_23
      end
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  do return L5_2(L6_2) end
  ::lbl_23::
  L5_2 = type
  L6_2 = A4_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = OwnedFurniture
    L5_2 = L5_2.IsEnabled
    L5_2 = L5_2()
    if L5_2 then
      goto lbl_38
    end
  end
  L5_2 = A1_2
  L6_2 = {}
  do return L5_2(L6_2) end
  ::lbl_38::
  L5_2 = Furniture
  L5_2 = L5_2.CanEditField
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = "furnish"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    return L5_2(L6_2)
  end
  L5_2 = Main
  L5_2 = L5_2.LoadPropertyData
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.furniture
  L5_2 = L5_2[A3_2]
  L6_2 = Main
  L6_2 = L6_2.GetFurnitureIndexById
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2 or L7_2
  if L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.GetModelFamily
    L8_2 = L5_2[L6_2]
    L8_2 = L8_2.model
    L7_2 = L7_2(L8_2)
  end
  if not L7_2 then
    L8_2 = A1_2
    L9_2 = {}
    return L8_2(L9_2)
  end
  L8_2 = {}
  L9_2 = ipairs
  L10_2 = OwnedFurniture
  L10_2 = L10_2.Get
  L11_2 = A0_2
  L12_2 = A2_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2)
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.name
    if L15_2 then
      L15_2 = Utils
      L15_2 = L15_2.GetModelFamily
      L16_2 = L14_2.name
      L15_2 = L15_2(L16_2)
      if L15_2 == L7_2 then
        L15_2 = L14_2.name
        L16_2 = L14_2.name
        L16_2 = L8_2[L16_2]
        if not L16_2 then
          L16_2 = 0
        end
        L17_2 = L14_2.quantity
        L16_2 = L16_2 + L17_2
        L8_2[L15_2] = L16_2
      end
    end
  end
  L9_2 = A1_2
  L10_2 = L8_2
  L9_2(L10_2)
end
L1_1(L2_1, L3_1)
