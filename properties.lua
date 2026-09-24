local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = {}
PropertyDb = L0_1
L0_1 = PropertyDb
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = {}
  L1_2.installed = false
  L1_2.tier = 0
  L1_2.armed = false
  L1_2.siren = true
  L1_2.keyholders = true
  L1_2.dispatchInstalled = false
  L1_2.dispatch = true
  L0_2.alarm = L1_2
  L1_2 = {}
  L1_2.installed = false
  L0_2.camera = L1_2
  L1_2 = {}
  L1_2.installed = false
  L1_2.tier = 0
  L0_2.lock = L1_2
  L1_2 = {}
  L1_2.triggered = false
  L1_2.lastTriggered = nil
  L1_2.lastType = nil
  L1_2.lastBy = nil
  L2_2 = {}
  L1_2.recentAlarms = L2_2
  L0_2.state = L1_2
  return L0_2
end
L0_1.DefaultSecurity = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = json
    L1_2 = L1_2.decode
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = A0_2.doors
  L1_2 = L1_2(L2_2)
  A0_2.doors = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.door_links
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.doorLinks = L1_2
  L1_2 = A0_2.apartment_id
  if 0 ~= L1_2 then
    L1_2 = A0_2.apartment_id
    if L1_2 then
      goto lbl_20
    end
  end
  L1_2 = nil
  ::lbl_20::
  A0_2.apartmentId = L1_2
  L1_2 = A0_2.house_interior
  A0_2.houseInterior = L1_2
  L1_2 = A0_2.garage_interior
  A0_2.garageInterior = L1_2
  L1_2 = A0_2.last_rent_time
  A0_2.lastRentTime = L1_2
  L1_2 = A0_2.listing_price
  A0_2.listingPrice = L1_2
  L1_2 = A0_2.max_storages
  A0_2.maxStorages = L1_2
  L1_2 = A0_2.max_furniture
  A0_2.maxFurniture = L1_2
  L1_2 = A0_2.property_type
  A0_2.propertyType = L1_2
  L1_2 = A0_2.business_id
  A0_2.businessId = L1_2
  L1_2 = A0_2.listed_by
  A0_2.listedBy = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.mortgage
  L1_2 = L1_2(L2_2)
  A0_2.mortgage = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.mortgage_terms
  L1_2 = L1_2(L2_2)
  A0_2.mortgageTerms = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.security
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = PropertyDb
    L1_2 = L1_2.DefaultSecurity
    L1_2 = L1_2()
  end
  A0_2.security = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.interior_style
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.interiorStyle = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.ambience
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.ambience = L1_2
  L1_2 = A0_2.key_serial
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.keySerial = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.police_lockdown
  L1_2 = L1_2(L2_2)
  A0_2.policeLockdown = L1_2
  L1_2 = Config
  L1_2 = L1_2.PoliceLockdown
  L1_2 = L1_2.enable
  L1_2 = true == L1_2
  A0_2.policeLocked = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.yard
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.yard = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.interior
  L1_2 = L1_2(L2_2)
  A0_2.interior = L1_2
  L1_2 = L0_1
  L2_2 = A0_2.permissions
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.permissions = L1_2
  L1_2 = {}
  L2_2 = {}
  L1_2.house = L2_2
  L2_2 = {}
  L1_2.yard = L2_2
  L2_2 = {}
  L1_2.garage = L2_2
  A0_2.furniture = L1_2
  L1_2 = {}
  A0_2.vehicles = L1_2
  A0_2.door_links = nil
  A0_2.apartment_id = nil
  A0_2.house_interior = nil
  A0_2.garage_interior = nil
  A0_2.last_rent_time = nil
  A0_2.listing_price = nil
  A0_2.max_storages = nil
  A0_2.max_furniture = nil
  A0_2.property_type = nil
  A0_2.business_id = nil
  A0_2.listed_by = nil
  A0_2.mortgage_terms = nil
  A0_2.interior_style = nil
  A0_2.key_serial = nil
  A0_2.police_lockdown = nil
  return A0_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    A0_2[L6_2] = L8_2
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A0_2 then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2 or L7_2
    if L6_2 then
      L7_2 = L6_2.coords
    end
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = type
      L9_2 = L7_2.x
      L8_2 = L8_2(L9_2)
      if "number" == L8_2 then
        L8_2 = type
        L9_2 = L7_2.y
        L8_2 = L8_2(L9_2)
        if "number" == L8_2 then
          L8_2 = type
          L9_2 = L7_2.z
          L8_2 = L8_2(L9_2)
          if "number" == L8_2 then
            L8_2 = type
            L9_2 = L7_2.w
            L8_2 = L8_2(L9_2)
            if "number" == L8_2 then
              L8_2 = vec4
              L9_2 = L7_2.x
              L10_2 = L7_2.y
              L11_2 = L7_2.z
              L12_2 = L7_2.w
              L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
              L6_2.coords = L8_2
            end
          end
        end
      end
    end
  end
end
L4_1 = PropertyDb
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT `id`, `apartment_id`, `doors`, `door_links`, `house_interior`, `garage_interior`, "
  L2_2 = "`interior`, `yard`, `price`, `listing_price`, `rent`, `last_rent_time`, `name`, "
  L3_2 = "`property_type`, `address`, `image`, `owner`, `permissions`, `max_storages`, "
  L4_2 = "`max_furniture`, `mortgage`, `mortgage_terms`, `security`, `interior_style`, `ambience`, `key_serial`, `police_lockdown`, `business_id`, `listed_by` "
  L5_2 = "FROM tk_housing_properties"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L9_2 = L7_2
    L8_2(L9_2)
    L8_2 = L2_1
    L9_2 = L7_2.doors
    if L9_2 then
      L9_2 = L7_2.doors
      L9_2 = L9_2.house
    end
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L1_3 = {}
      L2_3 = vec4
      L3_3 = A0_3.coords
      L3_3 = L3_3.x
      L4_3 = A0_3.coords
      L4_3 = L4_3.y
      L5_3 = A0_3.coords
      L5_3 = L5_3.z
      L6_3 = A0_3.coords
      L6_3 = L6_3.w
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3.coords = L2_3
      L2_3 = A0_3.exitIndex
      L1_3.exitIndex = L2_3
      L2_3 = A0_3.label
      L1_3.label = L2_3
      L2_3 = A0_3.code
      L1_3.code = L2_3
      return L1_3
    end
    L8_2(L9_2, L10_2)
    L8_2 = L2_1
    L9_2 = L7_2.doors
    if L9_2 then
      L9_2 = L7_2.doors
      L9_2 = L9_2.garage
    end
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L1_3 = {}
      L2_3 = vec4
      L3_3 = A0_3.coords
      L3_3 = L3_3.x
      L4_3 = A0_3.coords
      L4_3 = L4_3.y
      L5_3 = A0_3.coords
      L5_3 = L5_3.z
      L6_3 = A0_3.coords
      L6_3 = L6_3.w
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3.coords = L2_3
      L2_3 = A0_3.exitIndex
      L1_3.exitIndex = L2_3
      L2_3 = A0_3.label
      L1_3.label = L2_3
      L2_3 = A0_3.code
      L1_3.code = L2_3
      return L1_3
    end
    L8_2(L9_2, L10_2)
    L8_2 = L2_1
    L9_2 = L7_2.interior
    if L9_2 then
      L9_2 = L7_2.interior
      L9_2 = L9_2.doors
    end
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L1_3 = {}
      L2_3 = vec3
      L3_3 = A0_3.coords
      L3_3 = L3_3.x
      L4_3 = A0_3.coords
      L4_3 = L4_3.y
      L5_3 = A0_3.coords
      L5_3 = L5_3.z
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3.coords = L2_3
      L2_3 = A0_3.centroid
      if L2_3 then
        L2_3 = vec3
        L3_3 = A0_3.centroid
        L3_3 = L3_3.x
        L4_3 = A0_3.centroid
        L4_3 = L4_3.y
        L5_3 = A0_3.centroid
        L5_3 = L5_3.z
        L2_3 = L2_3(L3_3, L4_3, L5_3)
      end
      L1_3.centroid = L2_3
      L2_3 = A0_3.label
      L1_3.label = L2_3
      L2_3 = A0_3.code
      L1_3.code = L2_3
      L2_3 = A0_3.model
      L1_3.model = L2_3
      L2_3 = A0_3.propertyType
      L1_3.propertyType = L2_3
      L2_3 = A0_3.second
      if L2_3 then
        L2_3 = {}
        L3_3 = A0_3.second
        L3_3 = L3_3.model
        L2_3.model = L3_3
        L3_3 = vec3
        L4_3 = A0_3.second
        L4_3 = L4_3.coords
        L4_3 = L4_3.x
        L5_3 = A0_3.second
        L5_3 = L5_3.coords
        L5_3 = L5_3.y
        L6_3 = A0_3.second
        L6_3 = L6_3.coords
        L6_3 = L6_3.z
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L2_3.coords = L3_3
      end
      L1_3.second = L2_3
      return L1_3
    end
    L8_2(L9_2, L10_2)
    L8_2 = L3_1
    L9_2 = L7_2.interior
    if L9_2 then
      L9_2 = L9_2.house
      if L9_2 then
        L9_2 = L9_2.spots
      end
    end
    L8_2(L9_2)
    L8_2 = L3_1
    L9_2 = L7_2.interior
    if L9_2 then
      L9_2 = L9_2.garage
      if L9_2 then
        L9_2 = L9_2.spots
      end
    end
    L8_2(L9_2)
    L8_2 = L7_2.id
    L1_2[L8_2] = L7_2
  end
  return L1_2
end
L4_1.LoadAll = L5_1
L4_1 = {}
L4_1.doors = true
L4_1.door_links = true
L4_1.interior = true
L4_1.yard = true
L4_1.mortgage_terms = true
L5_1 = {}
L6_1 = "apartment_id"
L7_1 = "doors"
L8_1 = "door_links"
L9_1 = "house_interior"
L10_1 = "garage_interior"
L11_1 = "interior"
L12_1 = "yard"
L13_1 = "price"
L14_1 = "rent"
L15_1 = "name"
L16_1 = "property_type"
L17_1 = "image"
L18_1 = "address"
L19_1 = "max_storages"
L20_1 = "max_furniture"
L21_1 = "mortgage_terms"
L22_1 = "business_id"
L23_1 = "listed_by"
L24_1 = "owner"
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L5_1[5] = L10_1
L5_1[6] = L11_1
L5_1[7] = L12_1
L5_1[8] = L13_1
L5_1[9] = L14_1
L5_1[10] = L15_1
L5_1[11] = L16_1
L5_1[12] = L17_1
L5_1[13] = L18_1
L5_1[14] = L19_1
L5_1[15] = L20_1
L5_1[16] = L21_1
L5_1[17] = L22_1
L5_1[18] = L23_1
L5_1[19] = L24_1
L6_1 = {}
L7_1 = "doors"
L8_1 = "door_links"
L9_1 = "house_interior"
L10_1 = "garage_interior"
L11_1 = "interior"
L12_1 = "yard"
L13_1 = "price"
L14_1 = "rent"
L15_1 = "name"
L16_1 = "property_type"
L17_1 = "image"
L18_1 = "address"
L19_1 = "max_storages"
L20_1 = "max_furniture"
L21_1 = "mortgage_terms"
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L6_1[5] = L11_1
L6_1[6] = L12_1
L6_1[7] = L13_1
L6_1[8] = L14_1
L6_1[9] = L15_1
L6_1[10] = L16_1
L6_1[11] = L17_1
L6_1[12] = L18_1
L6_1[13] = L19_1
L6_1[14] = L20_1
L6_1[15] = L21_1
L7_1 = "`"
L8_1 = table
L8_1 = L8_1.concat
L9_1 = L5_1
L10_1 = "`, `"
L8_1 = L8_1(L9_1, L10_1)
L9_1 = "`"
L7_1 = L7_1 .. L8_1 .. L9_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      goto lbl_11
    end
  end
  do return A1_2 end
  ::lbl_11::
  L3_2 = A1_2
  L2_2 = A1_2.match
  L4_2 = "^[ \t\r\n]*%{[ \t\r\n]*%}[ \t\r\n]*$"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A1_2
    L2_2 = A1_2.match
    L4_2 = "^[ \t\r\n]*%[[ \t\r\n]*%][ \t\r\n]*$"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L3_2 = A1_2
      L2_2 = A1_2.match
      L4_2 = "^[ \t\r\n]*null[ \t\r\n]*$"
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        goto lbl_28
      end
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_28::
  return A1_2
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L5_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_1
    L10_2 = L8_2
    L11_2 = A0_2[L7_2]
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = Database
    L10_2 = L10_2.Value
    L11_2 = A1_2
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L2_2[L7_2] = L10_2
  end
  L3_2 = "("
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = L2_2
  L6_2 = ", "
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ")"
  L3_2 = L3_2 .. L4_2 .. L5_2
  return L3_2
end
L10_1 = PropertyDb
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = L9_1
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.insert
  L4_2 = "INSERT INTO tk_housing_properties ("
  L5_2 = L7_1
  L6_2 = ") VALUES "
  L7_2 = L2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = L1_2
  return L3_2(L4_2, L5_2)
end
L10_1.Insert = L11_1
L10_1 = PropertyDb
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2[1]
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L9_1
    L10_2 = L8_2
    L11_2 = L2_2
    L9_2 = L9_2(L10_2, L11_2)
    L1_2[L7_2] = L9_2
  end
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.insert
  L4_2 = "INSERT INTO tk_housing_properties ("
  L5_2 = L7_1
  L6_2 = ") VALUES "
  L7_2 = table
  L7_2 = L7_2.concat
  L8_2 = L1_2
  L9_2 = ", "
  L7_2 = L7_2(L8_2, L9_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L10_1.InsertMany = L11_1
L10_1 = PropertyDb
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = L6_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L8_1
    L11_2 = L9_2
    L12_2 = A1_2[L8_2]
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = "`"
    L12_2 = L9_2
    L13_2 = "` = "
    L14_2 = Database
    L14_2 = L14_2.Value
    L15_2 = L3_2
    L16_2 = L10_2
    L14_2 = L14_2(L15_2, L16_2)
    L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
    L2_2[L8_2] = L11_2
  end
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A0_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tk_housing_properties SET "
  L6_2 = table
  L6_2 = L6_2.concat
  L7_2 = L2_2
  L8_2 = ", "
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = " WHERE id = ?"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L10_1.UpdateStructural = L11_1
L10_1 = PropertyDb
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = Database
  L3_2 = L3_2.Value
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = #L2_2
  L4_2 = L4_2 + 1
  L2_2[L4_2] = A0_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tk_housing_properties SET owner = "
  L6_2 = L3_2
  L7_2 = ", listing_price = NULL, listed_by = NULL WHERE id = ?"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L10_1.SetOwner = L11_1
L10_1 = PropertyDb
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyDb
  L2_2 = L2_2.SetOwner
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L10_1.SetOwnerPurchased = L11_1
L10_1 = PropertyDb
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = Database
  L4_2 = L4_2.Value
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Database
  L5_2 = L5_2.Value
  L6_2 = L3_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = #L3_2
  L6_2 = L6_2 + 1
  L3_2[L6_2] = A0_2
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "UPDATE tk_housing_properties SET owner = "
  L8_2 = L4_2
  L9_2 = ", last_rent_time = "
  L10_2 = L5_2
  L11_2 = ", listing_price = NULL, listed_by = NULL WHERE id = ?"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
end
L10_1.SetOwnerRented = L11_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L4_2 = Database
  L4_2 = L4_2.Value
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = #L3_2
  L5_2 = L5_2 + 1
  L3_2[L5_2] = A0_2
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE tk_housing_properties SET `"
  L7_2 = A1_2
  L8_2 = "` = "
  L9_2 = L4_2
  L10_2 = " WHERE id = ?"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "listing_price"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.UpdateListingPrice = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "listed_by"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetListedBy = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "price"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetPrice = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "name"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetName = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "address"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetAddress = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "rent"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetRent = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "max_storages"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetMaxStorages = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "max_furniture"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetMaxFurniture = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "business_id"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetBusiness = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "mortgage_terms"
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L11_1.SetMortgageTerms = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "permissions"
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L11_1.UpdatePermissions = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = Database
  L4_2 = L4_2.Value
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Database
  L5_2 = L5_2.Value
  L6_2 = L3_2
  L7_2 = Database
  L7_2 = L7_2.Json
  L8_2 = A2_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = #L3_2
  L6_2 = L6_2 + 1
  L3_2[L6_2] = A0_2
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "UPDATE tk_housing_properties SET owner = "
  L8_2 = L4_2
  L9_2 = ", listing_price = NULL, listed_by = NULL, mortgage = "
  L10_2 = L5_2
  L11_2 = " WHERE id = ?"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
end
L11_1.SetOwnerMortgaged = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "mortgage"
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L11_1.UpdateMortgage = L12_1
L11_1 = PropertyDb
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "UPDATE tk_housing_properties SET mortgage = NULL WHERE id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L11_1.ClearMortgage = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "security"
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L11_1.UpdateSecurity = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = Database
  L3_2 = L3_2.Value
  L4_2 = L2_2
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = #L2_2
  L4_2 = L4_2 + 1
  L2_2[L4_2] = A0_2
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tk_housing_properties SET police_lockdown = "
  L6_2 = L3_2
  L7_2 = " WHERE id = ?"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = L2_2
  return L4_2(L5_2, L6_2)
end
L11_1.UpdatePoliceLockdown = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "interior_style"
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L11_1.UpdateInteriorStyle = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "ambience"
  L5_2 = Database
  L5_2 = L5_2.Json
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L11_1.UpdateAmbience = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "key_serial"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.SetKeySerial = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "property_type"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.UpdateType = L12_1
L11_1 = PropertyDb
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A0_2
  L4_2 = "last_rent_time"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1.UpdateRentTime = L12_1
L11_1 = PropertyDb
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "UPDATE tk_housing_properties SET owner = NULL, last_rent_time = NULL, permissions = NULL, mortgage = NULL, listing_price = NULL, listed_by = NULL WHERE id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L11_1.ClearOwnership = L12_1
L11_1 = PropertyDb
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM tk_housing_properties WHERE id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L11_1.Delete = L12_1
