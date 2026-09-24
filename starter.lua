local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
Starter = L0_1
L0_1 = false
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Config
  L1_2 = L1_2.StarterHousing
  L2_2 = L1_2.building
  L3_2 = L1_2.grantMode
  L4_2 = L2_2.entranceCoords
  L5_2 = {}
  L5_2.apartmentId = A0_2
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = vec4
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = L4_2.w
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2.coords = L9_2
  L8_2.exitIndex = 1
  L9_2 = _U
  L10_2 = "door_front_door"
  L9_2 = L9_2(L10_2)
  L8_2.label = L9_2
  L7_2[1] = L8_2
  L6_2.house = L7_2
  L7_2 = {}
  L6_2.garage = L7_2
  L5_2.doors = L6_2
  L6_2 = L2_2.houseInterior
  L5_2.houseInterior = L6_2
  L6_2 = L2_2.garageInterior
  L5_2.garageInterior = L6_2
  L6_2 = {}
  L5_2.interior = L6_2
  L6_2 = {}
  L5_2.yard = L6_2
  if "price" == L3_2 or "mortgage" == L3_2 then
    L6_2 = L2_2.price
    if L6_2 then
      goto lbl_51
    end
  end
  L6_2 = nil
  ::lbl_51::
  L5_2.price = L6_2
  if "rent" == L3_2 then
    L6_2 = L2_2.rent
    if L6_2 then
      goto lbl_58
    end
  end
  L6_2 = nil
  ::lbl_58::
  L5_2.rent = L6_2
  L6_2 = L2_2.name
  L5_2.name = L6_2
  L5_2.propertyType = "apartment"
  L6_2 = L2_2.address
  L5_2.address = L6_2
  L6_2 = L2_2.image
  L5_2.image = L6_2
  if "mortgage" == L3_2 then
    L6_2 = NormalizeMortgageTerms
    L7_2 = L1_2.mortgageTerms
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_74
    end
  end
  L6_2 = nil
  ::lbl_74::
  L5_2.mortgageTerms = L6_2
  L6_2 = {}
  L7_2 = {}
  L6_2.house = L7_2
  L7_2 = {}
  L6_2.yard = L7_2
  L7_2 = {}
  L6_2.garage = L7_2
  L5_2.furniture = L6_2
  L6_2 = {}
  L5_2.vehicles = L6_2
  L6_2 = {}
  L5_2.permissions = L6_2
  return L5_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetResourceKvpInt
  L2_2 = "tk_housing-starterApartment"
  L1_2 = L1_2(L2_2)
  if L1_2 > 0 then
    L2_2 = pairs
    L3_2 = Main
    L3_2 = L3_2.GetProperties
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.apartmentId
      if L8_2 == L1_2 then
        return L1_2
      end
    end
  end
  L2_2 = Properties
  L2_2 = L2_2.GetNextApartmentId
  L2_2 = L2_2()
  L1_2 = L2_2
  L2_2 = Properties
  L2_2 = L2_2.CreateProperties
  L3_2 = A0_2
  L4_2 = L2_1
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetResourceKvpInt
  L3_2 = "tk_housing-starterApartment"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return L1_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetProperties
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.apartmentId
    if L9_2 == A1_2 then
      L9_2 = L8_2.owner
      if L9_2 then
        L9_2 = L8_2.owner
      end
      if "" == L9_2 and (not L2_2 or L2_2 > L7_2) then
        L2_2 = L7_2
      end
    end
  end
  if L2_2 then
    return L2_2
  end
  L3_2 = Properties
  L3_2 = L3_2.CreateProperties
  L4_2 = A0_2
  L5_2 = L2_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = L3_2[1]
  return L3_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = Main
  L4_2 = L4_2.GetProperties
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.apartmentId
    if L9_2 == A0_2 then
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L7_2
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 == A1_2 then
      return L7_2
    end
  end
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = Config
  L3_2 = L3_2.StarterHousing
  L3_2 = L3_2.eligibility
  L4_2 = L3_2.oneTimePerIdentifier
  if L4_2 then
    L4_2 = GetResourceKvpInt
    L5_2 = "tk_housing-starter-"
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2(L5_2)
    if L4_2 > 0 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = L3_2.onlyNewCharacters
  if L4_2 and false == A2_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_2.onlyIfNoProperty
  if L4_2 then
    L4_2 = pairs
    L5_2 = Main
    L5_2 = L5_2.GetProperties
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.owner
      if L10_2 == A1_2 then
        L10_2 = false
        return L10_2
      end
    end
  end
  L4_2 = type
  L5_2 = L3_2.jobs
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = GetJobName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = false
    L6_2 = ipairs
    L7_2 = L3_2.jobs
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      if L11_2 == L4_2 then
        L5_2 = true
        break
      end
    end
    if not L5_2 then
      L6_2 = false
      return L6_2
    end
  end
  L4_2 = type
  L5_2 = L3_2.groups
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = IsInGroup
    L5_2 = A0_2
    L6_2 = L3_2.groups
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = true
  return L4_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = GetIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L6_1
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = Properties
  L5_2 = L5_2.SaveConfigProperty
  L6_2 = L4_1
  L7_2 = A0_2
  L8_2 = L4_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L5_2 < 0 then
    L6_2 = false
    return L6_2
  end
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.StarterHousing
  L7_2 = L7_2.grantMode
  if "rent" == L7_2 then
    L8_2 = type
    L9_2 = L6_2.rent
    L8_2 = L8_2(L9_2)
    if "number" == L8_2 then
      L8_2 = L6_2.rent
      if L8_2 > 0 then
        L8_2 = Properties
        L8_2 = L8_2.SetHouseOwned
        L9_2 = A0_2
        L10_2 = L5_2
        L11_2 = true
        L12_2 = L6_2.rent
        L13_2 = nil
        L14_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
  else
    if "price" == L7_2 then
      L8_2 = type
      L9_2 = L6_2.price
      L8_2 = L8_2(L9_2)
      if "number" == L8_2 then
        L8_2 = L6_2.price
        if L8_2 > 0 then
          L8_2 = L6_2.price
          L9_2 = false
          L10_2 = Config
          L10_2 = L10_2.StarterHousing
          L10_2 = L10_2.chargePlayer
          if L10_2 then
            L10_2 = GetAccountMoney
            L11_2 = L2_2
            L12_2 = "money"
            L10_2 = L10_2(L11_2, L12_2)
            if L8_2 <= L10_2 then
              L10_2 = "money"
              if L10_2 then
                goto lbl_97
              end
            end
            L10_2 = GetAccountMoney
            L11_2 = L2_2
            L12_2 = "bank"
            L10_2 = L10_2(L11_2, L12_2)
            if L8_2 <= L10_2 then
              L10_2 = "bank"
              if L10_2 then
                goto lbl_97
              end
            end
            L10_2 = nil
            ::lbl_97::
            L11_2 = PurchaseProperty
            L12_2 = A0_2
            L13_2 = L8_2
            L14_2 = L5_2
            L15_2 = L6_2
            L16_2 = L10_2
            L17_2 = "price"
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L9_2 = nil ~= L10_2 and L9_2
          end
          L10_2 = Properties
          L10_2 = L10_2.SetHouseOwned
          L11_2 = A0_2
          L12_2 = L5_2
          L13_2 = false
          L14_2 = L8_2 or L14_2
          if not L9_2 or not L8_2 then
            L14_2 = 0
          end
          L15_2 = nil
          L16_2 = true
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
    else
      if "mortgage" == L7_2 then
        L8_2 = type
        L9_2 = L6_2.price
        L8_2 = L8_2(L9_2)
        if "number" == L8_2 then
          L8_2 = L6_2.price
          if L8_2 > 0 then
            L8_2 = L6_2.price
            L9_2 = Mortgage
            L9_2 = L9_2.ResolveTerms
            L10_2 = L6_2
            L9_2 = L9_2(L10_2)
            L10_2 = Mortgage
            L10_2 = L10_2.Build
            L11_2 = L8_2
            L12_2 = L9_2
            L10_2 = L10_2(L11_2, L12_2)
            if L10_2 then
              L11_2 = L10_2.downPayment
              if L11_2 > 0 then
                L11_2 = GetAccountMoney
                L12_2 = L2_2
                L13_2 = "bank"
                L11_2 = L11_2(L12_2, L13_2)
                L12_2 = L10_2.downPayment
                if L11_2 >= L12_2 then
                  L11_2 = RemoveAccountMoney
                  L12_2 = L2_2
                  L13_2 = "bank"
                  L14_2 = L10_2.downPayment
                  L11_2(L12_2, L13_2, L14_2)
                else
                  L11_2 = Mortgage
                  L11_2 = L11_2.Build
                  L12_2 = L8_2
                  L13_2 = {}
                  L14_2 = L9_2.term
                  L13_2.term = L14_2
                  L13_2.downPaymentPercent = 0
                  L14_2 = L9_2.interestRate
                  L13_2.interestRate = L14_2
                  L14_2 = L9_2.interval
                  L13_2.interval = L14_2
                  L11_2 = L11_2(L12_2, L13_2)
                  L10_2 = L11_2
                end
              end
            end
            if L10_2 then
              L11_2 = Properties
              L11_2 = L11_2.SetHouseOwned
              L12_2 = A0_2
              L13_2 = L5_2
              L14_2 = false
              L15_2 = L8_2
              L16_2 = L10_2
              L17_2 = true
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            else
              L11_2 = Properties
              L11_2 = L11_2.SetHouseOwned
              L12_2 = A0_2
              L13_2 = L5_2
              L14_2 = false
              L15_2 = 0
              L16_2 = nil
              L17_2 = true
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            end
        end
      end
      else
        L8_2 = Properties
        L8_2 = L8_2.SetHouseOwned
        L9_2 = A0_2
        L10_2 = L5_2
        L11_2 = false
        L12_2 = 0
        L13_2 = nil
        L14_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  L8_2 = SetResourceKvpInt
  L9_2 = "tk_housing-starter-"
  L10_2 = L3_2
  L9_2 = L9_2 .. L10_2
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L8_2 = L5_1
  L9_2 = L4_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = Notify
  L10_2 = A0_2
  L11_2 = _U
  L12_2 = "starter_apartment_granted"
  L13_2 = L6_2.address
  if not L13_2 then
    L13_2 = L6_2.name
  end
  L14_2 = L8_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = "success"
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Utils
  L9_2 = L9_2.Debug
  L10_2 = "Granted a starter apartment to player"
  L11_2 = L3_2
  L12_2 = L5_2
  L13_2 = L4_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = true
  return L9_2
end
L8_1 = Starter
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  while true do
    L2_2 = L1_1
    if not L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = true
  L1_1 = L2_2
  L2_2 = pcall
  L3_2 = L7_1
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = false
  L1_1 = L4_2
  if not L2_2 then
    L4_2 = Utils
    L4_2 = L4_2.Warn
    L5_2 = "Granting a starter apartment failed"
    L6_2 = A0_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = true == L3_2
  return L4_2
end
L8_1.Grant = L9_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  while true do
    L2_2 = frameworkLoaded
    if L2_2 then
      L2_2 = Main
      L2_2 = L2_2.ready
      if L2_2 then
        break
      end
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = GetPlayerFromId
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L1_3 = GetIdentifier
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = Properties
    L2_3 = L2_3.SendLostProperties
    L3_3 = A0_2
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = Cooking
    L2_3 = L2_3.SendLostIngredients
    L3_3 = A0_2
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.StarterHousing
  L2_2 = L2_2.enabled
  if not L2_2 then
    return
  end
  L2_2 = Starter
  L2_2 = L2_2.Grant
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
PlayerLoaded = L8_1
L8_1 = Starter
function L9_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Config
  L0_2 = L0_2.StarterHousing
  L0_2 = L0_2.enabled
  if not L0_2 then
    return
  end
  L0_2 = Config
  L0_2 = L0_2.StarterHousing
  L0_2 = L0_2.building
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L1_2 = L0_2.entranceCoords
  end
  L2_2 = Config
  L2_2 = L2_2.HouseInteriors
  L3_2 = L0_2 or L3_2
  if L0_2 then
    L3_2 = L0_2.houseInterior
  end
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = type
    L3_2 = L1_2 or L3_2
    if L1_2 then
      L3_2 = L1_2.x
    end
    L2_2 = L2_2(L3_2)
    if "number" == L2_2 then
      L2_2 = type
      L3_2 = L1_2 or L3_2
      if L1_2 then
        L3_2 = L1_2.y
      end
      L2_2 = L2_2(L3_2)
      if "number" == L2_2 then
        L2_2 = type
        L3_2 = L1_2 or L3_2
        if L1_2 then
          L3_2 = L1_2.z
        end
        L2_2 = L2_2(L3_2)
        if "number" == L2_2 then
          L2_2 = type
          L3_2 = L1_2 or L3_2
          if L1_2 then
            L3_2 = L1_2.w
          end
          L2_2 = L2_2(L3_2)
          if "number" == L2_2 then
            goto lbl_54
          end
        end
      end
    end
  end
  L2_2 = Utils
  L2_2 = L2_2.Warn
  L3_2 = "Config.StarterHousing.building has an invalid houseInterior or entranceCoords, starter housing is disabled"
  L2_2(L3_2)
  do return end
  ::lbl_54::
  L2_2 = Config
  L2_2 = L2_2.StarterHousing
  L2_2 = L2_2.grantMode
  if "mortgage" == L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Mortgage
    L2_2 = L2_2.enabled
    if not L2_2 then
      L2_2 = Utils
      L2_2 = L2_2.Warn
      L3_2 = "Config.StarterHousing.grantMode is set to mortgage but Config.Mortgage is disabled, starter mortgages will never be collected"
      L2_2(L3_2)
    end
  end
  L2_2 = true
  L0_1 = L2_2
  L2_2 = Config
  L2_2 = L2_2.StarterHousing
  L2_2 = L2_2.ensureBuildingOnStart
  if L2_2 then
    L2_2 = L3_1
    L3_2 = nil
    L2_2(L3_2)
  end
end
L8_1.Init = L9_1
