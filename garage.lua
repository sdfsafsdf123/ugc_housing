local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
Garage = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = Properties
  L4_2 = L4_2.IsKeyholder
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = L2_2
  return L4_2(L5_2, L6_2, L7_2)
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetVehicleOwner
  L3_2 = GetVehicleNumberPlateText
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = Config
    L3_2 = L3_2.Garage
    L3_2 = L3_2.canStore
    L3_2 = L3_2.NPCVehicles
    return L3_2
  end
  L3_2 = GetIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = Config
  L3_2 = L3_2.Garage
  L3_2 = L3_2.canStore
  L3_2 = L2_2 == L3_2 or L3_2
  return L3_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.garageInterior
  end
  if not L2_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.GarageInteriors
  L3_2 = L3_2[L2_2]
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.Warn
    L5_2 = "Property references a garageInterior key that is missing from Config.GarageInteriors"
    L6_2 = A0_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L3_2.isCustomShell
  if not L4_2 then
    L4_2 = L3_2.model
    if not L4_2 then
      goto lbl_72
    end
    L4_2 = L3_2.isIpl
    if L4_2 then
      goto lbl_72
    end
  end
  L4_2 = L1_2.doors
  if L4_2 then
    L4_2 = L4_2.garage
    if L4_2 then
      L4_2 = L4_2[1]
      if L4_2 then
        L4_2 = L4_2.coords
      end
    end
  end
  if not L4_2 then
    return
  end
  L5_2 = Config
  L5_2 = L5_2.ShellOffset
  if not L5_2 then
    L5_2 = vec3
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 500.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
  end
  L6_2 = vec3
  L7_2 = L4_2.x
  L8_2 = L5_2.x
  L7_2 = L7_2 + L8_2
  L8_2 = L4_2.y
  L9_2 = L5_2.y
  L8_2 = L8_2 + L9_2
  L9_2 = L4_2.z
  L10_2 = L5_2.z
  L9_2 = L9_2 + L10_2
  do return L6_2(L7_2, L8_2, L9_2) end
  ::lbl_72::
  L4_2 = L3_2.exits
  if L4_2 then
    L4_2 = L4_2[1]
    if L4_2 then
      L4_2 = L4_2.coords
      if L4_2 then
        L4_2 = L4_2.xyz
      end
    end
  end
  return L4_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return L2_2
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + A1_2
  while true do
    L4_2 = DoesEntityExist
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if not (L3_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 50
    L4_2(L5_2)
    L4_2 = NetworkGetEntityFromNetworkId
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  L4_2 = DoesEntityExist
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  return L2_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + A1_2
  while true do
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = DeleteEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Main
  L2_2 = L2_2.GetSpawnedVehicles
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = next
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_17::
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + 300
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2 = NetworkGetEntityFromNetworkId
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    while true do
      L10_2 = DoesEntityExist
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        break
      end
      L10_2 = GetGameTimer
      L10_2 = L10_2()
      if not (L3_2 > L10_2) then
        break
      end
      L10_2 = Wait
      L11_2 = 50
      L10_2(L11_2)
      L10_2 = NetworkGetEntityFromNetworkId
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L9_2 = L10_2
    end
    L10_2 = DoesEntityExist
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      if not L1_2 then
        goto lbl_62
      end
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2 - L1_2
      L10_2 = #L10_2
      if not (L10_2 > 100.0) then
        goto lbl_62
      end
    end
    L10_2 = false
    do return L10_2 end
    ::lbl_62::
  end
  L4_2 = true
  return L4_2
end
L6_1 = Garage
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Main
  L2_2 = L2_2.GetSpawnedVehicles
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2 = #L3_2
    L9_2 = L9_2 + 1
    L3_2[L9_2] = L8_2
  end
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 ~= A1_2 then
      L10_2 = L3_1
      L11_2 = L9_2
      L12_2 = 1000
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L11_2 = L4_1
        L12_2 = L10_2
        L13_2 = 2000
        L11_2(L12_2, L13_2)
      end
    end
    if L9_2 ~= A1_2 then
      L10_2 = DoesEntityExist
      L11_2 = NetworkGetEntityFromNetworkId
      L12_2 = L9_2
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if L10_2 then
        goto lbl_47
      end
    end
    L2_2[L9_2] = nil
    ::lbl_47::
  end
end
L6_1.CleanupGarageVehicles = L7_1
L6_1 = {}
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L2_2.netId = A1_2
  L3_2 = A0_2.props
  L2_2.props = L3_2
  L3_2 = A0_2.fuel
  L2_2.fuel = L3_2
  L3_2 = A0_2.engineHealth
  L2_2.engineHealth = L3_2
  return L2_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L1_2 = L1_2 + 5000
    while true do
      L2_2 = L6_1
      L2_2 = L2_2[A0_2]
      if not L2_2 then
        break
      end
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      if not (L1_2 > L2_2) then
        break
      end
      L2_2 = Wait
      L3_2 = 50
      L2_2(L3_2)
    end
    L2_2 = L6_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = false
      return L2_2
    end
    L2_2 = next
    L3_2 = Main
    L3_2 = L3_2.GetSpawnedVehicles
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = {}
    end
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = L5_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = false
        return L2_2
      end
    end
  end
  L1_2 = {}
  L2_2 = L6_1
  L2_2[A0_2] = L1_2
  L2_2 = next
  L3_2 = Main
  L3_2 = L3_2.GetSpawnedVehicles
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L5_1
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = L6_1
      L2_2[A0_2] = nil
      L2_2 = false
      return L2_2
    end
  end
  return L1_2
end
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if L2_2 == A1_2 then
    L2_2 = L6_1
    L2_2[A0_2] = nil
  end
end
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = type
  L4_2 = A1_2.coords
  if L4_2 then
    L4_2 = L4_2.x
  end
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = type
    L4_2 = A1_2.coords
    if L4_2 then
      L4_2 = L4_2.y
    end
    L3_2 = L3_2(L4_2)
    if "number" == L3_2 then
      L3_2 = type
      L4_2 = A1_2.coords
      if L4_2 then
        L4_2 = L4_2.z
      end
      L3_2 = L3_2(L4_2)
      if "number" == L3_2 then
        L3_2 = A1_2.props
        if L3_2 then
          L3_2 = A1_2.props
          L3_2 = L3_2.model
          if L3_2 then
            L3_2 = vec3
            L4_2 = A1_2.coords
            L4_2 = L4_2.x
            L5_2 = A1_2.coords
            L5_2 = L5_2.y
            L6_2 = A1_2.coords
            L6_2 = L6_2.z
            L3_2 = L3_2(L4_2, L5_2, L6_2)
            L4_2 = GetGameTimer
            L4_2 = L4_2()
            L4_2 = L4_2 + 5000
            L5_2 = L3_2 or L5_2
            if not A2_2 or not L3_2 then
              L5_2 = vec3
              L6_2 = L3_2.x
              L7_2 = L3_2.y
              L8_2 = L3_2.z
              L8_2 = L8_2 - 5.0
              L5_2 = L5_2(L6_2, L7_2, L8_2)
            end
            L6_2 = CreateVehicle
            L7_2 = A1_2.props
            L7_2 = L7_2.model
            L8_2 = L5_2.x
            L9_2 = L5_2.y
            L10_2 = L5_2.z
            L11_2 = A1_2.heading
            L12_2 = true
            L13_2 = true
            L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            if not L6_2 or 0 == L6_2 then
              L7_2 = Utils
              L7_2 = L7_2.Warn
              L8_2 = "Could not create a garage vehicle because its model is missing"
              L9_2 = A1_2.props
              L9_2 = L9_2.model
              L10_2 = A0_2
              L7_2(L8_2, L9_2, L10_2)
              return
            end
            if L6_2 and 0 ~= L6_2 then
              L7_2 = DoesEntityExist
              L8_2 = L6_2
              L7_2 = L7_2(L8_2)
              if L7_2 then
                if not A2_2 then
                  L7_2 = SetEntityRoutingBucket
                  L8_2 = L6_2
                  L9_2 = A0_2
                  L7_2(L8_2, L9_2)
                end
                L7_2 = FreezeEntityPosition
                L8_2 = L6_2
                L9_2 = true
                L7_2(L8_2, L9_2)
              end
            end
            L7_2 = Wait
            L8_2 = 0
            L7_2(L8_2)
            if not A2_2 and L6_2 then
              L7_2 = DoesEntityExist
              L8_2 = L6_2
              L7_2 = L7_2(L8_2)
              if L7_2 then
                L7_2 = SetEntityRoutingBucket
                L8_2 = L6_2
                L9_2 = A0_2
                L7_2(L8_2, L9_2)
              end
            end
            while true do
              L7_2 = DoesEntityExist
              L8_2 = L6_2
              L7_2 = L7_2(L8_2)
              if L7_2 then
                break
              end
              L7_2 = GetGameTimer
              L7_2 = L7_2()
              if not (L4_2 >= L7_2) then
                break
              end
              L7_2 = Wait
              L8_2 = 50
              L7_2(L8_2)
            end
            L7_2 = DoesEntityExist
            L8_2 = L6_2
            L7_2 = L7_2(L8_2)
            if L7_2 then
              if not A2_2 then
                L7_2 = SetEntityRoutingBucket
                L8_2 = L6_2
                L9_2 = A0_2
                L7_2(L8_2, L9_2)
                L7_2 = FreezeEntityPosition
                L8_2 = L6_2
                L9_2 = false
                L7_2(L8_2, L9_2)
                L7_2 = SetEntityCoords
                L8_2 = L6_2
                L9_2 = L3_2.x
                L10_2 = L3_2.y
                L11_2 = L3_2.z
                L12_2 = false
                L13_2 = false
                L14_2 = false
                L15_2 = true
                L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
              end
              L7_2 = FreezeEntityPosition
              L8_2 = L6_2
              L9_2 = true
              L7_2(L8_2, L9_2)
              L7_2 = NetworkGetNetworkIdFromEntity
              L8_2 = L6_2
              L7_2 = L7_2(L8_2)
              L8_2 = NetworkGetEntityFromNetworkId
              L9_2 = L7_2
              L8_2 = L8_2(L9_2)
              L9_2 = GetGameTimer
              L9_2 = L9_2()
              L4_2 = L9_2 + 2000
              while true do
                L9_2 = DoesEntityExist
                L10_2 = L8_2
                L9_2 = L9_2(L10_2)
                if L9_2 then
                  break
                end
                L9_2 = GetGameTimer
                L9_2 = L9_2()
                if not (L4_2 >= L9_2) then
                  break
                end
                L9_2 = Wait
                L10_2 = 50
                L9_2(L10_2)
              end
              L9_2 = DoesEntityExist
              L10_2 = L8_2
              L9_2 = L9_2(L10_2)
              if L9_2 then
                L9_2 = Main
                L9_2 = L9_2.spawnedVehicles
                L9_2 = L9_2[A0_2]
                L10_2 = Utils
                L10_2 = L10_2.NormalizePlate
                L11_2 = A1_2.props
                L11_2 = L11_2.plate
                L10_2 = L10_2(L11_2)
                L9_2[L7_2] = L10_2
                L9_2 = Entity
                L10_2 = L6_2
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2.state
                L10_2 = L9_2
                L9_2 = L9_2.set
                L11_2 = "tk_housing:vehicleData"
                L12_2 = {}
                L13_2 = A1_2.props
                L12_2.props = L13_2
                L13_2 = A1_2.fuel
                L12_2.fuel = L13_2
                L13_2 = A1_2.engineHealth
                L12_2.engineHealth = L13_2
                L13_2 = true
                L9_2(L10_2, L11_2, L12_2, L13_2)
                L9_2 = CreateThread
                function L10_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
                  L0_3 = GetGameTimer
                  L0_3 = L0_3()
                  L0_3 = L0_3 + 2000
                  while true do
                    L1_3 = GetGameTimer
                    L1_3 = L1_3()
                    if not (L0_3 > L1_3) then
                      break
                    end
                    L1_3 = Wait
                    L2_3 = 200
                    L1_3(L2_3)
                    L1_3 = DoesEntityExist
                    L2_3 = L6_2
                    L1_3 = L1_3(L2_3)
                    if not L1_3 then
                      break
                    end
                    L1_3 = Main
                    L1_3 = L1_3.GetSpawnedVehicles
                    L2_3 = A0_2
                    L1_3 = L1_3(L2_3)
                    if L1_3 then
                      L2_3 = L7_2
                      L1_3 = L1_3[L2_3]
                    end
                    if not L1_3 then
                      break
                    end
                    L1_3 = false
                    L2_3 = pairs
                    L3_3 = Main
                    L3_3 = L3_3.GetGaragePlayers
                    L4_3 = A0_2
                    L3_3 = L3_3(L4_3)
                    if not L3_3 then
                      L3_3 = {}
                    end
                    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
                    for L6_3 in L2_3, L3_3, L4_3, L5_3 do
                      L7_3 = GetPlayerPed
                      L8_3 = L6_3
                      L7_3 = L7_3(L8_3)
                      if 0 ~= L7_3 then
                        L8_3 = GetVehiclePedIsIn
                        L9_3 = L7_3
                        L10_3 = false
                        L8_3 = L8_3(L9_3, L10_3)
                        L9_3 = L6_2
                        if L8_3 == L9_3 then
                          L1_3 = true
                          break
                        end
                      end
                    end
                    if L1_3 then
                      break
                    end
                    L2_3 = GetEntityCoords
                    L3_3 = L6_2
                    L2_3 = L2_3(L3_3)
                    L3_3 = L3_2
                    L2_3 = L2_3 - L3_3
                    L2_3 = #L2_3
                    if L2_3 > 1.0 then
                      L2_3 = FreezeEntityPosition
                      L3_3 = L6_2
                      L4_3 = false
                      L2_3(L3_3, L4_3)
                      L2_3 = SetEntityCoords
                      L3_3 = L6_2
                      L4_3 = L3_2.x
                      L5_3 = L3_2.y
                      L6_3 = L3_2.z
                      L7_3 = false
                      L8_3 = false
                      L9_3 = false
                      L10_3 = true
                      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
                      L2_3 = FreezeEntityPosition
                      L3_3 = L6_2
                      L4_3 = true
                      L2_3(L3_3, L4_3)
                    end
                  end
                end
                L9_2(L10_2)
                return L7_2
              else
                L9_2 = L4_1
                L10_2 = L6_2
                L11_2 = 2000
                L9_2(L10_2, L11_2)
              end
            else
              L7_2 = L4_1
              L8_2 = L6_2
              L9_2 = 2000
              L7_2(L8_2, L9_2)
            end
          end
        end
      end
    end
  end
end
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Main
  L3_2 = L3_2.LoadPropertyData
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = type
  L4_2 = Main
  L4_2 = L4_2.GetSpawnedVehicles
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if "table" ~= L3_2 then
    L3_2 = Main
    L3_2 = L3_2.SetSpawnedVehicles
    L4_2 = A1_2
    L5_2 = {}
    L3_2(L4_2, L5_2)
  end
  L3_2 = L8_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = pcall
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = Garage
    L0_3 = L0_3.CleanupGarageVehicles
    L1_3 = A1_2
    L0_3(L1_3)
    L0_3 = Main
    L0_3 = L0_3.GetProperty
    L1_3 = A1_2
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.vehicles
    if L0_3 then
      L1_3 = next
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_18
      end
    end
    do return end
    ::lbl_18::
    L1_3 = {}
    L2_3 = pairs
    L3_3 = L0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L10_1
      L9_3 = A1_2
      L10_3 = L7_3
      L11_3 = A2_2
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      if L8_3 then
        L9_3 = #L1_3
        L9_3 = L9_3 + 1
        L10_3 = L7_1
        L11_3 = L7_3
        L12_3 = L8_3
        L10_3 = L10_3(L11_3, L12_3)
        L1_3[L9_3] = L10_3
      end
    end
    L2_3 = #L1_3
    if L2_3 > 0 then
      L2_3 = Wait
      L3_3 = 50
      L2_3(L3_3)
      L2_3 = SpawnedGarageVehicles
      L3_3 = A0_2
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L2_3 = Utils
    L2_3 = L2_3.Debug
    L3_3 = "Spawned garage vehicles for property"
    L4_3 = A1_2
    L5_3 = #L1_3
    L6_3 = #L0_3
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = pcall
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = next
    L1_3 = Main
    L1_3 = L1_3.GetGaragePlayers
    L2_3 = A1_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = {}
    end
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = Garage
      L0_3 = L0_3.CleanupGarageVehicles
      L1_3 = A1_2
      L0_3(L1_3)
    end
  end
  L6_2(L7_2)
  L6_2 = L9_1
  L7_2 = A1_2
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  if not L4_2 then
    L6_2 = Utils
    L6_2 = L6_2.Warn
    L7_2 = "Spawning garage vehicles failed for this property"
    L8_2 = A1_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Utils
  L2_2 = L2_2.NormalizePlate
  L3_2 = A0_2.plate
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Utils
    L9_2 = L9_2.NormalizePlate
    L10_2 = L8_2.props
    L10_2 = L10_2.plate
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      return L7_2
    end
  end
  return
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = Main
  L2_2 = L2_2.GetSpawnedVehicles
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2[A1_2]
  end
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.vehicles
  L4_2 = L2_2[A1_2]
  L5_2 = L3_1
  L6_2 = A1_2
  L7_2 = 5000
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = Utils
    L6_2 = L6_2.Debug
    L7_2 = "Vehicle entity did not materialize in time, cannot remove it from the garage"
    L8_2 = A0_2
    L9_2 = A1_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = false
    return L6_2
  end
  L6_2 = GetEntityModel
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L7_2.plate = L4_2
  L7_2.model = L6_2
  L8_2 = L12_1
  L9_2 = L7_2
  L10_2 = L3_2
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L9_2 = Utils
    L9_2 = L9_2.Debug
    L10_2 = "Could not find that vehicle plate in the garage"
    L11_2 = A0_2
    L12_2 = L4_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = false
    return L9_2
  end
  L9_2 = Utils
  L9_2 = L9_2.NormalizePlate
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = pairs
  L11_2 = L2_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = Utils
    L16_2 = L16_2.NormalizePlate
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 == L9_2 then
      L2_2[L14_2] = nil
    end
  end
  L10_2 = table
  L10_2 = L10_2.remove
  L11_2 = L3_2
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L10_2 = VehicleDb
  L10_2 = L10_2.Delete
  L11_2 = A0_2
  L12_2 = L4_2
  L10_2(L11_2, L12_2)
  L10_2 = true
  return L10_2
end
L14_1 = RegisterNetEvent
L15_1 = "tk_housing:enterGarage"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L7_2 = source
  L8_2 = GetPlayerFromId
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = type
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if "number" == L9_2 then
    L9_2 = Main
    L9_2 = L9_2.GetProperty
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L9_2 = Main
  L9_2 = L9_2.GetProperty
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.interior
  if L9_2 then
    L9_2 = L9_2.garage
  end
  A4_2 = true == A4_2
  if A4_2 then
    L10_2 = GetPlayerPed
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    if 0 ~= L10_2 then
      L11_2 = Utils
      L11_2 = L11_2.IsPointInside3D
      L12_2 = GetEntityCoords
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L13_2 = L9_2.points
      L14_2 = L9_2.height
      L15_2 = 5.0
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      if L11_2 then
        goto lbl_53
      end
    end
    return
  end
  ::lbl_53::
  L10_2 = Temperature
  if L10_2 then
    L10_2 = Temperature
    L10_2 = L10_2.IsPlayerInside
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      goto lbl_63
    end
  end
  L10_2 = false
  ::lbl_63::
  L11_2 = PoliceLockdown
  L11_2 = L11_2.CanEnter
  L12_2 = L8_2
  L13_2 = Main
  L13_2 = L13_2.GetProperty
  L14_2 = A0_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if not L11_2 then
    L11_2 = Notify
    L12_2 = L7_2
    L13_2 = _U
    L14_2 = "police_lockdown_entry_denied"
    L13_2 = L13_2(L14_2)
    L14_2 = "error"
    L11_2(L12_2, L13_2, L14_2)
    return
  end
  if A3_2 then
    L11_2 = Main
    L11_2 = L11_2.GetPropertyAccess
    L12_2 = L7_2
    L11_2 = L11_2(L12_2)
    if L11_2 ~= A0_2 then
      return
    end
  else
    L11_2 = Properties
    L11_2 = L11_2.CanAccessProperty
    L12_2 = L8_2
    L13_2 = L7_2
    L14_2 = A0_2
    L15_2 = A5_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    if not L11_2 then
      if not A4_2 then
        L11_2 = Notify
        L12_2 = L7_2
        L13_2 = _U
        L14_2 = "wrong_code"
        L13_2 = L13_2(L14_2)
        L14_2 = "error"
        L11_2(L12_2, L13_2, L14_2)
      end
      return
    else
      L11_2 = Main
      L11_2 = L11_2.SetPropertyAccess
      L12_2 = L7_2
      L13_2 = A0_2
      L11_2(L12_2, L13_2)
    end
  end
  if A4_2 then
    L11_2 = Temperature
    if L11_2 then
      L11_2 = Temperature
      L11_2 = L11_2.BeginAreaEntry
      L12_2 = L7_2
      L13_2 = A0_2
      L14_2 = "garage"
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      if L11_2 then
        goto lbl_130
      end
    end
  end
  L11_2 = nil
  ::lbl_130::
  L12_2 = Main
  L12_2 = L12_2.LoadPropertyData
  L13_2 = A0_2
  L12_2(L13_2)
  if A4_2 then
    L12_2 = Temperature
    L12_2 = L12_2.IsAreaEntryPending
    L13_2 = L7_2
    L14_2 = A0_2
    L15_2 = "garage"
    L16_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    if not L12_2 then
      return
    end
    L12_2 = GetPlayerPed
    L13_2 = L7_2
    L12_2 = L12_2(L13_2)
    if 0 ~= L12_2 then
      L13_2 = Utils
      L13_2 = L13_2.IsPointInside3D
      L14_2 = GetEntityCoords
      L15_2 = L12_2
      L14_2 = L14_2(L15_2)
      L15_2 = L9_2.points
      L16_2 = L9_2.height
      L17_2 = 5.0
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      if L13_2 then
        goto lbl_163
      end
    end
    return
  end
  ::lbl_163::
  if not A4_2 then
    L12_2 = Properties
    L12_2 = L12_2.SetCurrentProperty
    L13_2 = L7_2
    L14_2 = "garage"
    L15_2 = A0_2
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = GetPlayerRoutingBucket
    L13_2 = L7_2
    L12_2 = L12_2(L13_2)
    L13_2 = EnteringGarage
    L14_2 = L7_2
    L15_2 = A0_2
    L16_2 = A2_2
    L17_2 = A1_2
    L18_2 = A3_2
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L13_2 = Properties
    L13_2 = L13_2.SendRoutingBucket
    L14_2 = L7_2
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
  end
  L12_2 = Main
  L12_2 = L12_2.GetGaragePlayers
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = Main
    L12_2 = L12_2.SetGaragePlayers
    L13_2 = A0_2
    L14_2 = {}
    L12_2(L13_2, L14_2)
  end
  L12_2 = Main
  L12_2 = L12_2.GetGaragePlayers
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L13_2 = GetPlayerName
  L14_2 = L7_2
  L13_2 = L13_2(L14_2)
  L12_2[L7_2] = L13_2
  L12_2 = Temperature
  if L12_2 then
    L12_2 = Temperature
    L12_2 = L12_2.OnEnter
    L13_2 = L7_2
    L14_2 = A0_2
    L15_2 = "garage"
    L16_2 = A2_2
    L17_2 = A6_2
    L18_2 = L10_2
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L12_2 = Electricity
  if L12_2 then
    L12_2 = Electricity
    L12_2 = L12_2.SendDevicePower
    L13_2 = A0_2
    L14_2 = L7_2
    L12_2(L13_2, L14_2)
  end
  L12_2 = TriggerEvent
  L13_2 = "tk_housing:propertyEntered"
  L14_2 = L7_2
  L15_2 = A0_2
  L16_2 = "garage"
  L12_2(L13_2, L14_2, L15_2, L16_2)
  if not A3_2 and A1_2 and not A4_2 then
    L12_2 = L3_1
    L13_2 = A1_2
    L14_2 = 5000
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L13_2 = SetEntityRoutingBucket
      L14_2 = L12_2
      L15_2 = A0_2
      L13_2(L14_2, L15_2)
    end
  end
  if A2_2 then
    return
  end
  L12_2 = CreateThread
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A3_2
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.Garage
      L0_3 = L0_3.menu
      if "default" == L0_3 then
        L0_3 = L0_1
        L1_3 = L7_2
        L2_3 = A0_2
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = Main
        L1_3 = L1_3.GetSpawnedVehicles
        L2_3 = A0_2
        L1_3 = L1_3(L2_3)
        L2_3 = next
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        L2_3 = not L1_3 or L2_3
        if L2_3 and L0_3 then
          L3_3 = L11_1
          L4_3 = L7_2
          L5_3 = A0_2
          L6_3 = A4_2
          L3_3(L4_3, L5_3, L6_3)
        end
      end
    end
  end
  L12_2(L13_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "tk_housing:leaveGaragePassanger"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = source
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if "number" == L6_2 then
    L6_2 = Main
    L6_2 = L6_2.GetProperty
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L6_2 = type
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if "number" == L6_2 then
    L6_2 = GetPlayerFromId
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L6_2 = type
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if "table" ~= L6_2 and "vector3" ~= L6_2 and "vector4" ~= L6_2 then
    return
  end
  L7_2 = type
  L8_2 = A2_2.x
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = type
    L8_2 = A2_2.y
    L7_2 = L7_2(L8_2)
    if "number" == L7_2 then
      L7_2 = type
      L8_2 = A2_2.z
      L7_2 = L7_2(L8_2)
      if "number" == L7_2 then
        L7_2 = type
        L8_2 = A2_2.w
        L7_2 = L7_2(L8_2)
        if "number" == L7_2 then
          goto lbl_56
        end
      end
    end
  end
  do return end
  ::lbl_56::
  if nil ~= A3_2 then
    L7_2 = type
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    if "number" ~= L7_2 then
      return
    end
  end
  if nil ~= A4_2 then
    L7_2 = type
    L8_2 = A4_2
    L7_2 = L7_2(L8_2)
    if "number" ~= L7_2 then
      return
    end
  end
  L7_2 = L0_1
  L8_2 = L5_2
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = Main
    L7_2 = L7_2.GetPropertyAccess
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= A0_2 then
      return
    end
  end
  if A3_2 then
    L7_2 = L3_1
    L8_2 = A3_2
    L9_2 = 2000
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L8_2 = L8_2 + 2000
    while L7_2 do
      L9_2 = GetEntityRoutingBucket
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if 0 == L9_2 then
        break
      end
      L9_2 = GetGameTimer
      L9_2 = L9_2()
      if not (L8_2 > L9_2) then
        break
      end
      L9_2 = Wait
      L10_2 = 50
      L9_2(L10_2)
    end
  end
  L7_2 = TriggerClientEvent
  L8_2 = "tk_housing:leaveGaragePassanger"
  L9_2 = A1_2
  L10_2 = A0_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "tk_housing:leaveGarage"
function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = source
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = Main
    L5_2 = L5_2.GetProperty
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  if nil ~= A1_2 then
    L5_2 = type
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if "number" ~= L5_2 then
      return
    end
  end
  if A1_2 then
    L5_2 = Main
    L5_2 = L5_2.GetGaragePlayers
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L5_2[L4_2]
    end
    if not L5_2 then
      L5_2 = Main
      L5_2 = L5_2.GetPropertyAccess
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 ~= A0_2 then
        return
      end
    end
  end
  A3_2 = true == A3_2
  if A3_2 then
    L5_2 = Temperature
    if L5_2 then
      L5_2 = Temperature
      L5_2 = L5_2.CancelAreaEntry
      L6_2 = L4_2
      L7_2 = A0_2
      L8_2 = "garage"
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  if not A3_2 then
    L5_2 = Main
    L5_2 = L5_2.ClearPropertyAccess
    L6_2 = L4_2
    L5_2(L6_2)
  end
  if not A3_2 then
    L5_2 = Properties
    L5_2 = L5_2.SetCurrentProperty
    L6_2 = L4_2
    L7_2 = "garage"
    L5_2(L6_2, L7_2)
    L5_2 = GetPlayerRoutingBucket
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = LeavingGarage
    L7_2 = L4_2
    L8_2 = A0_2
    L9_2 = A2_2
    L10_2 = A1_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Properties
    L6_2 = L6_2.SendRoutingBucket
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = Main
  L5_2 = L5_2.GetGaragePlayers
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = L5_2[L4_2]
    L6_2 = nil ~= L6_2
    L5_2[L4_2] = nil
    L7_2 = Temperature
    if L7_2 then
      L7_2 = Temperature
      L7_2 = L7_2.OnLeave
      L8_2 = L4_2
      L9_2 = A0_2
      L10_2 = "garage"
      L7_2(L8_2, L9_2, L10_2)
    end
    L7_2 = Main
    L7_2 = L7_2.ScheduleEviction
    L8_2 = A0_2
    L7_2(L8_2)
    if L6_2 then
      L7_2 = TriggerEvent
      L8_2 = "tk_housing:propertyLeft"
      L9_2 = L4_2
      L10_2 = A0_2
      L11_2 = "garage"
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  if A3_2 then
    L6_2 = Temperature
    if L6_2 then
      L6_2 = Temperature
      L6_2 = L6_2.ClearPropertyAccessWhenOutside
      L7_2 = L4_2
      L8_2 = A0_2
      L6_2(L7_2, L8_2)
    end
  end
  if not A2_2 and A1_2 then
    L6_2 = Config
    L6_2 = L6_2.Garage
    L6_2 = L6_2.menu
    if "default" == L6_2 then
      L6_2 = L3_1
      L7_2 = A1_2
      L8_2 = 5000
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        if not A3_2 then
          L7_2 = SetEntityRoutingBucket
          L8_2 = L6_2
          L9_2 = 0
          L7_2(L8_2, L9_2)
        end
        L7_2 = L13_1
        L8_2 = A0_2
        L9_2 = A1_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L7_2 = Entity
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2.state
          L8_2 = L7_2
          L7_2 = L7_2.set
          L9_2 = "tk_housing:vehicleData"
          L10_2 = nil
          L11_2 = true
          L7_2(L8_2, L9_2, L10_2, L11_2)
          L7_2 = Utils
          L7_2 = L7_2.Trim
          L8_2 = GetVehicleNumberPlateText
          L9_2 = L6_2
          L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          L8_2 = GetVehicleOwner
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = SetVehicleStored
            L9_2 = L4_2
            L10_2 = L7_2
            L11_2 = 0
            L12_2 = Config
            L12_2 = L12_2.Garage
            L12_2 = L12_2.default
            L8_2(L9_2, L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
  L6_2 = Main
  L6_2 = L6_2.GetGaragePlayers
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = next
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_225
    end
  end
  L7_2 = Main
  L7_2 = L7_2.GetSpawnedVehicles
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L8_2 = next
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = Config
      L8_2 = L8_2.Garage
      L8_2 = L8_2.menu
      if "default" == L8_2 then
        L8_2 = Garage
        L8_2 = L8_2.CleanupGarageVehicles
        L9_2 = A0_2
        L10_2 = A1_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  ::lbl_225::
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "tk_housing:saveVehicle"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L7_2 = source
  L8_2 = type
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if "number" == L8_2 then
    L8_2 = Main
    L8_2 = L8_2.GetProperty
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L8_2 = type
  L9_2 = A4_2
  L8_2 = L8_2(L9_2)
  if "table" ~= L8_2 and "vector3" ~= L8_2 and "vector4" ~= L8_2 then
    return
  end
  L9_2 = type
  L10_2 = A4_2.x
  L9_2 = L9_2(L10_2)
  if "number" == L9_2 then
    L9_2 = type
    L10_2 = A4_2.y
    L9_2 = L9_2(L10_2)
    if "number" == L9_2 then
      L9_2 = type
      L10_2 = A4_2.z
      L9_2 = L9_2(L10_2)
      if "number" == L9_2 then
        goto lbl_40
      end
    end
  end
  do return end
  ::lbl_40::
  L9_2 = type
  L10_2 = A5_2
  L9_2 = L9_2(L10_2)
  if "number" ~= L9_2 then
    return
  end
  L9_2 = type
  L10_2 = A6_2
  L9_2 = L9_2(L10_2)
  if "number" ~= L9_2 then
    return
  end
  L9_2 = Main
  L9_2 = L9_2.GetGaragePlayers
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = L9_2[L7_2]
  end
  if not L9_2 then
    return
  end
  L9_2 = Main
  L9_2 = L9_2.LoadPropertyData
  L10_2 = A0_2
  L9_2(L10_2)
  L9_2 = L0_1
  L10_2 = L7_2
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L9_2 = Utils
    L9_2 = L9_2.Debug
    L10_2 = "Player has no garage access, cannot save vehicle"
    L11_2 = L7_2
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    return
  end
  L9_2 = L3_1
  L10_2 = A6_2
  L11_2 = 5000
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L10_2 = Utils
    L10_2 = L10_2.Debug
    L11_2 = "Vehicle entity did not materialize in time, cannot save it"
    L12_2 = A0_2
    L13_2 = A6_2
    L10_2(L11_2, L12_2, L13_2)
    return
  end
  L10_2 = L2_1
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  if L10_2 then
    L11_2 = GetEntityCoords
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2 - L10_2
    L11_2 = #L11_2
    if L11_2 > 100.0 then
      L11_2 = Utils
      L11_2 = L11_2.Debug
      L12_2 = "Vehicle is too far from the garage, cannot save it"
      L13_2 = A0_2
      L14_2 = A6_2
      L11_2(L12_2, L13_2, L14_2)
      return
    end
  end
  if A1_2 then
    L11_2 = A1_2.model
    if L11_2 then
      L11_2 = A1_2.plate
      if L11_2 then
        goto lbl_126
      end
    end
  end
  L11_2 = Utils
  L11_2 = L11_2.Debug
  L12_2 = "Got vehicle properties with no model or plate, cannot save it"
  L13_2 = A0_2
  L11_2(L12_2, L13_2)
  do return end
  ::lbl_126::
  L11_2 = GetPlayerFromId
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  if L11_2 then
    L12_2 = L1_1
    L13_2 = L11_2
    L14_2 = L9_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      goto lbl_138
    end
  end
  do return end
  ::lbl_138::
  L12_2 = Utils
  L12_2 = L12_2.Trim
  L13_2 = GetVehicleNumberPlateText
  L14_2 = L9_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  A1_2.plate = L12_2
  L13_2 = type
  L14_2 = A1_2.model
  L13_2 = L13_2(L14_2)
  if "number" == L13_2 then
    L13_2 = A1_2.model
    L14_2 = GetEntityModel
    L15_2 = L9_2
    L14_2 = L14_2(L15_2)
    if L13_2 ~= L14_2 then
      L13_2 = Utils
      L13_2 = L13_2.Debug
      L14_2 = "Got a vehicle model that does not match the entity, cannot save it"
      L15_2 = A0_2
      L16_2 = A1_2.model
      L13_2(L14_2, L15_2, L16_2)
      return
    end
  end
  L13_2 = math
  L13_2 = L13_2.max
  L14_2 = 0.0
  L15_2 = math
  L15_2 = L15_2.min
  L16_2 = 100.0
  L17_2 = tonumber
  L18_2 = A2_2
  L17_2 = L17_2(L18_2)
  if not L17_2 then
    L17_2 = 60.0
  end
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2, L17_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  A2_2 = L13_2
  L13_2 = math
  L13_2 = L13_2.max
  L14_2 = 0.0
  L15_2 = math
  L15_2 = L15_2.min
  L16_2 = 1000.0
  L17_2 = tonumber
  L18_2 = A3_2
  L17_2 = L17_2(L18_2)
  if not L17_2 then
    L17_2 = 1000.0
  end
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2, L17_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  A3_2 = L13_2
  L13_2 = FreezeEntityPosition
  L14_2 = L9_2
  L15_2 = true
  L13_2(L14_2, L15_2)
  L13_2 = type
  L14_2 = Main
  L14_2 = L14_2.GetSpawnedVehicles
  L15_2 = A0_2
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L14_2(L15_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  if "table" ~= L13_2 then
    L13_2 = Main
    L13_2 = L13_2.SetSpawnedVehicles
    L14_2 = A0_2
    L15_2 = {}
    L13_2(L14_2, L15_2)
  end
  L13_2 = Main
  L13_2 = L13_2.GetProperty
  L14_2 = A0_2
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2.vehicles
  L14_2 = {}
  L14_2.props = A1_2
  L14_2.fuel = A2_2
  L14_2.engineHealth = A3_2
  L14_2.coords = A4_2
  L14_2.heading = A5_2
  L15_2 = L12_1
  L16_2 = A1_2
  L17_2 = L13_2
  L15_2 = L15_2(L16_2, L17_2)
  if not L15_2 then
    L15_2 = #L13_2
    L15_2 = L15_2 + 1
  end
  L13_2[L15_2] = L14_2
  L16_2 = Main
  L16_2 = L16_2.GetSpawnedVehicles
  L17_2 = A0_2
  L16_2 = L16_2(L17_2)
  L17_2 = Utils
  L17_2 = L17_2.NormalizePlate
  L18_2 = L12_2
  L17_2 = L17_2(L18_2)
  L16_2[A6_2] = L17_2
  L16_2 = VehicleDb
  L16_2 = L16_2.Save
  L17_2 = A0_2
  L18_2 = L14_2
  L16_2(L17_2, L18_2)
  L16_2 = Entity
  L17_2 = L9_2
  L16_2 = L16_2(L17_2)
  L16_2 = L16_2.state
  L17_2 = L16_2
  L16_2 = L16_2.set
  L18_2 = "tk_housing:vehicleData"
  L19_2 = {}
  L19_2.props = A1_2
  L19_2.fuel = A2_2
  L19_2.engineHealth = A3_2
  L20_2 = true
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = GetVehicleOwner
  L17_2 = L12_2
  L16_2 = L16_2(L17_2)
  if L16_2 then
    L16_2 = SetVehicleStored
    L17_2 = L7_2
    L18_2 = L12_2
    L19_2 = 1
    L20_2 = Config
    L20_2 = L20_2.Garage
    L20_2 = L20_2.propertyName
    L21_2 = L20_2
    L20_2 = L20_2.format
    L22_2 = A0_2
    L20_2, L21_2, L22_2 = L20_2(L21_2, L22_2)
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "tk_housing:enterGaragePassanger"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = source
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = Main
    L7_2 = L7_2.GetProperty
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L7_2 = type
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = GetPlayerFromId
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  if nil ~= A2_2 then
    L7_2 = type
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if "number" ~= L7_2 then
      return
    end
  end
  if nil ~= A3_2 then
    L7_2 = type
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    if "number" ~= L7_2 then
      return
    end
  end
  if nil ~= A4_2 then
    L7_2 = type
    L8_2 = A4_2
    L7_2 = L7_2(L8_2)
    if "number" ~= L7_2 then
      return
    end
  end
  if nil ~= A5_2 then
    L7_2 = type
    L8_2 = A5_2
    L7_2 = L7_2(L8_2)
    if "number" ~= L7_2 then
      return
    end
  end
  L7_2 = Main
  L7_2 = L7_2.GetProperty
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = PoliceLockdown
  L8_2 = L8_2.CanEnter
  L9_2 = GetPlayerFromId
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    return
  end
  L8_2 = PoliceLockdown
  L8_2 = L8_2.IsLocked
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = PoliceLockdown
    L8_2 = L8_2.CanEnter
    L9_2 = GetPlayerFromId
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
  end
  L9_2 = L0_1
  L10_2 = L6_2
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L9_2 = Main
    L9_2 = L9_2.GetPropertyAccess
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    if L9_2 ~= A0_2 and not L8_2 then
      return
    end
  end
  if A4_2 then
    L9_2 = L3_1
    L10_2 = A4_2
    L11_2 = 2000
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = GetGameTimer
    L10_2 = L10_2()
    L10_2 = L10_2 + 2000
    while L9_2 do
      L11_2 = GetEntityRoutingBucket
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
      if 0 ~= L11_2 then
        break
      end
      L11_2 = GetGameTimer
      L11_2 = L11_2()
      if not (L10_2 > L11_2) then
        break
      end
      L11_2 = Wait
      L12_2 = 50
      L11_2(L12_2)
    end
  end
  L9_2 = GetPlayerFromId
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    return
  end
  L9_2 = Main
  L9_2 = L9_2.SetPropertyAccess
  L10_2 = A1_2
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
  L9_2 = TriggerClientEvent
  L10_2 = "tk_housing:enterGaragePassanger"
  L11_2 = A1_2
  L12_2 = A0_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A5_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCallback
L15_1 = "tk_housing:canEnterGarage"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L6_2 = Main
  L6_2 = L6_2.GetProperty
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetPlayerFromId
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = type
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if "number" == L8_2 and L6_2 and L7_2 then
    L8_2 = type
    L9_2 = A4_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = #A4_2
      if not (L8_2 > 16) then
        goto lbl_29
      end
    end
  end
  L8_2 = A1_2
  L9_2 = false
  L8_2(L9_2)
  do return end
  ::lbl_29::
  L8_2 = Properties
  L8_2 = L8_2.CanAccessProperty
  L9_2 = L7_2
  L10_2 = A0_2
  L11_2 = A2_2
  L12_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if not L8_2 then
    L8_2 = A1_2
    L9_2 = false
    L8_2(L9_2)
    return
  end
  L8_2 = PoliceLockdown
  L8_2 = L8_2.IsLocked
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = GetPlayerPed
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if 0 ~= L8_2 then
      L9_2 = GetVehiclePedIsIn
      L10_2 = L8_2
      L11_2 = false
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        goto lbl_60
      end
    end
    L9_2 = 0
    ::lbl_60::
    if nil ~= A5_2 then
      L10_2 = type
      L11_2 = A5_2
      L10_2 = L10_2(L11_2)
      if "number" == L10_2 then
        L10_2 = NetworkGetEntityFromNetworkId
        L11_2 = A5_2
        L10_2 = L10_2(L11_2)
        if L10_2 == L9_2 then
          goto lbl_76
        end
      end
      L10_2 = A1_2
      L11_2 = false
      L10_2(L11_2)
      return
    end
    ::lbl_76::
    if 0 ~= L9_2 then
      L10_2 = GetPedInVehicleSeat
      L11_2 = L9_2
      L12_2 = -1
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 ~= L8_2 then
        L10_2 = A1_2
        L11_2 = false
        L10_2(L11_2)
        return
      end
    end
    L10_2 = ipairs
    L11_2 = GetPlayers
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L11_2()
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = tonumber
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L17_2 = GetPlayerPed
        L18_2 = L16_2
        L17_2 = L17_2(L18_2)
        if L17_2 then
          goto lbl_104
        end
      end
      L17_2 = 0
      ::lbl_104::
      if L16_2 ~= A0_2 and 0 ~= L17_2 then
        L18_2 = GetVehiclePedIsIn
        L19_2 = L17_2
        L20_2 = false
        L18_2 = L18_2(L19_2, L20_2)
        if L18_2 == L9_2 and 0 ~= L9_2 then
          L18_2 = GetPlayerFromId
          L19_2 = L16_2
          L18_2 = L18_2(L19_2)
          L19_2 = PoliceLockdown
          L19_2 = L19_2.CanEnter
          L20_2 = L18_2
          L21_2 = L6_2
          L19_2 = L19_2(L20_2, L21_2)
          if not L19_2 then
            L19_2 = Notify
            L20_2 = A0_2
            L21_2 = _U
            L22_2 = "police_lockdown_passenger_denied"
            L21_2 = L21_2(L22_2)
            L22_2 = "error"
            L19_2(L20_2, L21_2, L22_2)
            L19_2 = A1_2
            L20_2 = false
            L19_2(L20_2)
            return
          end
        end
      end
    end
  end
  L8_2 = A1_2
  L9_2 = true
  L8_2(L9_2)
end
L14_1(L15_1, L16_1)
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = PoliceLockdown
  L3_2 = L3_2.CanEnter
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = Main
  L5_2 = L5_2.GetProperty
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Main
  L3_2 = L3_2.SetPropertyAccess
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:doorbellAccept"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = true
  return L3_2
end
L15_1 = RegisterNetEvent
L16_1 = "tk_housing:pressDoorbell"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  L2_2 = Main
  L2_2 = L2_2.GetProperty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.owner
    if L3_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = Assistant
  L3_2 = L3_2.Moment
  L4_2 = A0_2
  L5_2 = "doorbell"
  L3_2(L4_2, L5_2)
  L3_2 = Utils
  L3_2 = L3_2.IsEntityOwner
  L4_2 = L2_2.owner
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = ipairs
    L4_2 = Properties
    L4_2 = L4_2.GetOnlinePlayersWithAccessToProperty
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = GetPlayerFromIdentifier
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = Notify
        L11_2 = GetSource
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        L12_2 = _U
        L13_2 = "doorbell_notify"
        L14_2 = A0_2
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = "inform"
        L10_2(L11_2, L12_2, L13_2)
      end
    end
    return
  end
  L3_2 = GetPlayerFromIdentifier
  L4_2 = L2_2.owner
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = GetSource
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.interior
  if L5_2 then
    L5_2 = L5_2.doors
  end
  if L5_2 then
    L5_2 = Notify
    L6_2 = L4_2
    L7_2 = _U
    L8_2 = "doorbell_notify"
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = "inform"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Main
  L5_2 = L5_2.GetHousePlayers
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = next
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L5_2[L4_2]
      if L6_2 then
        L6_2 = TriggerClientEvent
        L7_2 = "tk_housing:doorbellPressed"
        L8_2 = L4_2
        L9_2 = A0_2
        L10_2 = L1_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  else
    L6_2 = Config
    L6_2 = L6_2.Doorbell
    L6_2 = L6_2.notifyAlways
    if L6_2 then
      L6_2 = Notify
      L7_2 = L4_2
      L8_2 = _U
      L9_2 = "doorbell_notify"
      L10_2 = A0_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = "inform"
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "tk_housing:doorbellAccept"
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L4_2 = type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = GetPlayerFromId
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L4_2 = Properties
  L4_2 = L4_2.CanAccessProperty
  L5_2 = GetPlayerFromId
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L4_2 = L14_1
  L5_2 = A2_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Notify
    L5_2 = L3_2
    L6_2 = _U
    L7_2 = "police_lockdown_entry_denied"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Notify
  L5_2 = L3_2
  L6_2 = _U
  L7_2 = "accepted_doorbell_press"
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "tk_housing:doorbellDeny"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = Notify
  L3_2 = L1_2
  L4_2 = _U
  L5_2 = "denied_doorbell_press"
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "error"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Notify
  L3_2 = A0_2
  L4_2 = _U
  L5_2 = "doorbell_press_denied"
  L4_2 = L4_2(L5_2)
  L5_2 = "error"
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterCallback
L16_1 = "tk_housing:canStoreVehicle"
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
    return
  end
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 + 2500
  while true do
    L6_2 = DoesEntityExist
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    if not (L5_2 > L6_2) then
      break
    end
    L6_2 = Wait
    L7_2 = 10
    L6_2(L7_2)
  end
  L6_2 = DoesEntityExist
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = Utils
    L6_2 = L6_2.Debug
    L7_2 = "Vehicle entity does not exist, denying the store request"
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
    return
  end
  L6_2 = A1_2
  L7_2 = L1_1
  L8_2 = L3_2
  L9_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L6_2(L7_2, L8_2, L9_2)
end
L15_1(L16_1, L17_1)
