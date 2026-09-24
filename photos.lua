local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
Photos = L0_1
L0_1 = {}
L1_1 = {}
L1_1.ext = "jpg"
L1_1.magic = "/9j/"
L0_1["data:image/jpeg;base64,"] = L1_1
L1_1 = {}
L1_1.ext = "png"
L1_1.magic = "iVBORw0KGgo"
L0_1["data:image/png;base64,"] = L1_1
L1_1 = 0
L2_1 = Photos
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.sub
    L9_2 = 1
    L10_2 = #L5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 == L5_2 then
      L8_2 = A0_2
      L7_2 = A0_2.sub
      L9_2 = #L5_2
      L9_2 = L9_2 + 1
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.match
      L9_2 = "^([A-Za-z0-9%+/]+)=?=?$"
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L9_2 = L7_2
        L8_2 = L7_2.sub
        L10_2 = 1
        L11_2 = L6_2.magic
        L11_2 = #L11_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L9_2 = L6_2.magic
        if L8_2 == L9_2 then
          goto lbl_31
        end
      end
      L8_2 = nil
      do return L8_2 end
      ::lbl_31::
      L8_2 = L1_1
      L8_2 = L8_2 + 1
      L1_1 = L8_2
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = "%08x"
      L10_2 = math
      L10_2 = L10_2.random
      L11_2 = 0
      L12_2 = 4294967295
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L9_2 = GetCurrentResourceName
      L9_2 = L9_2()
      L10_2 = "_"
      L11_2 = os
      L11_2 = L11_2.time
      L11_2 = L11_2()
      L12_2 = "_"
      L13_2 = L1_1
      L14_2 = "_"
      L15_2 = L8_2
      L16_2 = "."
      L17_2 = L6_2.ext
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
      return L9_2
    end
  end
  L1_2 = nil
  return L1_2
end
L2_1.GetFilename = L3_1
