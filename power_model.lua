local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
PowerModel = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A1_2
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A2_2
  L7_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = tostring
    L3_3 = A0_3.id
    L2_3 = L2_3(L3_3)
    L3_3 = tostring
    L4_3 = A1_3.id
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  return A0_2
end
L2_1 = PowerModel
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = tonumber
  L4_2 = A0_2.seconds
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 0
  L4_2 = tonumber
  L5_2 = A0_2.demandWatts
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.policy
  if "grid_first" == L3_2 then
    L3_2 = "grid_first"
    if L3_2 then
      goto lbl_34
    end
  end
  L3_2 = A0_2.policy
  if "off_grid" == L3_2 then
    L3_2 = "off_grid"
    if L3_2 then
      goto lbl_34
    end
  end
  L3_2 = "local_first"
  ::lbl_34::
  L4_2 = A0_2.gridAvailable
  L4_2 = true == L4_2 and "off_grid" ~= L3_2
  L5_2 = {}
  L6_2 = L2_2 * L1_2
  L6_2 = L6_2 / 3600
  L5_2.demandWh = L6_2
  L5_2.generatorWh = 0
  L5_2.batteryWh = 0
  L5_2.gridWh = 0
  L5_2.unmetWh = 0
  L6_2 = {}
  L5_2.generators = L6_2
  L6_2 = {}
  L5_2.batteries = L6_2
  L6_2 = {}
  L7_2 = ipairs
  L8_2 = L1_1
  L9_2 = A0_2.batteries
  if not L9_2 then
    L9_2 = {}
  end
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = math
    L13_2 = L13_2.max
    L14_2 = 1
    L15_2 = tonumber
    L16_2 = L12_2.capacityWh
    L15_2 = L15_2(L16_2)
    if not L15_2 then
      L15_2 = 1
    end
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = {}
    L15_2 = L12_2.id
    L14_2.id = L15_2
    L15_2 = L0_1
    L16_2 = tonumber
    L17_2 = L12_2.chargeWh
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = 0
    end
    L17_2 = 0
    L18_2 = L13_2
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L14_2.chargeWh = L15_2
    L14_2.capacityWh = L13_2
    L15_2 = math
    L15_2 = L15_2.max
    L16_2 = 0
    L17_2 = tonumber
    L18_2 = L12_2.maxChargeWatts
    L17_2 = L17_2(L18_2)
    if not L17_2 then
      L17_2 = 0
    end
    L15_2 = L15_2(L16_2, L17_2)
    L14_2.maxChargeWatts = L15_2
    L15_2 = math
    L15_2 = L15_2.max
    L16_2 = 0
    L17_2 = tonumber
    L18_2 = L12_2.maxDischargeWatts
    L17_2 = L17_2(L18_2)
    if not L17_2 then
      L17_2 = 0
    end
    L15_2 = L15_2(L16_2, L17_2)
    L14_2.maxDischargeWatts = L15_2
    L15_2 = L0_1
    L16_2 = tonumber
    L17_2 = L12_2.efficiency
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = 1
    end
    L17_2 = 0.01
    L18_2 = 1
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L14_2.efficiency = L15_2
    L15_2 = L0_1
    L16_2 = tonumber
    L17_2 = L12_2.reservePercent
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = 0
    end
    L17_2 = 0
    L18_2 = 100
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L14_2.reservePercent = L15_2
    L14_2.chargeInputWh = 0
    L14_2.dischargeOutputWh = 0
    L15_2 = L5_2.batteries
    L16_2 = L5_2.batteries
    L16_2 = #L16_2
    L16_2 = L16_2 + 1
    L15_2[L16_2] = L14_2
    L15_2 = tostring
    L16_2 = L14_2.id
    L15_2 = L15_2(L16_2)
    L6_2[L15_2] = L14_2
  end
  L7_2 = {}
  L8_2 = ipairs
  L9_2 = L1_1
  L10_2 = A0_2.generators
  if not L10_2 then
    L10_2 = {}
  end
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L9_2(L10_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = {}
    L15_2 = L13_2.id
    L14_2.id = L15_2
    L15_2 = L13_2.running
    L15_2 = true == L15_2
    L14_2.running = L15_2
    L15_2 = math
    L15_2 = L15_2.max
    L16_2 = 0
    L17_2 = tonumber
    L18_2 = L13_2.fuelSeconds
    L17_2 = L17_2(L18_2)
    if not L17_2 then
      L17_2 = 0
    end
    L15_2 = L15_2(L16_2, L17_2)
    L14_2.fuelSeconds = L15_2
    L15_2 = math
    L15_2 = L15_2.max
    L16_2 = 1
    L17_2 = tonumber
    L18_2 = L13_2.ratedWatts
    L17_2 = L17_2(L18_2)
    if not L17_2 then
      L17_2 = 1
    end
    L15_2 = L15_2(L16_2, L17_2)
    L14_2.ratedWatts = L15_2
    L15_2 = L0_1
    L16_2 = tonumber
    L17_2 = L13_2.idleFuelFraction
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = 0
    end
    L17_2 = 0
    L18_2 = 1
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L14_2.idleFuelFraction = L15_2
    L15_2 = L13_2.batteryId
    L14_2.batteryId = L15_2
    L14_2.outputWh = 0
    L14_2.chargeWh = 0
    L14_2.fuelUsedSeconds = 0
    L15_2 = #L7_2
    L15_2 = L15_2 + 1
    L7_2[L15_2] = L14_2
    L15_2 = L5_2.generators
    L16_2 = L5_2.generators
    L16_2 = #L16_2
    L16_2 = L16_2 + 1
    L15_2[L16_2] = L14_2
  end
  L8_2 = 0
  L9_2 = 1.0E-6
  while true do
    L10_2 = L8_2 + L9_2
    if not (L1_2 > L10_2) then
      break
    end
    L10_2 = L1_2 - L8_2
    L11_2 = "grid_first" ~= L3_2 or L11_2
    L12_2 = L2_2
    L13_2 = {}
    L14_2 = {}
    L15_2 = {}
    if L11_2 then
      L16_2 = ipairs
      L17_2 = L7_2
      L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
      for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
        L22_2 = 0
        L23_2 = L21_2.running
        if L23_2 then
          L23_2 = L21_2.fuelSeconds
          if L9_2 < L23_2 then
            L23_2 = math
            L23_2 = L23_2.min
            L24_2 = L21_2.ratedWatts
            L25_2 = L12_2
            L23_2 = L23_2(L24_2, L25_2)
            L22_2 = L23_2
            L12_2 = L12_2 - L22_2
          end
        end
        L13_2[L20_2] = L22_2
        L14_2[L20_2] = L22_2
      end
      if L9_2 >= L12_2 then
        L16_2 = ipairs
        L17_2 = L7_2
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
          L22_2 = L21_2.batteryId
          if L22_2 then
            L22_2 = tostring
            L23_2 = L21_2.batteryId
            L22_2 = L22_2(L23_2)
            L22_2 = L6_2[L22_2]
            if L22_2 then
              goto lbl_291
            end
          end
          L22_2 = nil
          ::lbl_291::
          L23_2 = L21_2.running
          if L23_2 then
            L23_2 = L21_2.fuelSeconds
            if L9_2 < L23_2 and L22_2 then
              L23_2 = L22_2.chargeWh
              L23_2 = L23_2 + L9_2
              L24_2 = L22_2.capacityWh
              if L23_2 < L24_2 then
                L23_2 = tostring
                L24_2 = L22_2.id
                L23_2 = L23_2(L24_2)
                L23_2 = L15_2[L23_2]
                if not L23_2 then
                  L23_2 = 0
                end
                L24_2 = math
                L24_2 = L24_2.min
                L25_2 = L21_2.ratedWatts
                L26_2 = L13_2[L20_2]
                L25_2 = L25_2 - L26_2
                L26_2 = math
                L26_2 = L26_2.max
                L27_2 = 0
                L28_2 = L22_2.maxChargeWatts
                L28_2 = L28_2 - L23_2
                L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L26_2(L27_2, L28_2)
                L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
                L25_2 = L13_2[L20_2]
                L25_2 = L25_2 + L24_2
                L13_2[L20_2] = L25_2
                L25_2 = tostring
                L26_2 = L22_2.id
                L25_2 = L25_2(L26_2)
                L26_2 = L23_2 + L24_2
                L15_2[L25_2] = L26_2
              end
            end
          end
        end
      end
    end
    L16_2 = {}
    if L11_2 and L9_2 < L12_2 then
      L17_2 = ipairs
      L18_2 = L5_2.batteries
      L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
      for L21_2, L22_2 in L17_2, L18_2, L19_2, L20_2 do
        L23_2 = L22_2.capacityWh
        L24_2 = L22_2.reservePercent
        L23_2 = L23_2 * L24_2
        L23_2 = L23_2 / 100
        L24_2 = math
        L24_2 = L24_2.min
        L25_2 = L22_2.maxDischargeWatts
        L26_2 = L12_2
        L24_2 = L24_2(L25_2, L26_2)
        L25_2 = L22_2.chargeWh
        L26_2 = L23_2 + L9_2
        if L25_2 <= L26_2 then
          L24_2 = 0
        end
        L16_2[L21_2] = L24_2
        L12_2 = L12_2 - L24_2
        if L9_2 >= L12_2 then
          break
        end
      end
    end
    if L4_2 then
      L17_2 = math
      L17_2 = L17_2.max
      L18_2 = 0
      L19_2 = L12_2
      L17_2 = L17_2(L18_2, L19_2)
      if L17_2 then
        goto lbl_384
      end
    end
    L17_2 = 0
    ::lbl_384::
    L12_2 = L12_2 - L17_2
    L18_2 = math
    L18_2 = L18_2.max
    L19_2 = 0
    L20_2 = L12_2
    L18_2 = L18_2(L19_2, L20_2)
    L19_2 = L10_2
    L20_2 = ipairs
    L21_2 = L7_2
    L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
    for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
      L26_2 = L13_2[L24_2]
      if not L26_2 then
        L26_2 = 0
      end
      if L11_2 then
        L27_2 = L25_2.running
        if L27_2 then
          L27_2 = L25_2.fuelSeconds
          if L9_2 < L27_2 then
            L27_2 = L25_2.idleFuelFraction
            L28_2 = L25_2.idleFuelFraction
            L29_2 = 1
            L28_2 = L29_2 - L28_2
            L29_2 = L25_2.ratedWatts
            L29_2 = L26_2 / L29_2
            L28_2 = L28_2 * L29_2
            L27_2 = L27_2 + L28_2
            if L9_2 < L27_2 then
              L28_2 = math
              L28_2 = L28_2.min
              L29_2 = L19_2
              L30_2 = L25_2.fuelSeconds
              L30_2 = L30_2 / L27_2
              L28_2 = L28_2(L29_2, L30_2)
              L19_2 = L28_2
            end
          end
        end
      end
    end
    L20_2 = ipairs
    L21_2 = L5_2.batteries
    L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
    for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
      L26_2 = tostring
      L27_2 = L25_2.id
      L26_2 = L26_2(L27_2)
      L26_2 = L15_2[L26_2]
      if not L26_2 then
        L26_2 = 0
      end
      if L9_2 < L26_2 then
        L27_2 = math
        L27_2 = L27_2.min
        L28_2 = L19_2
        L29_2 = L25_2.capacityWh
        L30_2 = L25_2.chargeWh
        L29_2 = L29_2 - L30_2
        L29_2 = L29_2 * 3600
        L30_2 = L25_2.efficiency
        L30_2 = L26_2 * L30_2
        L29_2 = L29_2 / L30_2
        L27_2 = L27_2(L28_2, L29_2)
        L19_2 = L27_2
      end
      L27_2 = L16_2[L24_2]
      if not L27_2 then
        L27_2 = 0
      end
      if L9_2 < L27_2 then
        L28_2 = L25_2.capacityWh
        L29_2 = L25_2.reservePercent
        L28_2 = L28_2 * L29_2
        L28_2 = L28_2 / 100
        L29_2 = math
        L29_2 = L29_2.min
        L30_2 = L19_2
        L31_2 = math
        L31_2 = L31_2.max
        L32_2 = 0
        L33_2 = L25_2.chargeWh
        L33_2 = L33_2 - L28_2
        L31_2 = L31_2(L32_2, L33_2)
        L32_2 = L25_2.efficiency
        L31_2 = L31_2 * L32_2
        L31_2 = L31_2 * 3600
        L31_2 = L31_2 / L27_2
        L29_2 = L29_2(L30_2, L31_2)
        L19_2 = L29_2
      end
    end
    if L9_2 > L19_2 then
      L20_2 = math
      L20_2 = L20_2.min
      L21_2 = L10_2
      L22_2 = 0.001
      L20_2 = L20_2(L21_2, L22_2)
      L19_2 = L20_2
    end
    L20_2 = ipairs
    L21_2 = L7_2
    L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
    for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
      L26_2 = L13_2[L24_2]
      if not L26_2 then
        L26_2 = 0
      end
      L27_2 = L14_2[L24_2]
      if not L27_2 then
        L27_2 = 0
      end
      L28_2 = L26_2 - L27_2
      L29_2 = L25_2.idleFuelFraction
      L30_2 = L25_2.idleFuelFraction
      L31_2 = 1
      L30_2 = L31_2 - L30_2
      L31_2 = L25_2.ratedWatts
      L31_2 = L26_2 / L31_2
      L30_2 = L30_2 * L31_2
      L29_2 = L29_2 + L30_2
      if L11_2 then
        L30_2 = L25_2.running
        if L30_2 then
          L30_2 = math
          L30_2 = L30_2.min
          L31_2 = L25_2.fuelSeconds
          L32_2 = L19_2 * L29_2
          L30_2 = L30_2(L31_2, L32_2)
          if L30_2 then
            goto lbl_544
          end
        end
      end
      L30_2 = 0
      ::lbl_544::
      L31_2 = math
      L31_2 = L31_2.max
      L32_2 = 0
      L33_2 = L25_2.fuelSeconds
      L33_2 = L33_2 - L30_2
      L31_2 = L31_2(L32_2, L33_2)
      L25_2.fuelSeconds = L31_2
      L31_2 = L25_2.fuelUsedSeconds
      L31_2 = L31_2 + L30_2
      L25_2.fuelUsedSeconds = L31_2
      L31_2 = L25_2.outputWh
      L32_2 = L27_2 * L19_2
      L32_2 = L32_2 / 3600
      L31_2 = L31_2 + L32_2
      L25_2.outputWh = L31_2
      L31_2 = L25_2.chargeWh
      L32_2 = L28_2 * L19_2
      L32_2 = L32_2 / 3600
      L31_2 = L31_2 + L32_2
      L25_2.chargeWh = L31_2
      L31_2 = L5_2.generatorWh
      L32_2 = L27_2 * L19_2
      L32_2 = L32_2 / 3600
      L31_2 = L31_2 + L32_2
      L5_2.generatorWh = L31_2
    end
    L20_2 = ipairs
    L21_2 = L5_2.batteries
    L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
    for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
      L26_2 = tostring
      L27_2 = L25_2.id
      L26_2 = L26_2(L27_2)
      L26_2 = L15_2[L26_2]
      if not L26_2 then
        L26_2 = 0
      end
      L27_2 = L16_2[L24_2]
      if not L27_2 then
        L27_2 = 0
      end
      L28_2 = L26_2 * L19_2
      L28_2 = L28_2 / 3600
      L29_2 = L27_2 * L19_2
      L29_2 = L29_2 / 3600
      L30_2 = L0_1
      L31_2 = L25_2.chargeWh
      L32_2 = L25_2.efficiency
      L32_2 = L28_2 * L32_2
      L31_2 = L31_2 + L32_2
      L32_2 = L25_2.efficiency
      L32_2 = L29_2 / L32_2
      L31_2 = L31_2 - L32_2
      L32_2 = 0
      L33_2 = L25_2.capacityWh
      L30_2 = L30_2(L31_2, L32_2, L33_2)
      L25_2.chargeWh = L30_2
      L30_2 = L25_2.chargeInputWh
      L30_2 = L30_2 + L28_2
      L25_2.chargeInputWh = L30_2
      L30_2 = L25_2.dischargeOutputWh
      L30_2 = L30_2 + L29_2
      L25_2.dischargeOutputWh = L30_2
      L30_2 = L5_2.batteryWh
      L30_2 = L30_2 + L29_2
      L5_2.batteryWh = L30_2
    end
    L20_2 = L5_2.gridWh
    L21_2 = L17_2 * L19_2
    L21_2 = L21_2 / 3600
    L20_2 = L20_2 + L21_2
    L5_2.gridWh = L20_2
    L20_2 = L5_2.unmetWh
    L21_2 = L18_2 * L19_2
    L21_2 = L21_2 / 3600
    L20_2 = L20_2 + L21_2
    L5_2.unmetWh = L20_2
    L8_2 = L8_2 + L19_2
  end
  L10_2 = L5_2.demandWh
  L10_2 = L9_2 >= L10_2
  L5_2.powered = L10_2
  return L5_2
end
L2_1.Solve = L3_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.demandWh
  L3_2 = A1_2.demandWh
  L2_2 = L2_2 + L3_2
  A0_2.demandWh = L2_2
  L2_2 = A0_2.generatorWh
  L3_2 = A1_2.generatorWh
  L2_2 = L2_2 + L3_2
  A0_2.generatorWh = L2_2
  L2_2 = A0_2.batteryWh
  L3_2 = A1_2.batteryWh
  L2_2 = L2_2 + L3_2
  A0_2.batteryWh = L2_2
  L2_2 = A0_2.gridWh
  L3_2 = A1_2.gridWh
  L2_2 = L2_2 + L3_2
  A0_2.gridWh = L2_2
  L2_2 = A0_2.unmetWh
  L3_2 = A1_2.unmetWh
  L2_2 = L2_2 + L3_2
  A0_2.unmetWh = L2_2
  L2_2 = ipairs
  L3_2 = A1_2.generators
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2.generators
    L9_2 = A0_2.generators
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L8_2[L9_2] = L7_2
  end
  L2_2 = ipairs
  L3_2 = A1_2.batteries
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2.batteries
    L9_2 = A0_2.batteries
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L8_2[L9_2] = L7_2
  end
end
L3_1 = PowerModel
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L1_2.demandWh = 0
  L1_2.generatorWh = 0
  L1_2.batteryWh = 0
  L1_2.gridWh = 0
  L1_2.unmetWh = 0
  L2_2 = {}
  L1_2.generators = L2_2
  L2_2 = {}
  L1_2.batteries = L2_2
  L2_2 = {}
  L1_2.islands = L2_2
  L2_2 = PowerModel
  L2_2 = L2_2.Solve
  L3_2 = {}
  L4_2 = A0_2.seconds
  L3_2.seconds = L4_2
  L4_2 = A0_2.gridWatts
  L3_2.demandWatts = L4_2
  L4_2 = A0_2.policy
  L3_2.policy = L4_2
  L4_2 = A0_2.gridAvailable
  L3_2.gridAvailable = L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.powered
  L1_2.powered = L3_2
  L3_2 = ipairs
  L4_2 = L1_1
  L5_2 = A0_2.islands
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = PowerModel
    L9_2 = L9_2.Solve
    L10_2 = {}
    L11_2 = A0_2.seconds
    L10_2.seconds = L11_2
    L11_2 = L8_2.demandWatts
    L10_2.demandWatts = L11_2
    L11_2 = A0_2.policy
    L10_2.policy = L11_2
    L11_2 = A0_2.gridAvailable
    L10_2.gridAvailable = L11_2
    L11_2 = L8_2.generators
    L10_2.generators = L11_2
    L11_2 = L8_2.batteries
    L10_2.batteries = L11_2
    L9_2 = L9_2(L10_2)
    L10_2 = L2_1
    L11_2 = L1_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = L1_2.islands
    L11_2 = tostring
    L12_2 = L8_2.id
    L11_2 = L11_2(L12_2)
    L12_2 = {}
    L13_2 = L9_2.powered
    L12_2.powered = L13_2
    L13_2 = math
    L13_2 = L13_2.max
    L14_2 = 0
    L15_2 = tonumber
    L16_2 = L8_2.demandWatts
    L15_2 = L15_2(L16_2)
    if not L15_2 then
      L15_2 = 0
    end
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.demandWatts = L13_2
    L13_2 = L9_2.generatorWh
    L12_2.generatorWh = L13_2
    L13_2 = L9_2.batteryWh
    L12_2.batteryWh = L13_2
    L13_2 = L9_2.gridWh
    L12_2.gridWh = L13_2
    L13_2 = L9_2.unmetWh
    L12_2.unmetWh = L13_2
    L10_2[L11_2] = L12_2
  end
  return L1_2
end
L3_1.SolveIslands = L4_1
