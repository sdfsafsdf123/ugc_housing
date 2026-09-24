local L0_1, L1_1, L2_1, L3_1
L0_1 = Furniture
L0_1 = L0_1.RegisterDataField
L1_1 = "dancer"
L2_1 = {}
L2_1.permission = "furnish"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Config
  L2_2 = L2_2.Pole
  if L2_2 then
    L2_2 = L2_2.enable
  end
  L2_2 = Utils
  L2_2 = L2_2.IsPole
  L3_2 = A1_2.model
  L2_2 = true == L2_2 and false == A0_2 and L2_2
  return L2_2
end
L2_1.validate = L3_1
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "tk_housing:hireDancer"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Pole
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
  L4_2 = FurnitureDb
  L4_2 = L4_2.IsValidType
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "string" == L4_2 then
      goto lbl_34
    end
  end
  do return end
  ::lbl_34::
  L4_2 = Furniture
  L4_2 = L4_2.AllowDataChange
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = Main
  L4_2 = L4_2.LoadPropertyData
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Main
  L4_2 = L4_2.GetProperty
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.furniture
  L4_2 = L4_2[A1_2]
  L5_2 = Main
  L5_2 = L5_2.GetFurnitureIndexById
  L6_2 = L4_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = L4_2[L5_2]
  end
  if L6_2 then
    L7_2 = Utils
    L7_2 = L7_2.IsPole
    L8_2 = L6_2.model
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L6_2.data
      if L7_2 then
        L7_2 = L7_2.dancer
      end
      if not L7_2 then
        goto lbl_74
      end
    end
  end
  do return end
  ::lbl_74::
  L7_2 = Furniture
  L7_2 = L7_2.CanEditField
  L8_2 = L3_2
  L9_2 = A0_2
  L10_2 = "furnish"
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    L7_2 = Utils
    L7_2 = L7_2.Debug
    L8_2 = "hire dancer stopped: missing permission"
    L9_2 = L3_2
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    return
  end
  L7_2 = Config
  L7_2 = L7_2.Pole
  L7_2 = L7_2.models
  L8_2 = type
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if "table" == L8_2 then
    L8_2 = #L7_2
    if 0 ~= L8_2 then
      goto lbl_105
    end
  end
  L8_2 = Utils
  L8_2 = L8_2.Warn
  L9_2 = "No dancer models to pick from, add a ped model to Config.Pole.models in config.lua"
  L8_2(L9_2)
  do return end
  ::lbl_105::
  L8_2 = GetPlayerFromId
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = Config
  L9_2 = L9_2.Pole
  L9_2 = L9_2.hireCost
  if not L9_2 then
    L9_2 = 0
  end
  if L9_2 > 0 then
    L10_2 = GetAccountMoney
    L11_2 = L8_2
    L12_2 = "money"
    L10_2 = L10_2(L11_2, L12_2)
    if L9_2 <= L10_2 then
      L10_2 = RemoveAccountMoney
      L11_2 = L8_2
      L12_2 = "money"
      L13_2 = L9_2
      L10_2(L11_2, L12_2, L13_2)
    else
      L10_2 = GetAccountMoney
      L11_2 = L8_2
      L12_2 = "bank"
      L10_2 = L10_2(L11_2, L12_2)
      if L9_2 <= L10_2 then
        L10_2 = RemoveAccountMoney
        L11_2 = L8_2
        L12_2 = "bank"
        L13_2 = L9_2
        L10_2(L11_2, L12_2, L13_2)
      else
        L10_2 = Notify
        L11_2 = L3_2
        L12_2 = _U
        L13_2 = "not_enough_money"
        L12_2 = L12_2(L13_2)
        L13_2 = "error"
        L10_2(L11_2, L12_2, L13_2)
        return
      end
    end
  end
  L10_2 = Utils
  L10_2 = L10_2.Debug
  L11_2 = "hire dancer"
  L12_2 = L3_2
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = L9_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = Furniture
  L10_2 = L10_2.SetData
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = {}
  L15_2 = {}
  L16_2 = math
  L16_2 = L16_2.random
  L17_2 = #L7_2
  L16_2 = L16_2(L17_2)
  L16_2 = L7_2[L16_2]
  L15_2.model = L16_2
  L14_2.dancer = L15_2
  L15_2 = L3_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = Notify
  L11_2 = L3_2
  L12_2 = _U
  L13_2 = "dancer_hired"
  L12_2 = L12_2(L13_2)
  L13_2 = "success"
  L10_2(L11_2, L12_2, L13_2)
end
L0_1(L1_1, L2_1)
