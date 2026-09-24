local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchScalar
  L3_2 = [[
        SELECT COUNT(1) FROM information_schema.columns
        WHERE table_schema = DATABASE()
          AND table_name = ?
          AND column_name = ?
    ]]
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = nil ~= L2_2 and L2_2 > 0
  return L3_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = [[
        SELECT COUNT(1) FROM information_schema.tables
        WHERE table_schema = DATABASE() AND table_name = ?
    ]]
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil ~= L1_2 and L1_2 > 0
  return L2_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchScalar
  L3_2 = [[
        SELECT COLUMN_TYPE FROM information_schema.columns
        WHERE table_schema = DATABASE() AND table_name = ? AND column_name = ?
    ]]
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  return L2_2(L3_2, L4_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L2_1
  L1_2 = "tk_housing_properties"
  L2_2 = "id"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = type
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L2_2 = L0_2
    L1_2 = L0_2.lower
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_15
      L0_2 = L1_2 or L0_2
    end
  end
  L0_2 = ""
  ::lbl_15::
  L2_2 = L0_2
  L1_2 = L0_2.find
  L3_2 = "bigint"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = "BIGINT"
    if L1_2 then
      goto lbl_24
    end
  end
  L1_2 = "INT"
  ::lbl_24::
  L3_2 = L0_2
  L2_2 = L0_2.find
  L4_2 = "unsigned"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_2
    L3_2 = " UNSIGNED"
    L2_2 = L2_2 .. L3_2
    return L2_2
  end
  return L1_2
end
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L0_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L0_1
    L4_2 = A0_2
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      goto lbl_15
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_15::
  L3_2 = "%`"
  L4_2 = A1_2
  L5_2 = "`%"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = nil
  L5_2 = pcall
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = MySQL
    L0_3 = L0_3.Sync
    L0_3 = L0_3.fetchAll
    L1_3 = [[
            SELECT CONSTRAINT_NAME FROM information_schema.CHECK_CONSTRAINTS
            WHERE CONSTRAINT_SCHEMA = DATABASE() AND TABLE_NAME = ? AND CHECK_CLAUSE LIKE ?
        ]]
    L2_3 = {}
    L3_3 = A0_2
    L4_3 = L3_2
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L0_3 = L0_3(L1_3, L2_3)
    L4_2 = L0_3
  end
  L5_2(L6_2)
  if L4_2 then
    L5_2 = #L4_2
    if 0 ~= L5_2 then
      goto lbl_31
    end
  end
  L5_2 = pcall
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = MySQL
    L0_3 = L0_3.Sync
    L0_3 = L0_3.fetchAll
    L1_3 = [[
                SELECT c.CONSTRAINT_NAME FROM information_schema.TABLE_CONSTRAINTS t
                JOIN information_schema.CHECK_CONSTRAINTS c
                    ON c.CONSTRAINT_SCHEMA = t.CONSTRAINT_SCHEMA
                    AND c.CONSTRAINT_NAME = t.CONSTRAINT_NAME
                WHERE t.TABLE_SCHEMA = DATABASE() AND t.TABLE_NAME = ?
                    AND t.CONSTRAINT_TYPE = 'CHECK' AND c.CHECK_CLAUSE LIKE ?
            ]]
    L2_3 = {}
    L3_3 = A0_2
    L4_3 = L3_2
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L0_3 = L0_3(L1_3, L2_3)
    L4_2 = L0_3
  end
  L5_2(L6_2)
  ::lbl_31::
  L5_2 = ipairs
  L6_2 = L4_2 or L6_2
  if not L4_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = pcall
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = MySQL
      L0_3 = L0_3.Sync
      L0_3 = L0_3.execute
      L1_3 = "ALTER TABLE `%s` DROP CONSTRAINT `%s`"
      L2_3 = L1_3
      L1_3 = L1_3.format
      L3_3 = A0_2
      L4_3 = L10_2.CONSTRAINT_NAME
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L11_2(L12_2)
  end
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.fetchAll
  L6_2 = [[
        SELECT COLUMN_TYPE, IS_NULLABLE, CHARACTER_SET_NAME, COLLATION_NAME
        FROM information_schema.columns
        WHERE table_schema = DATABASE() AND table_name = ? AND column_name = ?
    ]]
  L7_2 = {}
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = L5_2[1]
  end
  if not L5_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = ""
  L7_2 = L5_2.CHARACTER_SET_NAME
  if L7_2 then
    L7_2 = L5_2.COLLATION_NAME
    if L7_2 then
      L7_2 = " CHARACTER SET %s COLLATE %s"
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = L5_2.CHARACTER_SET_NAME
      L10_2 = L5_2.COLLATION_NAME
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    end
  end
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.execute
  L8_2 = "ALTER TABLE `%s` CHANGE COLUMN `%s` `%s` %s%s %s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = L5_2.COLUMN_TYPE
  L14_2 = L6_2
  L15_2 = L5_2.IS_NULLABLE
  if "NO" == L15_2 then
    L15_2 = "NOT NULL"
    if L15_2 then
      goto lbl_92
    end
  end
  L15_2 = "NULL"
  ::lbl_92::
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = L0_1
  L8_2 = A0_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L7_2 = L0_1
    L8_2 = A0_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = not L7_2
  end
  return L7_2
end
L5_1 = Main
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L3_1
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_furniture` (
            `property_id`   %s          NOT NULL,
            `furniture_type` ENUM('house','garage','yard') NOT NULL,
            `furniture_id`  VARCHAR(32)  NOT NULL,
            `model`         BIGINT       NOT NULL,
            `position` JSON NOT NULL,
            `rotation` JSON NOT NULL,
            `storage_code`        VARCHAR(64) NULL,
            `storage_items`       JSON NULL,
            `storage_permissions` JSON NULL,
            `speaker_group`       VARCHAR(32) NULL,
            PRIMARY KEY (`property_id`, `furniture_type`, `furniture_id`),
            CONSTRAINT `fk_tk_furniture_property`
                FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_vehicles` (
            `property_id`   %s         NOT NULL,
            `plate`         VARCHAR(12) NOT NULL,
            `props`         JSON        NOT NULL,
            `fuel`          FLOAT       NOT NULL DEFAULT 60.0,
            `engine_health` FLOAT       NOT NULL DEFAULT 1000.0,
            `position` JSON NULL,
            `heading` FLOAT NULL,
            PRIMARY KEY (`property_id`, `plate`),
            CONSTRAINT `fk_tk_vehicle_property`
                FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Main
  L1_2 = L1_2.MigrateRenameLinkingDoors
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateHouseInteriorToKey
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateGarageInteriorRename
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigratePropertyLimitColumns
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigratePropertyTypeColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateBillsTables
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateMortgageColumns
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateSecurityColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateInteriorStyleColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateKeySerialColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigratePoliceLockdownColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateFurnitureAcquisitionTables
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateFurnitureCartTable
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateBusinessTables
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigratePropertyBusinessColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateBusinessStashItemsColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateListedByColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateSpeakerGroups
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateFurnitureDataColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.MigrateAmbienceColumn
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.NormalizeNullStrings
  L1_2()
  L1_2 = Main
  L1_2 = L1_2.BackfillFurnitureVehicleRows
  L1_2()
end
L5_1.RunMigrations = L6_1
L5_1 = Main
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = false
  L1_2 = L0_1
  L2_2 = "tk_housing_properties"
  L3_2 = "max_storages"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `max_storages` INT NULL DEFAULT NULL"
    L1_2(L2_2)
    L0_2 = true
  end
  L1_2 = L0_1
  L2_2 = "tk_housing_properties"
  L3_2 = "max_furniture"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `max_furniture` INT NULL DEFAULT NULL"
    L1_2(L2_2)
    L0_2 = true
  end
  if L0_2 then
    L1_2 = print
    L2_2 = "[tk_housing] migration: tk_housing_properties max_storages/max_furniture columns added"
    L1_2(L2_2)
  end
end
L5_1.MigratePropertyLimitColumns = L6_1
L5_1 = Main
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "property_type"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `property_type` VARCHAR(64) NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties property_type column added"
  L0_2(L1_2)
end
L5_1.MigratePropertyTypeColumn = L6_1
L5_1 = Main
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = "('(NULL)', 'null', 'NULL')"
  L1_2 = L0_1
  L2_2 = "tk_housing_properties"
  L3_2 = "owner"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = "UPDATE `tk_housing_properties` SET `owner` = NULL WHERE CAST(`owner` AS BINARY) IN "
    L3_2 = L0_2
    L2_2 = L2_2 .. L3_2
    L1_2 = L1_2(L2_2)
    if nil ~= L1_2 and L1_2 > 0 then
      L2_2 = print
      L3_2 = "[tk_housing] migration: %d properties had a bad owner value, cleared. They are unowned again and can be bought"
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = L1_2
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  L1_2 = {}
  L2_2 = "name"
  L3_2 = "image"
  L4_2 = "garage_interior"
  L5_2 = "house_interior"
  L6_2 = "interior"
  L7_2 = "yard"
  L8_2 = "door_links"
  L9_2 = "permissions"
  L10_2 = "mortgage"
  L11_2 = "mortgage_terms"
  L12_2 = "security"
  L13_2 = "interior_style"
  L14_2 = "furniture_house"
  L15_2 = "furniture_garage"
  L16_2 = "furniture_yard"
  L17_2 = "vehicles"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  L1_2[13] = L14_2
  L1_2[14] = L15_2
  L1_2[15] = L16_2
  L1_2[16] = L17_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L0_1
    L9_2 = "tk_housing_properties"
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = MySQL
      L8_2 = L8_2.Sync
      L8_2 = L8_2.execute
      L9_2 = "UPDATE `tk_housing_properties` SET `%s` = NULL WHERE CAST(`%s` AS BINARY) IN "
      L10_2 = L9_2
      L9_2 = L9_2.format
      L11_2 = L7_2
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = L0_2
      L9_2 = L9_2 .. L10_2
      L8_2 = L8_2(L9_2)
      if nil ~= L8_2 and L8_2 > 0 then
        L9_2 = print
        L10_2 = "[tk_housing] migration: tk_housing_properties.%s: cleared %d bad values"
        L11_2 = L10_2
        L10_2 = L10_2.format
        L12_2 = L7_2
        L13_2 = L8_2
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2, L13_2)
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      end
    end
  end
  L2_2 = L0_1
  L3_2 = "tk_housing_properties"
  L4_2 = "doors"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Sync
    L2_2 = L2_2.fetchAll
    L3_2 = "SELECT `id` FROM `tk_housing_properties` WHERE CAST(`doors` AS BINARY) IN "
    L4_2 = L0_2
    L5_2 = " ORDER BY `id`"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = {}
    end
    L3_2 = #L2_2
    if L3_2 > 0 then
      L3_2 = {}
      L4_2 = 1
      L5_2 = math
      L5_2 = L5_2.min
      L6_2 = #L2_2
      L7_2 = 20
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = #L3_2
        L8_2 = L8_2 + 1
        L9_2 = tostring
        L10_2 = L2_2[L7_2]
        L10_2 = L10_2.id
        L9_2 = L9_2(L10_2)
        L3_2[L8_2] = L9_2
      end
      L4_2 = #L2_2
      if L4_2 > 20 then
        L4_2 = " and %d more"
        L5_2 = L4_2
        L4_2 = L4_2.format
        L6_2 = #L2_2
        L6_2 = L6_2 - 20
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          goto lbl_131
        end
      end
      L4_2 = ""
      ::lbl_131::
      L5_2 = print
      L6_2 = "[tk_housing] migration WARNING: %d properties have a bad doors value, left alone (ids %s%s). Fix them by hand"
      L7_2 = L6_2
      L6_2 = L6_2.format
      L8_2 = #L2_2
      L9_2 = table
      L9_2 = L9_2.concat
      L10_2 = L3_2
      L11_2 = ", "
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L4_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
end
L5_1.NormalizeNullStrings = L6_1
L5_1 = Main
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2
  function L0_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3
    L4_3 = type
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    if "table" ~= L4_3 then
      return A3_3
    end
    L4_3 = A0_3[A1_3]
    if nil == L4_3 then
      L4_3 = A0_3[A2_3]
    end
    L5_3 = type
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    if "number" ~= L5_3 then
      return A3_3
    end
    return L4_3
  end
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = "INSERT INTO `tk_housing_furniture` "
    L2_3 = "(`property_id`, `furniture_type`, `furniture_id`, `model`, "
    L3_3 = "`position`, `rotation`, "
    L4_3 = "`storage_code`, `storage_items`, `storage_permissions`) VALUES "
    L5_3 = A0_3
    L6_3 = " ON DUPLICATE KEY UPDATE "
    L7_3 = "`model` = VALUES(`model`), "
    L8_3 = "`position` = VALUES(`position`), `rotation` = VALUES(`rotation`), "
    L9_3 = "`storage_code` = VALUES(`storage_code`), "
    L10_3 = "`storage_items` = VALUES(`storage_items`), "
    L11_3 = "`storage_permissions` = VALUES(`storage_permissions`)"
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3
    return L1_3
  end
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = Database
    L2_3 = L2_3.Values
    L3_3 = A0_3
    L4_3 = A1_3.property_id
    L5_3 = A1_3.furniture_type
    L6_3 = A1_3.furniture_id
    L7_3 = A1_3.model
    L8_3 = json
    L8_3 = L8_3.encode
    L9_3 = {}
    L10_3 = A1_3.pos_x
    L9_3.x = L10_3
    L10_3 = A1_3.pos_y
    L9_3.y = L10_3
    L10_3 = A1_3.pos_z
    L9_3.z = L10_3
    L8_3 = L8_3(L9_3)
    L9_3 = json
    L9_3 = L9_3.encode
    L10_3 = {}
    L11_3 = A1_3.rot_x
    L10_3.x = L11_3
    L11_3 = A1_3.rot_y
    L10_3.y = L11_3
    L11_3 = A1_3.rot_z
    L10_3.z = L11_3
    L9_3 = L9_3(L10_3)
    L10_3 = A1_3.storage_code
    L11_3 = A1_3.storage_items
    L12_3 = A1_3.storage_permissions
    return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
  end
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L1_3 = 100
    L2_3 = 1
    L3_3 = #A0_3
    L4_3 = L1_3
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = {}
      L7_3 = {}
      L8_3 = math
      L8_3 = L8_3.min
      L9_3 = L5_3 + L1_3
      L9_3 = L9_3 - 1
      L10_3 = #A0_3
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = L5_3
      L10_3 = L8_3
      L11_3 = 1
      for L12_3 = L9_3, L10_3, L11_3 do
        L13_3 = #L6_3
        L13_3 = L13_3 + 1
        L14_3 = "("
        L15_3 = L2_2
        L16_3 = L7_3
        L17_3 = A0_3[L12_3]
        L15_3 = L15_3(L16_3, L17_3)
        L16_3 = ")"
        L14_3 = L14_3 .. L15_3 .. L16_3
        L6_3[L13_3] = L14_3
      end
      L9_3 = pcall
      L10_3 = MySQL
      L10_3 = L10_3.Sync
      L10_3 = L10_3.execute
      L11_3 = L1_2
      L12_3 = table
      L12_3 = L12_3.concat
      L13_3 = L6_3
      L14_3 = ", "
      L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L12_3(L13_3, L14_3)
      L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
      L12_3 = L7_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      if not L9_3 then
        L10_3 = L5_3
        L11_3 = L8_3
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = A0_3[L13_3]
          L15_3 = {}
          L16_3 = pcall
          L17_3 = MySQL
          L17_3 = L17_3.Sync
          L17_3 = L17_3.execute
          L18_3 = L1_2
          L19_3 = "("
          L20_3 = L2_2
          L21_3 = L15_3
          L22_3 = L14_3
          L20_3 = L20_3(L21_3, L22_3)
          L21_3 = ")"
          L19_3 = L19_3 .. L20_3 .. L21_3
          L18_3 = L18_3(L19_3)
          L19_3 = L15_3
          L16_3 = L16_3(L17_3, L18_3, L19_3)
          if not L16_3 then
            L17_3 = print
            L18_3 = "[tk_housing] migration WARNING: property %s %s furniture \"%s\" could not be saved, skipped. It is still in the backup"
            L19_3 = L18_3
            L18_3 = L18_3.format
            L20_3 = tostring
            L21_3 = L14_3.property_id
            L20_3 = L20_3(L21_3)
            L21_3 = L14_3.furniture_type
            L22_3 = tostring
            L23_3 = L14_3.furniture_id
            L22_3, L23_3 = L22_3(L23_3)
            L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L18_3(L19_3, L20_3, L21_3, L22_3, L23_3)
            L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          end
        end
      end
    end
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = "INSERT INTO `tk_housing_vehicles` "
    L2_3 = "(`property_id`, `plate`, `props`, `fuel`, `engine_health`, "
    L3_3 = "`position`, `heading`) VALUES "
    L4_3 = A0_3
    L5_3 = " ON DUPLICATE KEY UPDATE "
    L6_3 = "`props` = VALUES(`props`), `fuel` = VALUES(`fuel`), "
    L7_3 = "`engine_health` = VALUES(`engine_health`), "
    L8_3 = "`position` = VALUES(`position`), "
    L9_3 = "`heading` = VALUES(`heading`)"
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
    return L1_3
  end
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = nil
    L3_3 = A1_3.pos_x
    if nil ~= L3_3 then
      L3_3 = A1_3.pos_y
      if nil ~= L3_3 then
        L3_3 = A1_3.pos_z
        if nil ~= L3_3 then
          L3_3 = json
          L3_3 = L3_3.encode
          L4_3 = {}
          L5_3 = A1_3.pos_x
          L4_3.x = L5_3
          L5_3 = A1_3.pos_y
          L4_3.y = L5_3
          L5_3 = A1_3.pos_z
          L4_3.z = L5_3
          L3_3 = L3_3(L4_3)
          L2_3 = L3_3
        end
      end
    end
    L3_3 = Database
    L3_3 = L3_3.Values
    L4_3 = A0_3
    L5_3 = A1_3.property_id
    L6_3 = A1_3.plate
    L7_3 = A1_3.props
    L8_3 = A1_3.fuel
    L9_3 = A1_3.engine_health
    L10_3 = L2_3
    L11_3 = A1_3.heading
    return L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    L1_3 = 100
    L2_3 = 1
    L3_3 = #A0_3
    L4_3 = L1_3
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = {}
      L7_3 = {}
      L8_3 = math
      L8_3 = L8_3.min
      L9_3 = L5_3 + L1_3
      L9_3 = L9_3 - 1
      L10_3 = #A0_3
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = L5_3
      L10_3 = L8_3
      L11_3 = 1
      for L12_3 = L9_3, L10_3, L11_3 do
        L13_3 = #L6_3
        L13_3 = L13_3 + 1
        L14_3 = "("
        L15_3 = L5_2
        L16_3 = L7_3
        L17_3 = A0_3[L12_3]
        L15_3 = L15_3(L16_3, L17_3)
        L16_3 = ")"
        L14_3 = L14_3 .. L15_3 .. L16_3
        L6_3[L13_3] = L14_3
      end
      L9_3 = pcall
      L10_3 = MySQL
      L10_3 = L10_3.Sync
      L10_3 = L10_3.execute
      L11_3 = L4_2
      L12_3 = table
      L12_3 = L12_3.concat
      L13_3 = L6_3
      L14_3 = ", "
      L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L12_3(L13_3, L14_3)
      L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
      L12_3 = L7_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      if not L9_3 then
        L10_3 = L5_3
        L11_3 = L8_3
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = A0_3[L13_3]
          L15_3 = {}
          L16_3 = pcall
          L17_3 = MySQL
          L17_3 = L17_3.Sync
          L17_3 = L17_3.execute
          L18_3 = L4_2
          L19_3 = "("
          L20_3 = L5_2
          L21_3 = L15_3
          L22_3 = L14_3
          L20_3 = L20_3(L21_3, L22_3)
          L21_3 = ")"
          L19_3 = L19_3 .. L20_3 .. L21_3
          L18_3 = L18_3(L19_3)
          L19_3 = L15_3
          L16_3 = L16_3(L17_3, L18_3, L19_3)
          if not L16_3 then
            L17_3 = print
            L18_3 = "[tk_housing] migration WARNING: property %s vehicle \"%s\" could not be saved, skipped. It is still in the backup"
            L19_3 = L18_3
            L18_3 = L18_3.format
            L20_3 = tostring
            L21_3 = L14_3.property_id
            L20_3 = L20_3(L21_3)
            L21_3 = tostring
            L22_3 = L14_3.plate
            L21_3, L22_3 = L21_3(L22_3)
            L18_3, L19_3, L20_3, L21_3, L22_3 = L18_3(L19_3, L20_3, L21_3, L22_3)
            L17_3(L18_3, L19_3, L20_3, L21_3, L22_3)
          end
        end
      end
    end
  end
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if nil == A0_3 or "" == A0_3 or "null" == A0_3 then
      L1_3 = nil
      return L1_3
    end
    L1_3 = pcall
    L2_3 = json
    L2_3 = L2_3.decode
    L3_3 = A0_3
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L3_3 = type
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      if "table" == L3_3 then
        return L2_3
      end
    end
    L3_3 = nil
    L4_3 = true
    return L3_3, L4_3
  end
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = L4_1
    L3_3 = "tk_housing_properties"
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L0_1
    L3_3 = "tk_housing_properties"
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L2_3 = print
      L3_3 = "[tk_housing] migration WARNING: could not rename tk_housing_properties.%s to %s. Will retry next boot"
      L4_3 = L3_3
      L3_3 = L3_3.format
      L5_3 = A0_3
      L6_3 = A1_3
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = false
      return L2_3
    end
    L2_3 = true
    return L2_3
  end
  L9_2 = false
  L10_2 = ipairs
  L11_2 = {}
  L12_2 = "furniture_house"
  L13_2 = "furniture_garage"
  L14_2 = "furniture_yard"
  L15_2 = "vehicles"
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L0_1
    L17_2 = "tk_housing_properties"
    L18_2 = L15_2
    L16_2 = L16_2(L17_2, L18_2)
    if L16_2 then
      L9_2 = true
      break
    end
  end
  if not L9_2 then
    L10_2 = L8_2
    L11_2 = "furniture_house"
    L12_2 = "furniture_house_legacy"
    L10_2(L11_2, L12_2)
    L10_2 = L8_2
    L11_2 = "furniture_garage"
    L12_2 = "furniture_garage_legacy"
    L10_2(L11_2, L12_2)
    L10_2 = L8_2
    L11_2 = "furniture_yard"
    L12_2 = "furniture_yard_legacy"
    L10_2(L11_2, L12_2)
    L10_2 = L8_2
    L11_2 = "vehicles"
    L12_2 = "vehicles_legacy"
    L10_2(L11_2, L12_2)
    return
  end
  L10_2 = print
  L11_2 = "[tk_housing] migration: moving furniture and vehicles to the new tables"
  L10_2(L11_2)
  L10_2 = {}
  L11_2 = "id"
  L10_2[1] = L11_2
  L11_2 = ipairs
  L12_2 = {}
  L13_2 = "furniture_house"
  L14_2 = "furniture_garage"
  L15_2 = "furniture_yard"
  L16_2 = "vehicles"
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L0_1
    L18_2 = "tk_housing_properties"
    L19_2 = L16_2
    L17_2 = L17_2(L18_2, L19_2)
    if L17_2 then
      L17_2 = #L10_2
      L17_2 = L17_2 + 1
      L10_2[L17_2] = L16_2
    end
  end
  L11_2 = MySQL
  L11_2 = L11_2.Sync
  L11_2 = L11_2.fetchAll
  L12_2 = "SELECT "
  L13_2 = table
  L13_2 = L13_2.concat
  L14_2 = L10_2
  L15_2 = ", "
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = " FROM tk_housing_properties"
  L12_2 = L12_2 .. L13_2 .. L14_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = {}
  end
  L12_2 = {}
  L12_2.house = "furniture_house"
  L12_2.garage = "furniture_garage"
  L12_2.yard = "furniture_yard"
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L17_2 = {}
  L18_2 = {}
  L19_2 = {}
  L20_2 = {}
  L21_2 = ipairs
  L22_2 = MySQL
  L22_2 = L22_2.Sync
  L22_2 = L22_2.fetchAll
  L23_2 = "SELECT `property_id`, `furniture_type`, COUNT(1) AS cnt FROM `tk_housing_furniture` GROUP BY `property_id`, `furniture_type`"
  L22_2 = L22_2(L23_2)
  if not L22_2 then
    L22_2 = {}
  end
  L21_2, L22_2, L23_2, L24_2 = L21_2(L22_2)
  for L25_2, L26_2 in L21_2, L22_2, L23_2, L24_2 do
    L27_2 = tonumber
    L28_2 = L26_2.property_id
    L27_2 = L27_2(L28_2)
    if not L27_2 then
      L27_2 = L26_2.property_id
    end
    L28_2 = L20_2[L27_2]
    if not L28_2 then
      L29_2 = {}
      L28_2 = L29_2
      L20_2[L27_2] = L28_2
    end
    L29_2 = L26_2.furniture_type
    L30_2 = tonumber
    L31_2 = L26_2.cnt
    L30_2 = L30_2(L31_2)
    if not L30_2 then
      L30_2 = 0
    end
    L28_2[L29_2] = L30_2
  end
  L21_2 = ipairs
  L22_2 = L11_2
  L21_2, L22_2, L23_2, L24_2 = L21_2(L22_2)
  for L25_2, L26_2 in L21_2, L22_2, L23_2, L24_2 do
    L13_2 = L13_2 + 1
    L27_2 = L26_2.id
    L28_2 = {}
    L29_2 = 0
    L30_2 = 0
    L31_2 = 0
    L32_2 = {}
    L33_2 = false
    L34_2 = false
    L35_2 = {}
    L36_2 = pairs
    L37_2 = L12_2
    L36_2, L37_2, L38_2, L39_2 = L36_2(L37_2)
    for L40_2, L41_2 in L36_2, L37_2, L38_2, L39_2 do
      L42_2 = L7_2
      L43_2 = L26_2[L41_2]
      L42_2, L43_2 = L42_2(L43_2)
      if L43_2 then
        L33_2 = true
        L44_2 = print
        L45_2 = "[tk_housing] migration WARNING: property %s %s old JSON is broken, skipped. The raw text is kept in %s_legacy"
        L46_2 = L45_2
        L45_2 = L45_2.format
        L47_2 = tostring
        L48_2 = L27_2
        L47_2 = L47_2(L48_2)
        L48_2 = L41_2
        L49_2 = L41_2
        L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2)
        L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
      end
      if L42_2 then
        L44_2 = #L42_2
        if 0 == L44_2 then
          L44_2 = next
          L45_2 = L42_2
          L44_2 = L44_2(L45_2)
          if nil ~= L44_2 then
            L33_2 = true
            L44_2 = print
            L45_2 = "[tk_housing] migration WARNING: property %s %s old JSON is not a list, skipped. The raw text is kept in %s_legacy"
            L46_2 = L45_2
            L45_2 = L45_2.format
            L47_2 = tostring
            L48_2 = L27_2
            L47_2 = L47_2(L48_2)
            L48_2 = L41_2
            L49_2 = L41_2
            L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2)
            L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
            L42_2 = nil
          end
        end
      end
      L44_2 = tonumber
      L45_2 = L27_2
      L44_2 = L44_2(L45_2)
      if not L44_2 then
        L44_2 = L27_2
      end
      L44_2 = L20_2[L44_2]
      if L44_2 then
        L44_2 = L44_2[L40_2]
      end
      if L42_2 then
        L45_2 = #L42_2
        if L44_2 == L45_2 then
          L45_2 = #L42_2
          L29_2 = L29_2 + L45_2
          L45_2 = #L42_2
          L31_2 = L31_2 + L45_2
          L35_2[L40_2] = true
          L45_2 = print
          L46_2 = "[tk_housing] migration: property %s %s furniture already has %d row(s), skipped so live changes are not undone"
          L47_2 = L46_2
          L46_2 = L46_2.format
          L48_2 = tostring
          L49_2 = L27_2
          L48_2 = L48_2(L49_2)
          L49_2 = L40_2
          L50_2 = L44_2
          L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L46_2(L47_2, L48_2, L49_2, L50_2)
          L45_2(L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
          L42_2 = nil
        end
      end
      if L42_2 then
        L45_2 = ipairs
        L46_2 = L42_2
        L45_2, L46_2, L47_2, L48_2 = L45_2(L46_2)
        for L49_2, L50_2 in L45_2, L46_2, L47_2, L48_2 do
          L51_2 = type
          L52_2 = L50_2
          L51_2 = L51_2(L52_2)
          if "table" == L51_2 then
            L29_2 = L29_2 + 1
            L51_2 = L50_2.id
            if nil == L51_2 or "" == L51_2 then
              L52_2 = "migrated_"
              L53_2 = L40_2
              L54_2 = "_"
              L55_2 = L49_2
              L52_2 = L52_2 .. L53_2 .. L54_2 .. L55_2
              L51_2 = L52_2
              L52_2 = print
              L53_2 = "[tk_housing] migration WARNING: property %s %s furniture #%d has no id, gave it \"%s\""
              L54_2 = L53_2
              L53_2 = L53_2.format
              L55_2 = tostring
              L56_2 = L27_2
              L55_2 = L55_2(L56_2)
              L56_2 = L40_2
              L57_2 = L49_2
              L58_2 = L51_2
              L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L53_2(L54_2, L55_2, L56_2, L57_2, L58_2)
              L52_2(L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
            end
            L52_2 = L50_2.model
            L53_2 = type
            L54_2 = L52_2
            L53_2 = L53_2(L54_2)
            if "string" == L53_2 then
              L53_2 = joaat
              L54_2 = L52_2
              L53_2 = L53_2(L54_2)
              L52_2 = L53_2
            end
            L53_2 = type
            L54_2 = L52_2
            L53_2 = L53_2(L54_2)
            if "number" ~= L53_2 then
              L53_2 = print
              L54_2 = "[tk_housing] migration WARNING: property %s %s furniture #%d (\"%s\") has a bad model (%s), skipped"
              L55_2 = L54_2
              L54_2 = L54_2.format
              L56_2 = tostring
              L57_2 = L27_2
              L56_2 = L56_2(L57_2)
              L57_2 = L40_2
              L58_2 = L49_2
              L59_2 = tostring
              L60_2 = L51_2
              L59_2 = L59_2(L60_2)
              L60_2 = tostring
              L61_2 = L52_2
              L60_2, L61_2, L62_2 = L60_2(L61_2)
              L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L54_2(L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
              L53_2(L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
              L30_2 = L30_2 + 1
            else
              L53_2 = Utils
              L53_2 = L53_2.NormalizeModelHash
              L54_2 = L52_2
              L53_2 = L53_2(L54_2)
              L52_2 = L53_2
              L53_2 = L40_2
              L54_2 = "|"
              L55_2 = tostring
              L56_2 = L51_2
              L55_2 = L55_2(L56_2)
              L53_2 = L53_2 .. L54_2 .. L55_2
              L54_2 = L32_2[L53_2]
              if L54_2 then
                L34_2 = true
                L54_2 = print
                L55_2 = "[tk_housing] migration WARNING: property %s %s furniture id \"%s\" is used twice, only the last piece is kept"
                L56_2 = L55_2
                L55_2 = L55_2.format
                L57_2 = tostring
                L58_2 = L27_2
                L57_2 = L57_2(L58_2)
                L58_2 = L40_2
                L59_2 = tostring
                L60_2 = L51_2
                L59_2, L60_2, L61_2, L62_2 = L59_2(L60_2)
                L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L55_2(L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
                L54_2(L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
              else
                L31_2 = L31_2 + 1
              end
              L32_2[L53_2] = true
              L54_2 = L50_2.coords
              L55_2 = L50_2.rotation
              L56_2 = #L28_2
              L56_2 = L56_2 + 1
              L57_2 = {}
              L57_2.property_id = L27_2
              L57_2.furniture_type = L40_2
              L58_2 = tostring
              L59_2 = L51_2
              L58_2 = L58_2(L59_2)
              L57_2.furniture_id = L58_2
              L57_2.model = L52_2
              L58_2 = L0_2
              L59_2 = L54_2
              L60_2 = "x"
              L61_2 = 1
              L62_2 = 0.0
              L58_2 = L58_2(L59_2, L60_2, L61_2, L62_2)
              L57_2.pos_x = L58_2
              L58_2 = L0_2
              L59_2 = L54_2
              L60_2 = "y"
              L61_2 = 2
              L62_2 = 0.0
              L58_2 = L58_2(L59_2, L60_2, L61_2, L62_2)
              L57_2.pos_y = L58_2
              L58_2 = L0_2
              L59_2 = L54_2
              L60_2 = "z"
              L61_2 = 3
              L62_2 = 0.0
              L58_2 = L58_2(L59_2, L60_2, L61_2, L62_2)
              L57_2.pos_z = L58_2
              L58_2 = L0_2
              L59_2 = L55_2
              L60_2 = "x"
              L61_2 = 1
              L62_2 = 0.0
              L58_2 = L58_2(L59_2, L60_2, L61_2, L62_2)
              L57_2.rot_x = L58_2
              L58_2 = L0_2
              L59_2 = L55_2
              L60_2 = "y"
              L61_2 = 2
              L62_2 = 0.0
              L58_2 = L58_2(L59_2, L60_2, L61_2, L62_2)
              L57_2.rot_y = L58_2
              L58_2 = L0_2
              L59_2 = L55_2
              L60_2 = "z"
              L61_2 = 3
              L62_2 = 0.0
              L58_2 = L58_2(L59_2, L60_2, L61_2, L62_2)
              L57_2.rot_z = L58_2
              L58_2 = type
              L59_2 = L50_2.code
              L58_2 = L58_2(L59_2)
              if "string" == L58_2 then
                L58_2 = L50_2.code
                if L58_2 then
                  goto lbl_408
                end
              end
              L58_2 = nil
              ::lbl_408::
              L57_2.storage_code = L58_2
              L58_2 = type
              L59_2 = L50_2.items
              L58_2 = L58_2(L59_2)
              if "table" == L58_2 then
                L58_2 = Database
                L58_2 = L58_2.Json
                L59_2 = L50_2.items
                L58_2 = L58_2(L59_2)
                if L58_2 then
                  goto lbl_421
                end
              end
              L58_2 = nil
              ::lbl_421::
              L57_2.storage_items = L58_2
              L58_2 = type
              L59_2 = L50_2.permissions
              L58_2 = L58_2(L59_2)
              if "table" == L58_2 then
                L58_2 = Database
                L58_2 = L58_2.Json
                L59_2 = L50_2.permissions
                L58_2 = L58_2(L59_2)
                if L58_2 then
                  goto lbl_434
                end
              end
              L58_2 = nil
              ::lbl_434::
              L57_2.storage_permissions = L58_2
              L28_2[L56_2] = L57_2
            end
          end
        end
      end
    end
    L36_2 = #L28_2
    if L36_2 > 0 then
      L36_2 = L3_2
      L37_2 = L28_2
      L36_2(L37_2)
    end
    L14_2 = L14_2 + L31_2
    L36_2 = {}
    L37_2 = pairs
    L38_2 = L12_2
    L37_2, L38_2, L39_2, L40_2 = L37_2(L38_2)
    for L41_2 in L37_2, L38_2, L39_2, L40_2 do
      L42_2 = L35_2[L41_2]
      if not L42_2 then
        L42_2 = {}
        L36_2[L41_2] = L42_2
      end
    end
    L37_2 = ipairs
    L38_2 = L28_2
    L37_2, L38_2, L39_2, L40_2 = L37_2(L38_2)
    for L41_2, L42_2 in L37_2, L38_2, L39_2, L40_2 do
      L43_2 = L42_2.furniture_type
      L43_2 = L36_2[L43_2]
      if L43_2 then
        L44_2 = L42_2.furniture_id
        L43_2[L44_2] = L42_2
      end
    end
    L17_2[L27_2] = L36_2
    L36_2 = L7_2
    L37_2 = L26_2.vehicles
    L36_2, L37_2 = L36_2(L37_2)
    if L37_2 then
      L33_2 = true
      L38_2 = print
      L39_2 = "[tk_housing] migration WARNING: property %s vehicles old JSON is broken, skipped. The raw text is kept in vehicles_legacy"
      L40_2 = L39_2
      L39_2 = L39_2.format
      L41_2 = tostring
      L42_2 = L27_2
      L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L41_2(L42_2)
      L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L39_2(L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
      L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    end
    if L36_2 then
      L38_2 = #L36_2
      if 0 == L38_2 then
        L38_2 = next
        L39_2 = L36_2
        L38_2 = L38_2(L39_2)
        if nil ~= L38_2 then
          L33_2 = true
          L38_2 = print
          L39_2 = "[tk_housing] migration WARNING: property %s vehicles old JSON is not a list, skipped. The raw text is kept in vehicles_legacy"
          L40_2 = L39_2
          L39_2 = L39_2.format
          L41_2 = tostring
          L42_2 = L27_2
          L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L41_2(L42_2)
          L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L39_2(L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
          L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
          L36_2 = nil
        end
      end
    end
    L38_2 = 0
    L39_2 = 0
    L40_2 = false
    L41_2 = {}
    L42_2 = {}
    if L36_2 then
      L43_2 = ipairs
      L44_2 = L36_2
      L43_2, L44_2, L45_2, L46_2 = L43_2(L44_2)
      for L47_2, L48_2 in L43_2, L44_2, L45_2, L46_2 do
        L49_2 = type
        L50_2 = L48_2
        L49_2 = L49_2(L50_2)
        if "table" == L49_2 then
          L49_2 = type
          L50_2 = L48_2.props
          L49_2 = L49_2(L50_2)
          if "table" == L49_2 then
            goto lbl_548
          end
        end
        L39_2 = L39_2 + 1
        L49_2 = print
        L50_2 = "[tk_housing] migration WARNING: property %s vehicle #%d has no saved data, skipped"
        L51_2 = L50_2
        L50_2 = L50_2.format
        L52_2 = tostring
        L53_2 = L27_2
        L52_2 = L52_2(L53_2)
        L53_2 = L47_2
        L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L50_2(L51_2, L52_2, L53_2)
        L49_2(L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
        goto lbl_648
        ::lbl_548::
        L38_2 = L38_2 + 1
        L49_2 = L48_2.props
        L49_2 = L49_2.plate
        L50_2 = type
        L51_2 = L49_2
        L50_2 = L50_2(L51_2)
        if "string" == L50_2 then
          L51_2 = L49_2
          L50_2 = L49_2.gsub
          L52_2 = "%s+$"
          L53_2 = ""
          L50_2 = L50_2(L51_2, L52_2, L53_2)
          L51_2 = L50_2
          L50_2 = L50_2.gsub
          L52_2 = "^%s+"
          L53_2 = ""
          L50_2 = L50_2(L51_2, L52_2, L53_2)
          L49_2 = L50_2
        end
        L50_2 = type
        L51_2 = L49_2
        L50_2 = L50_2(L51_2)
        if "string" ~= L50_2 or "" == L49_2 then
          L39_2 = L39_2 + 1
          L50_2 = print
          L51_2 = "[tk_housing] migration WARNING: property %s has a vehicle with no plate, skipped"
          L52_2 = L51_2
          L51_2 = L51_2.format
          L53_2 = tostring
          L54_2 = L27_2
          L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L53_2(L54_2)
          L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L51_2(L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
          L50_2(L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
        else
          L50_2 = L48_2.coords
          L52_2 = L49_2
          L51_2 = L49_2.upper
          L51_2 = L51_2(L52_2)
          L52_2 = L41_2[L51_2]
          if nil == L52_2 then
            L52_2 = #L42_2
            L52_2 = L52_2 + 1
            L42_2[L52_2] = L51_2
          else
            L40_2 = true
            L52_2 = print
            L53_2 = "[tk_housing] migration: property %s has the plate \"%s\" twice, only the last vehicle is kept"
            L54_2 = L53_2
            L53_2 = L53_2.format
            L55_2 = tostring
            L56_2 = L27_2
            L55_2 = L55_2(L56_2)
            L56_2 = L49_2
            L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L53_2(L54_2, L55_2, L56_2)
            L52_2(L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
          end
          L52_2 = {}
          L52_2.property_id = L27_2
          L52_2.plate = L49_2
          L53_2 = json
          L53_2 = L53_2.encode
          L54_2 = L48_2.props
          L53_2 = L53_2(L54_2)
          L52_2.props = L53_2
          L53_2 = L48_2.fuel
          if not L53_2 then
            L53_2 = 60.0
          end
          L52_2.fuel = L53_2
          L53_2 = L48_2.engineHealth
          if not L53_2 then
            L53_2 = 1000.0
          end
          L52_2.engine_health = L53_2
          L53_2 = L0_2
          L54_2 = L50_2
          L55_2 = "x"
          L56_2 = 1
          L57_2 = nil
          L53_2 = L53_2(L54_2, L55_2, L56_2, L57_2)
          L52_2.pos_x = L53_2
          L53_2 = L0_2
          L54_2 = L50_2
          L55_2 = "y"
          L56_2 = 2
          L57_2 = nil
          L53_2 = L53_2(L54_2, L55_2, L56_2, L57_2)
          L52_2.pos_y = L53_2
          L53_2 = L0_2
          L54_2 = L50_2
          L55_2 = "z"
          L56_2 = 3
          L57_2 = nil
          L53_2 = L53_2(L54_2, L55_2, L56_2, L57_2)
          L52_2.pos_z = L53_2
          L53_2 = L48_2.heading
          L52_2.heading = L53_2
          L41_2[L51_2] = L52_2
        end
        ::lbl_648::
      end
    end
    L43_2 = {}
    L44_2 = ipairs
    L45_2 = L42_2
    L44_2, L45_2, L46_2, L47_2 = L44_2(L45_2)
    for L48_2, L49_2 in L44_2, L45_2, L46_2, L47_2 do
      L50_2 = #L43_2
      L50_2 = L50_2 + 1
      L51_2 = L41_2[L49_2]
      L43_2[L50_2] = L51_2
    end
    L44_2 = #L43_2
    if L44_2 > 0 then
      L44_2 = L6_2
      L45_2 = L43_2
      L44_2(L45_2)
    end
    L44_2 = #L43_2
    L15_2 = L15_2 + L44_2
    L44_2 = {}
    L45_2 = 0
    L46_2 = ipairs
    L47_2 = L43_2
    L46_2, L47_2, L48_2, L49_2 = L46_2(L47_2)
    for L50_2, L51_2 in L46_2, L47_2, L48_2, L49_2 do
      L52_2 = nil
      L53_2 = pcall
      L54_2 = json
      L54_2 = L54_2.decode
      L55_2 = L51_2.props
      L53_2, L54_2 = L53_2(L54_2, L55_2)
      if L53_2 then
        L55_2 = type
        L56_2 = L54_2
        L55_2 = L55_2(L56_2)
        if "table" == L55_2 then
          L52_2 = L54_2
        end
      end
      L55_2 = L51_2.plate
      L56_2 = {}
      L57_2 = L51_2.fuel
      L56_2.fuel = L57_2
      L57_2 = L51_2.engine_health
      L56_2.engine_health = L57_2
      L56_2.props = L52_2
      L44_2[L55_2] = L56_2
      L45_2 = L45_2 + 1
    end
    L46_2 = {}
    L46_2.byPlate = L44_2
    L46_2.count = L45_2
    L18_2[L27_2] = L46_2
    L44_2 = L29_2 - L30_2
    if L31_2 ~= L44_2 then
      L44_2 = print
      L45_2 = "[tk_housing] migration WARNING: property %s furniture decoded=%d skipped=%d inserted=%d (rows went missing)"
      L46_2 = L45_2
      L45_2 = L45_2.format
      L47_2 = tostring
      L48_2 = L27_2
      L47_2 = L47_2(L48_2)
      L48_2 = L29_2
      L49_2 = L30_2
      L50_2 = L31_2
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2, L50_2)
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    elseif L30_2 > 0 then
      L44_2 = print
      L45_2 = "[tk_housing] migration: property %s furniture decoded=%d inserted=%d (%d skipped: bad model)"
      L46_2 = L45_2
      L45_2 = L45_2.format
      L47_2 = tostring
      L48_2 = L27_2
      L47_2 = L47_2(L48_2)
      L48_2 = L29_2
      L49_2 = L31_2
      L50_2 = L30_2
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2, L50_2)
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    else
      L44_2 = print
      L45_2 = "[tk_housing] migration: property %s furniture decoded=%d inserted=%d"
      L46_2 = L45_2
      L45_2 = L45_2.format
      L47_2 = tostring
      L48_2 = L27_2
      L47_2 = L47_2(L48_2)
      L48_2 = L29_2
      L49_2 = L31_2
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2)
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    end
    L44_2 = #L43_2
    L45_2 = L38_2 - L39_2
    if L44_2 ~= L45_2 then
      L44_2 = print
      L45_2 = "[tk_housing] migration WARNING: property %s vehicles decoded=%d skipped=%d inserted=%d (duplicate plate, only one kept)"
      L46_2 = L45_2
      L45_2 = L45_2.format
      L47_2 = tostring
      L48_2 = L27_2
      L47_2 = L47_2(L48_2)
      L48_2 = L38_2
      L49_2 = L39_2
      L50_2 = #L43_2
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2, L50_2)
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    elseif L39_2 > 0 then
      L44_2 = print
      L45_2 = "[tk_housing] migration: property %s vehicles decoded=%d inserted=%d (%d skipped: no plate or no data)"
      L46_2 = L45_2
      L45_2 = L45_2.format
      L47_2 = tostring
      L48_2 = L27_2
      L47_2 = L47_2(L48_2)
      L48_2 = L38_2
      L49_2 = #L43_2
      L50_2 = L39_2
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2, L50_2)
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    else
      L44_2 = print
      L45_2 = "[tk_housing] migration: property %s vehicles decoded=%d inserted=%d"
      L46_2 = L45_2
      L45_2 = L45_2.format
      L47_2 = tostring
      L48_2 = L27_2
      L47_2 = L47_2(L48_2)
      L48_2 = L38_2
      L49_2 = #L43_2
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L45_2(L46_2, L47_2, L48_2, L49_2)
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
    end
    if L33_2 then
      L16_2 = L16_2 + 1
    end
    if L33_2 or L30_2 > 0 or L34_2 or L39_2 > 0 or L40_2 then
      L44_2 = {}
      L44_2.badDecode = L33_2
      L44_2.skippedFurnitureCount = L30_2
      L44_2.dupFurnitureId = L34_2
      L44_2.skippedVehicleCount = L39_2
      L44_2.dupVehiclePlate = L40_2
      L19_2[L27_2] = L44_2
    end
  end
  L21_2 = L8_2
  L22_2 = "furniture_house"
  L23_2 = "furniture_house_legacy"
  L21_2 = L21_2(L22_2, L23_2)
  L22_2 = L8_2
  L23_2 = "furniture_garage"
  L24_2 = "furniture_garage_legacy"
  L22_2 = L22_2(L23_2, L24_2)
  L21_2 = L22_2 or L21_2
  if L22_2 then
  end
  L22_2 = L8_2
  L23_2 = "furniture_yard"
  L24_2 = "furniture_yard_legacy"
  L22_2 = L22_2(L23_2, L24_2)
  L21_2 = L22_2 or L21_2
  if L22_2 then
  end
  L22_2 = L8_2
  L23_2 = "vehicles"
  L24_2 = "vehicles_legacy"
  L22_2 = L22_2(L23_2, L24_2)
  L21_2 = L22_2 or L21_2
  if L22_2 then
  end
  if L16_2 > 0 then
    L22_2 = print
    L23_2 = "[tk_housing] migration WARNING: %d properties could not be moved (see the warnings above). Their old JSON is kept in the *_legacy columns. Fix them by hand before you run housingdropbackups"
    L24_2 = L23_2
    L23_2 = L23_2.format
    L25_2 = L16_2
    L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L23_2(L24_2, L25_2)
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
  end
  if not L21_2 then
    L22_2 = print
    L23_2 = "[tk_housing] migration WARNING: the rows were written but the old columns could not all be renamed. This is usually a MariaDB dump on MySQL 8, where json_valid CHECK constraints block the rename. Drop those constraints by hand and restart. Until then this runs again every boot and writes the old values back over newer changes"
    L22_2(L23_2)
  elseif 0 == L16_2 then
    L22_2 = print
    L23_2 = "[tk_housing] migration: old furniture/vehicle columns renamed to *_legacy. Kept as a backup, housingdropbackups removes them"
    L22_2(L23_2)
    L22_2 = print
    L23_2 = "[tk_housing] migration complete: properties=%d furniture rows=%d vehicle rows=%d"
    L24_2 = L23_2
    L23_2 = L23_2.format
    L25_2 = L13_2
    L26_2 = L14_2
    L27_2 = L15_2
    L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
  end
  L22_2 = Main
  L22_2 = L22_2.VerifyBackfill
  L23_2 = L17_2
  L24_2 = L18_2
  L25_2 = L19_2
  return L22_2(L23_2, L24_2, L25_2)
end
L5_1.BackfillFurnitureVehicleRows = L6_1
L5_1 = Main
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2
  L3_2 = 0.01
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = type
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if "number" == L2_3 then
      L2_3 = type
      L3_3 = A1_3
      L2_3 = L2_3(L3_3)
      if "number" == L2_3 then
        goto lbl_16
      end
    end
    L2_3 = A0_3 == A1_3
    do return L2_3 end
    ::lbl_16::
    L2_3 = math
    L2_3 = L2_3.abs
    L3_3 = A0_3 - A1_3
    L2_3 = L2_3(L3_3)
    L3_3 = L3_2
    L2_3 = L2_3 <= L3_3
    return L2_3
  end
  L5_2 = print
  L6_2 = "[tk_housing] migration: starting verification"
  L5_2(L6_2)
  L5_2 = FurnitureDb
  L5_2 = L5_2.LoadAll
  L5_2 = L5_2()
  L6_2 = VehicleDb
  L6_2 = L6_2.LoadAll
  L6_2 = L6_2()
  L7_2 = true
  L8_2 = pairs
  L9_2 = A0_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L5_2[L12_2]
    if not L14_2 then
      L14_2 = {}
      L15_2 = {}
      L14_2.house = L15_2
      L15_2 = {}
      L14_2.garage = L15_2
      L15_2 = {}
      L14_2.yard = L15_2
    end
    L15_2 = pairs
    L16_2 = L13_2
    L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
    for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
      L21_2 = {}
      L22_2 = 0
      L23_2 = ipairs
      L24_2 = L14_2[L19_2]
      if not L24_2 then
        L24_2 = {}
      end
      L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2)
      for L27_2, L28_2 in L23_2, L24_2, L25_2, L26_2 do
        L29_2 = tostring
        L30_2 = L28_2.id
        L29_2 = L29_2(L30_2)
        L21_2[L29_2] = L28_2
        L22_2 = L22_2 + 1
      end
      L23_2 = 0
      L24_2 = pairs
      L25_2 = L20_2
      L24_2, L25_2, L26_2, L27_2 = L24_2(L25_2)
      for L28_2, L29_2 in L24_2, L25_2, L26_2, L27_2 do
        L23_2 = L23_2 + 1
        L30_2 = L21_2[L28_2]
        if not L30_2 then
          L7_2 = false
          L31_2 = print
          L32_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture \"%s\" missing after reload"
          L33_2 = L32_2
          L32_2 = L32_2.format
          L34_2 = tostring
          L35_2 = L12_2
          L34_2 = L34_2(L35_2)
          L35_2 = L19_2
          L36_2 = L28_2
          L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L32_2(L33_2, L34_2, L35_2, L36_2)
          L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        else
          L31_2 = L30_2.model
          L32_2 = L29_2.model
          if L31_2 ~= L32_2 then
            L7_2 = false
            L31_2 = print
            L32_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture \"%s\" model expected=%s got=%s"
            L33_2 = L32_2
            L32_2 = L32_2.format
            L34_2 = tostring
            L35_2 = L12_2
            L34_2 = L34_2(L35_2)
            L35_2 = L19_2
            L36_2 = L28_2
            L37_2 = tostring
            L38_2 = L29_2.model
            L37_2 = L37_2(L38_2)
            L38_2 = tostring
            L39_2 = L30_2.model
            L38_2, L39_2, L40_2, L41_2 = L38_2(L39_2)
            L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
            L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          end
          L31_2 = L30_2.coords
          if not L31_2 then
            L31_2 = {}
          end
          L32_2 = L30_2.rotation
          if not L32_2 then
            L32_2 = {}
          end
          L33_2 = L4_2
          L34_2 = L31_2.x
          L35_2 = L29_2.pos_x
          L33_2 = L33_2(L34_2, L35_2)
          if L33_2 then
            L33_2 = L4_2
            L34_2 = L31_2.y
            L35_2 = L29_2.pos_y
            L33_2 = L33_2(L34_2, L35_2)
            if L33_2 then
              L33_2 = L4_2
              L34_2 = L31_2.z
              L35_2 = L29_2.pos_z
              L33_2 = L33_2(L34_2, L35_2)
              if L33_2 then
                goto lbl_137
              end
            end
          end
          L7_2 = false
          L33_2 = print
          L34_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture \"%s\" coords do not match after reload"
          L35_2 = L34_2
          L34_2 = L34_2.format
          L36_2 = tostring
          L37_2 = L12_2
          L36_2 = L36_2(L37_2)
          L37_2 = L19_2
          L38_2 = L28_2
          L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L34_2(L35_2, L36_2, L37_2, L38_2)
          L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          ::lbl_137::
          L33_2 = L4_2
          L34_2 = L32_2.x
          L35_2 = L29_2.rot_x
          L33_2 = L33_2(L34_2, L35_2)
          if L33_2 then
            L33_2 = L4_2
            L34_2 = L32_2.y
            L35_2 = L29_2.rot_y
            L33_2 = L33_2(L34_2, L35_2)
            if L33_2 then
              L33_2 = L4_2
              L34_2 = L32_2.z
              L35_2 = L29_2.rot_z
              L33_2 = L33_2(L34_2, L35_2)
              if L33_2 then
                goto lbl_166
              end
            end
          end
          L7_2 = false
          L33_2 = print
          L34_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture \"%s\" rotation does not match after reload"
          L35_2 = L34_2
          L34_2 = L34_2.format
          L36_2 = tostring
          L37_2 = L12_2
          L36_2 = L36_2(L37_2)
          L37_2 = L19_2
          L38_2 = L28_2
          L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L34_2(L35_2, L36_2, L37_2, L38_2)
          L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          ::lbl_166::
          L33_2 = L29_2.storage_code
          if nil ~= L33_2 then
            L33_2 = L30_2.code
            L34_2 = L29_2.storage_code
            if L33_2 ~= L34_2 then
              L7_2 = false
              L33_2 = print
              L34_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture \"%s\" storage code expected=%s got=%s"
              L35_2 = L34_2
              L34_2 = L34_2.format
              L36_2 = tostring
              L37_2 = L12_2
              L36_2 = L36_2(L37_2)
              L37_2 = L19_2
              L38_2 = L28_2
              L39_2 = tostring
              L40_2 = L29_2.storage_code
              L39_2 = L39_2(L40_2)
              L40_2 = tostring
              L41_2 = L30_2.code
              L40_2, L41_2 = L40_2(L41_2)
              L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L34_2(L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
              L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
            end
          end
          L33_2 = L29_2.storage_items
          if nil ~= L33_2 then
            L33_2 = L30_2.items
            if nil == L33_2 then
              L7_2 = false
              L33_2 = print
              L34_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture \"%s\" storage items missing after reload"
              L35_2 = L34_2
              L34_2 = L34_2.format
              L36_2 = tostring
              L37_2 = L12_2
              L36_2 = L36_2(L37_2)
              L37_2 = L19_2
              L38_2 = L28_2
              L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L34_2(L35_2, L36_2, L37_2, L38_2)
              L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
            end
          end
        end
      end
      if L22_2 ~= L23_2 then
        L7_2 = false
        L24_2 = print
        L25_2 = "[tk_housing] VERIFY MISMATCH: property %s %s furniture count expected=%d reloaded=%d"
        L26_2 = L25_2
        L25_2 = L25_2.format
        L27_2 = tostring
        L28_2 = L12_2
        L27_2 = L27_2(L28_2)
        L28_2 = L19_2
        L29_2 = L23_2
        L30_2 = L22_2
        L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
        L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
      end
    end
  end
  L8_2 = pairs
  L9_2 = A1_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = {}
    L15_2 = 0
    L16_2 = ipairs
    L17_2 = L6_2[L12_2]
    if not L17_2 then
      L17_2 = {}
    end
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
    for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
      L22_2 = type
      L23_2 = L21_2.props
      L22_2 = L22_2(L23_2)
      if "table" == L22_2 then
        L22_2 = L21_2.props
        L22_2 = L22_2.plate
        if L22_2 then
          goto lbl_255
        end
      end
      L22_2 = nil
      ::lbl_255::
      L23_2 = type
      L24_2 = L22_2
      L23_2 = L23_2(L24_2)
      if "string" == L23_2 then
        L24_2 = L22_2
        L23_2 = L22_2.gsub
        L25_2 = "%s+$"
        L26_2 = ""
        L23_2 = L23_2(L24_2, L25_2, L26_2)
        L24_2 = L23_2
        L23_2 = L23_2.gsub
        L25_2 = "^%s+"
        L26_2 = ""
        L23_2 = L23_2(L24_2, L25_2, L26_2)
        L22_2 = L23_2
        L14_2[L22_2] = L21_2
        L15_2 = L15_2 + 1
      end
    end
    L16_2 = pairs
    L17_2 = L13_2.byPlate
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
    for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
      L22_2 = L14_2[L20_2]
      if not L22_2 then
        L7_2 = false
        L23_2 = print
        L24_2 = "[tk_housing] VERIFY MISMATCH: property %s vehicle plate \"%s\" missing after reload"
        L25_2 = L24_2
        L24_2 = L24_2.format
        L26_2 = tostring
        L27_2 = L12_2
        L26_2 = L26_2(L27_2)
        L27_2 = L20_2
        L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L24_2(L25_2, L26_2, L27_2)
        L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
      else
        L23_2 = L4_2
        L24_2 = L22_2.fuel
        L25_2 = L21_2.fuel
        L23_2 = L23_2(L24_2, L25_2)
        if not L23_2 then
          L7_2 = false
          L23_2 = print
          L24_2 = "[tk_housing] VERIFY MISMATCH: property %s vehicle \"%s\" fuel expected=%s got=%s"
          L25_2 = L24_2
          L24_2 = L24_2.format
          L26_2 = tostring
          L27_2 = L12_2
          L26_2 = L26_2(L27_2)
          L27_2 = L20_2
          L28_2 = tostring
          L29_2 = L21_2.fuel
          L28_2 = L28_2(L29_2)
          L29_2 = tostring
          L30_2 = L22_2.fuel
          L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L29_2(L30_2)
          L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        end
        L23_2 = L4_2
        L24_2 = L22_2.engineHealth
        L25_2 = L21_2.engine_health
        L23_2 = L23_2(L24_2, L25_2)
        if not L23_2 then
          L7_2 = false
          L23_2 = print
          L24_2 = "[tk_housing] VERIFY MISMATCH: property %s vehicle \"%s\" engine health expected=%s got=%s"
          L25_2 = L24_2
          L24_2 = L24_2.format
          L26_2 = tostring
          L27_2 = L12_2
          L26_2 = L26_2(L27_2)
          L27_2 = L20_2
          L28_2 = tostring
          L29_2 = L21_2.engine_health
          L28_2 = L28_2(L29_2)
          L29_2 = tostring
          L30_2 = L22_2.engineHealth
          L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L29_2(L30_2)
          L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        end
        L23_2 = type
        L24_2 = L21_2.props
        L23_2 = L23_2(L24_2)
        if "table" == L23_2 then
          L23_2 = L21_2.props
          L23_2 = L23_2.model
          if L23_2 then
            goto lbl_347
          end
        end
        L23_2 = nil
        ::lbl_347::
        L24_2 = type
        L25_2 = L22_2.props
        L24_2 = L24_2(L25_2)
        if "table" == L24_2 then
          L24_2 = L22_2.props
          L24_2 = L24_2.model
          if L24_2 then
            goto lbl_357
          end
        end
        L24_2 = nil
        ::lbl_357::
        if L23_2 ~= L24_2 then
          L7_2 = false
          L25_2 = print
          L26_2 = "[tk_housing] VERIFY MISMATCH: property %s vehicle \"%s\" model expected=%s got=%s"
          L27_2 = L26_2
          L26_2 = L26_2.format
          L28_2 = tostring
          L29_2 = L12_2
          L28_2 = L28_2(L29_2)
          L29_2 = L20_2
          L30_2 = tostring
          L31_2 = L23_2
          L30_2 = L30_2(L31_2)
          L31_2 = tostring
          L32_2 = L24_2
          L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L31_2(L32_2)
          L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        end
      end
    end
    L16_2 = L13_2.count
    if L15_2 ~= L16_2 then
      L7_2 = false
      L16_2 = print
      L17_2 = "[tk_housing] VERIFY MISMATCH: property %s vehicle count expected=%d reloaded=%d"
      L18_2 = L17_2
      L17_2 = L17_2.format
      L19_2 = tostring
      L20_2 = L12_2
      L19_2 = L19_2(L20_2)
      L20_2 = L13_2.count
      L21_2 = L15_2
      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
    end
  end
  L8_2 = pairs
  L9_2 = A2_2 or L9_2
  if not A2_2 then
    L9_2 = {}
  end
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = {}
    L15_2 = L13_2.badDecode
    if L15_2 then
      L15_2 = #L14_2
      L15_2 = L15_2 + 1
      L14_2[L15_2] = "old JSON could not be read"
    end
    L15_2 = L13_2.skippedFurnitureCount
    if L15_2 > 0 then
      L15_2 = #L14_2
      L15_2 = L15_2 + 1
      L16_2 = L13_2.skippedFurnitureCount
      L17_2 = " furniture piece(s) skipped (bad model)"
      L16_2 = L16_2 .. L17_2
      L14_2[L15_2] = L16_2
    end
    L15_2 = L13_2.dupFurnitureId
    if L15_2 then
      L15_2 = #L14_2
      L15_2 = L15_2 + 1
      L14_2[L15_2] = "two furniture pieces shared an id"
    end
    L15_2 = L13_2.skippedVehicleCount
    if L15_2 > 0 then
      L15_2 = #L14_2
      L15_2 = L15_2 + 1
      L16_2 = L13_2.skippedVehicleCount
      L17_2 = " vehicle(s) skipped (no plate or no data)"
      L16_2 = L16_2 .. L17_2
      L14_2[L15_2] = L16_2
    end
    L15_2 = L13_2.dupVehiclePlate
    if L15_2 then
      L15_2 = #L14_2
      L15_2 = L15_2 + 1
      L14_2[L15_2] = "two vehicles shared a plate"
    end
    L7_2 = false
    L15_2 = print
    L16_2 = "[tk_housing] VERIFY MISMATCH: property %s lost data before it was saved: %s"
    L17_2 = L16_2
    L16_2 = L16_2.format
    L18_2 = tostring
    L19_2 = L12_2
    L18_2 = L18_2(L19_2)
    L19_2 = table
    L19_2 = L19_2.concat
    L20_2 = L14_2
    L21_2 = ", "
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L19_2(L20_2, L21_2)
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
  end
  if L7_2 then
    L8_2 = print
    L9_2 = "[tk_housing] migration: verification PASSED: model, position, rotation, storage code and row counts match the old data (storage contents, vehicle coords and heading were not checked)"
    L8_2(L9_2)
  else
    L8_2 = print
    L9_2 = "[tk_housing] migration: verification FAILED. Some properties do not match (see the VERIFY MISMATCH lines above). The old data is kept and can still be recovered. Do NOT run housingdropbackups yet"
    L8_2(L9_2)
  end
end
L5_1.VerifyBackfill = L6_1
L5_1 = Config
L5_1 = L5_1.Commands
L5_1 = L5_1.dropBackups
if L5_1 then
  L5_1 = Config
  L5_1 = L5_1.Commands
  L5_1 = L5_1.dropBackups
  if "" ~= L5_1 then
    L5_1 = RegisterCommand
    L6_1 = Config
    L6_1 = L6_1.Commands
    L6_1 = L6_1.dropBackups
    function L7_1(A0_2, A1_2)
      local L2_2, L3_2
      if 0 ~= A0_2 then
        return
      end
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
        function L0_3(A0_4)
          local L1_4, L2_4
          L1_4 = L1_1
          L2_4 = A0_4
          L1_4 = L1_4(L2_4)
          if not L1_4 then
            L1_4 = false
            return L1_4
          end
          L1_4 = pcall
          function L2_4()
            local L0_5, L1_5, L2_5, L3_5
            L0_5 = MySQL
            L0_5 = L0_5.Sync
            L0_5 = L0_5.fetchScalar
            L1_5 = "SELECT COUNT(1) FROM `"
            L2_5 = A0_4
            L3_5 = "`"
            L1_5 = L1_5 .. L2_5 .. L3_5
            L0_5(L1_5)
          end
          L1_4 = L1_4(L2_4)
          return L1_4
        end
        L1_3 = L0_3
        L2_3 = "tk_housing_furniture"
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = L0_3
          L2_3 = "tk_housing_vehicles"
          L1_3 = L1_3(L2_3)
          if L1_3 then
            goto lbl_16
          end
        end
        L1_3 = print
        L2_3 = "[tk_housing] ABORT backup drop. tk_housing_furniture or tk_housing_vehicles could not be read. Nothing dropped"
        L1_3(L2_3)
        do return end
        ::lbl_16::
        L1_3 = MySQL
        L1_3 = L1_3.Sync
        L1_3 = L1_3.fetchScalar
        L2_3 = "SELECT COUNT(1) FROM `tk_housing_furniture` WHERE `position` IS NULL OR `rotation` IS NULL"
        L1_3 = L1_3(L2_3)
        L2_3 = type
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if "number" ~= L2_3 or L1_3 > 0 then
          L2_3 = print
          L3_3 = "[tk_housing] ABORT backup drop. %s furniture rows still have no position or rotation. Nothing dropped"
          L4_3 = L3_3
          L3_3 = L3_3.format
          L5_3 = tostring
          L6_3 = L1_3
          L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L5_3(L6_3)
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          return
        end
        function L2_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
          L2_4 = L0_1
          L3_4 = "tk_housing_properties"
          L4_4 = A0_4
          L2_4 = L2_4(L3_4, L4_4)
          if not L2_4 then
            L2_4 = {}
            L3_4 = 0
            return L2_4, L3_4
          end
          L2_4 = "p.`%s` IS NOT NULL AND p.`%s` NOT IN ('', '[]', '{}', 'null') AND NOT EXISTS (%s)"
          L3_4 = L2_4
          L2_4 = L2_4.format
          L4_4 = A0_4
          L5_4 = A0_4
          L6_4 = A1_4
          L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
          L3_4 = MySQL
          L3_4 = L3_4.Sync
          L3_4 = L3_4.fetchScalar
          L4_4 = "SELECT COUNT(1) FROM `tk_housing_properties` p WHERE "
          L5_4 = L2_4
          L4_4 = L4_4 .. L5_4
          L3_4 = L3_4(L4_4)
          L4_4 = type
          L5_4 = L3_4
          L4_4 = L4_4(L5_4)
          if "number" ~= L4_4 then
            L4_4 = {}
            L5_4 = nil
            return L4_4, L5_4
          end
          L4_4 = {}
          if L3_4 > 0 then
            L5_4 = MySQL
            L5_4 = L5_4.Sync
            L5_4 = L5_4.fetchAll
            L6_4 = "SELECT p.id FROM `tk_housing_properties` p WHERE "
            L7_4 = L2_4
            L8_4 = " LIMIT 10"
            L6_4 = L6_4 .. L7_4 .. L8_4
            L5_4 = L5_4(L6_4)
            if not L5_4 then
              L5_4 = {}
            end
            L6_4 = ipairs
            L7_4 = L5_4
            L6_4, L7_4, L8_4, L9_4 = L6_4(L7_4)
            for L10_4, L11_4 in L6_4, L7_4, L8_4, L9_4 do
              L12_4 = #L4_4
              L12_4 = L12_4 + 1
              L13_4 = L11_4.id
              L4_4[L12_4] = L13_4
            end
          end
          L5_4 = L4_4
          L6_4 = L3_4
          return L5_4, L6_4
        end
        L3_3 = {}
        L4_3 = 0
        L5_3 = ipairs
        L6_3 = {}
        L7_3 = {}
        L7_3.col = "furniture_house_legacy"
        L7_3.match = "SELECT 1 FROM `tk_housing_furniture` f WHERE f.property_id = p.id AND f.furniture_type = 'house'"
        L8_3 = {}
        L8_3.col = "furniture_garage_legacy"
        L8_3.match = "SELECT 1 FROM `tk_housing_furniture` f WHERE f.property_id = p.id AND f.furniture_type = 'garage'"
        L9_3 = {}
        L9_3.col = "furniture_yard_legacy"
        L9_3.match = "SELECT 1 FROM `tk_housing_furniture` f WHERE f.property_id = p.id AND f.furniture_type = 'yard'"
        L10_3 = {}
        L10_3.col = "vehicles_legacy"
        L10_3.match = "SELECT 1 FROM `tk_housing_vehicles` v WHERE v.property_id = p.id"
        L6_3[1] = L7_3
        L6_3[2] = L8_3
        L6_3[3] = L9_3
        L6_3[4] = L10_3
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
          L11_3 = L2_3
          L12_3 = L10_3.col
          L13_3 = L10_3.match
          L11_3, L12_3 = L11_3(L12_3, L13_3)
          if not L12_3 then
            L13_3 = print
            L14_3 = "[tk_housing] ABORT backup drop. Could not check %s against the new tables. Nothing dropped"
            L15_3 = L14_3
            L14_3 = L14_3.format
            L16_3 = L10_3.col
            L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L14_3(L15_3, L16_3)
            L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
            return
          end
          if L12_3 > 0 then
            L13_3 = #L3_3
            L13_3 = L13_3 + 1
            L14_3 = {}
            L15_3 = L10_3.col
            L14_3.col = L15_3
            L14_3.count = L12_3
            L14_3.ids = L11_3
            L3_3[L13_3] = L14_3
            L4_3 = L4_3 + L12_3
          end
        end
        if L4_3 > 0 then
          L5_3 = A1_2
          L5_3 = L5_3[1]
          L5_3 = "confirm" == L5_3
          if not L5_3 then
            L6_3 = print
            L7_3 = "[tk_housing] ABORT backup drop. These properties have backup data with no matching rows:"
            L6_3(L7_3)
            L6_3 = ipairs
            L7_3 = L3_3
            L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
            for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
              L12_3 = print
              L13_3 = "[tk_housing]   %s: %d properties, e.g. ids %s"
              L14_3 = L13_3
              L13_3 = L13_3.format
              L15_3 = L11_3.col
              L16_3 = L11_3.count
              L17_3 = table
              L17_3 = L17_3.concat
              L18_3 = L11_3.ids
              L19_3 = ", "
              L17_3, L18_3, L19_3 = L17_3(L18_3, L19_3)
              L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
            end
            L6_3 = print
            L7_3 = "[tk_housing] EITHER the move missed them (the backup is their only copy) OR the owner deleted all their furniture and vehicles after a good migration (safe to drop). Check which, then run \""
            L8_3 = Config
            L8_3 = L8_3.Commands
            L8_3 = L8_3.dropBackups
            L9_3 = " confirm force\" to drop anyway. Nothing dropped"
            L7_3 = L7_3 .. L8_3 .. L9_3
            L6_3(L7_3)
            return
          end
          L6_3 = print
          L7_3 = "[tk_housing] backup check skipped by force, dropping anyway"
          L6_3(L7_3)
        end
        L5_3 = A1_2
        L5_3 = L5_3[1]
        if "confirm" ~= L5_3 then
          L5_3 = {}
          function L6_3(A0_4, A1_4)
            local L2_4, L3_4, L4_4, L5_4, L6_4
            L2_4 = L0_1
            L3_4 = A0_4
            L4_4 = A1_4
            L2_4 = L2_4(L3_4, L4_4)
            if L2_4 then
              L2_4 = L5_3
              L2_4 = #L2_4
              L3_4 = L2_4 + 1
              L2_4 = L5_3
              L4_4 = A0_4
              L5_4 = "."
              L6_4 = A1_4
              L4_4 = L4_4 .. L5_4 .. L6_4
              L2_4[L3_4] = L4_4
            end
          end
          L7_3 = L6_3
          L8_3 = "tk_housing_properties"
          L9_3 = "furniture_house_legacy"
          L7_3(L8_3, L9_3)
          L7_3 = L6_3
          L8_3 = "tk_housing_properties"
          L9_3 = "furniture_garage_legacy"
          L7_3(L8_3, L9_3)
          L7_3 = L6_3
          L8_3 = "tk_housing_properties"
          L9_3 = "furniture_yard_legacy"
          L7_3(L8_3, L9_3)
          L7_3 = L6_3
          L8_3 = "tk_housing_properties"
          L9_3 = "vehicles_legacy"
          L7_3(L8_3, L9_3)
          L7_3 = L6_3
          L8_3 = "tk_housing_properties"
          L9_3 = "house_interior_legacy_hash"
          L7_3(L8_3, L9_3)
          L7_3 = #L5_3
          if 0 == L7_3 then
            L7_3 = print
            L8_3 = "[tk_housing] no backup columns present, nothing to drop"
            L7_3(L8_3)
          else
            L7_3 = print
            L8_3 = "[tk_housing] "
            L9_3 = Config
            L9_3 = L9_3.Commands
            L9_3 = L9_3.dropBackups
            L10_3 = " would PERMANENTLY drop: "
            L11_3 = table
            L11_3 = L11_3.concat
            L12_3 = L5_3
            L13_3 = ", "
            L11_3 = L11_3(L12_3, L13_3)
            L8_3 = L8_3 .. L9_3 .. L10_3 .. L11_3
            L7_3(L8_3)
            L7_3 = print
            L8_3 = "[tk_housing] nothing dropped. Run \""
            L9_3 = Config
            L9_3 = L9_3.Commands
            L9_3 = L9_3.dropBackups
            L10_3 = " confirm\" to proceed (IRREVERSIBLE)"
            L8_3 = L8_3 .. L9_3 .. L10_3
            L7_3(L8_3)
          end
          return
        end
        L5_3 = print
        L6_3 = "[tk_housing] dropping migration backup columns. This is IRREVERSIBLE"
        L5_3(L6_3)
        L5_3 = 0
        function L6_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4
          L2_4 = L0_1
          L3_4 = A0_4
          L4_4 = A1_4
          L2_4 = L2_4(L3_4, L4_4)
          if not L2_4 then
            return
          end
          L2_4 = MySQL
          L2_4 = L2_4.Sync
          L2_4 = L2_4.execute
          L3_4 = "ALTER TABLE `%s` DROP COLUMN `%s`"
          L4_4 = L3_4
          L3_4 = L3_4.format
          L5_4 = A0_4
          L6_4 = A1_4
          L3_4, L4_4, L5_4, L6_4 = L3_4(L4_4, L5_4, L6_4)
          L2_4(L3_4, L4_4, L5_4, L6_4)
          L2_4 = L5_3
          L2_4 = L2_4 + 1
          L5_3 = L2_4
          L2_4 = print
          L3_4 = "[tk_housing] dropped backup column %s.%s"
          L4_4 = L3_4
          L3_4 = L3_4.format
          L5_4 = A0_4
          L6_4 = A1_4
          L3_4, L4_4, L5_4, L6_4 = L3_4(L4_4, L5_4, L6_4)
          L2_4(L3_4, L4_4, L5_4, L6_4)
        end
        L7_3 = L6_3
        L8_3 = "tk_housing_properties"
        L9_3 = "furniture_house_legacy"
        L7_3(L8_3, L9_3)
        L7_3 = L6_3
        L8_3 = "tk_housing_properties"
        L9_3 = "furniture_garage_legacy"
        L7_3(L8_3, L9_3)
        L7_3 = L6_3
        L8_3 = "tk_housing_properties"
        L9_3 = "furniture_yard_legacy"
        L7_3(L8_3, L9_3)
        L7_3 = L6_3
        L8_3 = "tk_housing_properties"
        L9_3 = "vehicles_legacy"
        L7_3(L8_3, L9_3)
        L7_3 = L0_1
        L8_3 = "tk_housing_properties"
        L9_3 = "house_interior_legacy_hash"
        L7_3 = L7_3(L8_3, L9_3)
        if L7_3 then
          L7_3 = MySQL
          L7_3 = L7_3.Sync
          L7_3 = L7_3.fetchScalar
          L8_3 = "SELECT COUNT(1) FROM `tk_housing_properties` WHERE `house_interior_legacy_hash` IS NOT NULL AND `house_interior` IS NULL"
          L7_3 = L7_3(L8_3)
          L8_3 = type
          L9_3 = L7_3
          L8_3 = L8_3(L9_3)
          if "number" ~= L8_3 or L7_3 > 0 then
            L8_3 = print
            L9_3 = "[tk_housing] REFUSED house_interior_legacy_hash drop. %s saved hashes still have no house_interior key, column kept"
            L10_3 = L9_3
            L9_3 = L9_3.format
            L11_3 = tostring
            L12_3 = L7_3
            L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L11_3(L12_3)
            L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          else
            L8_3 = L6_3
            L9_3 = "tk_housing_properties"
            L10_3 = "house_interior_legacy_hash"
            L8_3(L9_3, L10_3)
          end
        end
        if 0 == L5_3 then
          L7_3 = print
          L8_3 = "[tk_housing] no backup columns present, nothing dropped"
          L7_3(L8_3)
        else
          L7_3 = print
          L8_3 = "[tk_housing] backup cleanup done: %d columns dropped permanently"
          L9_3 = L8_3
          L8_3 = L8_3.format
          L10_3 = L5_3
          L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3, L10_3)
          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        end
      end
      L2_2(L3_2)
    end
    L8_1 = true
    L5_1(L6_1, L7_1, L8_1)
  end
end
L5_1 = Main
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  L1_2 = "tk_housing_properties"
  L2_2 = "linking_doors"
  L3_2 = "door_links"
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if L0_2 then
    L0_2 = print
    L1_2 = "[tk_housing] migration: renamed tk_housing_properties.linking_doors -> door_links"
    L0_2(L1_2)
  else
    L0_2 = L0_1
    L1_2 = "tk_housing_properties"
    L2_2 = "linking_doors"
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = print
      L1_2 = "[tk_housing] migration WARNING: could not rename tk_housing_properties.linking_doors to door_links. Usually a json_valid CHECK constraint, no properties will load until this is fixed"
      L0_2(L1_2)
    end
  end
end
L5_1.MigrateRenameLinkingDoors = L6_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = tonumber
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 or L1_2
    if not L2_2 then
    end
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.NormalizeModelHash
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.HouseInteriors
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Utils
    L8_2 = L8_2.DoModelsMatch
    L9_2 = L7_2.model
    L10_2 = L1_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      return L6_2
    end
  end
  L2_2 = ShellNames
  L2_2 = L2_2.Rename
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.HouseInteriors
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Utils
    L9_2 = L9_2.DoModelsMatch
    L10_2 = L8_2.model
    L11_2 = L2_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L6_1 = Main
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "house_interior"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = L0_1
    L1_2 = "tk_housing_properties"
    L2_2 = "house_interior_key"
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = MySQL
      L0_2 = L0_2.Sync
      L0_2 = L0_2.execute
      L1_2 = "ALTER TABLE `tk_housing_properties` CHANGE COLUMN `house_interior_key` `house_interior` VARCHAR(64) NULL"
      L0_2(L1_2)
      L0_2 = print
      L1_2 = "[tk_housing] migration: finished the house_interior_key -> house_interior rename from an earlier boot"
      L0_2(L1_2)
    end
    return
  end
  L0_2 = L2_1
  L1_2 = "tk_housing_properties"
  L2_2 = "house_interior"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = type
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L2_2 = L0_2
    L1_2 = L0_2.lower
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_36
      L0_2 = L1_2 or L0_2
    end
  end
  L0_2 = ""
  ::lbl_36::
  L2_2 = L0_2
  L1_2 = L0_2.find
  L3_2 = "int"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = "tk_housing_properties"
  L3_2 = "house_interior_key"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `house_interior_key` VARCHAR(64) NULL"
    L1_2(L2_2)
  end
  L1_2 = print
  L2_2 = "[tk_housing] migration: starting house_interior hash -> key conversion"
  L1_2(L2_2)
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT id, house_interior FROM tk_housing_properties WHERE house_interior_key IS NULL AND house_interior IS NOT NULL"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = 0
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L5_1
    L11_2 = L9_2.house_interior
    L10_2 = L10_2(L11_2)
    if nil ~= L10_2 then
      L11_2 = MySQL
      L11_2 = L11_2.Sync
      L11_2 = L11_2.execute
      L12_2 = "UPDATE tk_housing_properties SET house_interior_key = ? WHERE id = ? AND house_interior_key IS NULL"
      L13_2 = {}
      L14_2 = L10_2
      L15_2 = L9_2.id
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L11_2(L12_2, L13_2)
      L2_2 = L2_2 + 1
    else
      L3_2 = L3_2 + 1
      L11_2 = print
      L12_2 = "[tk_housing] migration WARNING: property %s house_interior hash %s matches no Config.HouseInteriors entry, left empty (the hash is kept as a backup)"
      L13_2 = L12_2
      L12_2 = L12_2.format
      L14_2 = tostring
      L15_2 = L9_2.id
      L14_2 = L14_2(L15_2)
      L15_2 = tostring
      L16_2 = L9_2.house_interior
      L15_2, L16_2 = L15_2(L16_2)
      L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
  L4_2 = L0_1
  L5_2 = "tk_housing_properties"
  L6_2 = "house_interior"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = L0_1
    L5_2 = "tk_housing_properties"
    L6_2 = "house_interior_legacy_hash"
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = L2_1
      L5_2 = "tk_housing_properties"
      L6_2 = "house_interior"
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if "string" == L5_2 then
        L6_2 = L4_2
        L5_2 = L4_2.lower
        L5_2 = L5_2(L6_2)
        if L5_2 then
          goto lbl_131
          L4_2 = L5_2 or L4_2
        end
      end
      L4_2 = ""
      ::lbl_131::
      L6_2 = L4_2
      L5_2 = L4_2.find
      L7_2 = "int"
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "ALTER TABLE `tk_housing_properties` CHANGE COLUMN `house_interior` `house_interior_legacy_hash` BIGINT NULL"
        L5_2(L6_2)
      end
    end
  end
  L4_2 = L0_1
  L5_2 = "tk_housing_properties"
  L6_2 = "house_interior_key"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = L0_1
    L5_2 = "tk_housing_properties"
    L6_2 = "house_interior"
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = MySQL
      L4_2 = L4_2.Sync
      L4_2 = L4_2.execute
      L5_2 = "ALTER TABLE `tk_housing_properties` CHANGE COLUMN `house_interior_key` `house_interior` VARCHAR(64) NULL"
      L4_2(L5_2)
    end
  end
  L4_2 = L2_1
  L5_2 = "tk_housing_properties"
  L6_2 = "house_interior"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.lower
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_172
      L4_2 = L5_2 or L4_2
    end
  end
  L4_2 = ""
  ::lbl_172::
  L5_2 = L0_1
  L6_2 = "tk_housing_properties"
  L7_2 = "house_interior"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.find
    L7_2 = "int"
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = print
      L6_2 = "[tk_housing] migration complete: converted=%d unmatched=%d. house_interior now holds keys, the old hashes are kept in house_interior_legacy_hash"
      L7_2 = L6_2
      L6_2 = L6_2.format
      L8_2 = L2_2
      L9_2 = L3_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  else
    L5_2 = print
    L6_2 = "[tk_housing] migration: house_interior conversion did not finish, it carries on next boot (the old hashes are kept)"
    L5_2(L6_2)
  end
end
L6_1.MigrateHouseInteriorToKey = L7_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.NormalizeModelHash
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.GarageInteriors
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.model
    if L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.DoModelsMatch
      L9_2 = L7_2.model
      L10_2 = L1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        return L6_2
      end
    end
  end
  L2_2 = ShellNames
  L2_2 = L2_2.Rename
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.GarageInteriors
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.model
    if L9_2 then
      L9_2 = Utils
      L9_2 = L9_2.DoModelsMatch
      L10_2 = L8_2.model
      L11_2 = L2_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        return L7_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT id, garage_interior FROM tk_housing_properties WHERE garage_interior IS NOT NULL"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = {}
  end
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.garage_interior
    L8_2 = "(NULL)" == L8_2
    if not L8_2 then
      L9_2 = Config
      L9_2 = L9_2.GarageInteriors
      L10_2 = L7_2.garage_interior
      L9_2 = L9_2[L10_2]
      if not L9_2 then
        L9_2 = L6_1
        L10_2 = L7_2.garage_interior
        L9_2 = L9_2(L10_2)
        if nil ~= L9_2 then
          L10_2 = MySQL
          L10_2 = L10_2.Sync
          L10_2 = L10_2.execute
          L11_2 = "UPDATE tk_housing_properties SET garage_interior = ? WHERE id = ?"
          L12_2 = {}
          L13_2 = L9_2
          L14_2 = L7_2.id
          L12_2[1] = L13_2
          L12_2[2] = L14_2
          L10_2(L11_2, L12_2)
          L1_2 = L1_2 + 1
        else
          L10_2 = print
          L11_2 = "[tk_housing] migration WARNING: property %s garage_interior %s matches no Config.GarageInteriors entry, left unchanged"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = tostring
          L14_2 = L7_2.id
          L13_2 = L13_2(L14_2)
          L14_2 = tostring
          L15_2 = L7_2.garage_interior
          L14_2, L15_2 = L14_2(L15_2)
          L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
  end
  if L1_2 > 0 then
    L2_2 = print
    L3_2 = "[tk_housing] migration: renamed %d garage_interior value(s) to their new Config.GarageInteriors key"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
L7_1.MigrateGarageInteriorRename = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L1_2 = "tk_housing_bills"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L1_1
    L1_2 = "tk_housing_bill_history"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      return
    end
  end
  L0_2 = L3_1
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_bills` (
            `property_id`  %s           NOT NULL,
            `service`      VARCHAR(16)  NOT NULL,
            `connected`    TINYINT(1)   NOT NULL DEFAULT 1,
            `amount_owed`  BIGINT       NOT NULL DEFAULT 0,
            `last_charge`  BIGINT       NULL,
            `last_paid`    BIGINT       NULL,
            `due_at`       BIGINT       NULL,
            PRIMARY KEY (`property_id`, `service`),
            CONSTRAINT `fk_tk_bill_property`
                FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_bill_history` (
            `id`           INT          NOT NULL AUTO_INCREMENT,
            `property_id`  %s           NOT NULL,
            `service`      VARCHAR(16)  NOT NULL,
            `amount`       BIGINT       NOT NULL,
            `paid_at`      BIGINT       NOT NULL,
            PRIMARY KEY (`id`),
            KEY `property_id_paid_at` (`property_id`, `paid_at`),
            KEY `paid_at` (`paid_at`),
            CONSTRAINT `fk_tk_bill_history_property`
                FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "[tk_housing] migration: tk_housing_bills / tk_housing_bill_history tables added"
  L1_2(L2_2)
end
L7_1.MigrateBillsTables = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = false
  L1_2 = L0_1
  L2_2 = "tk_housing_properties"
  L3_2 = "mortgage"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `mortgage` JSON NULL DEFAULT NULL"
    L1_2(L2_2)
    L0_2 = true
  end
  L1_2 = L0_1
  L2_2 = "tk_housing_properties"
  L3_2 = "mortgage_terms"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `mortgage_terms` JSON NULL DEFAULT NULL"
    L1_2(L2_2)
    L0_2 = true
  end
  if L0_2 then
    L1_2 = print
    L2_2 = "[tk_housing] migration: tk_housing_properties mortgage/mortgage_terms columns added"
    L1_2(L2_2)
  end
end
L7_1.MigrateMortgageColumns = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "security"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `security` JSON NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties security column added"
  L0_2(L1_2)
end
L7_1.MigrateSecurityColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "interior_style"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `interior_style` JSON NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties interior_style column added"
  L0_2(L1_2)
end
L7_1.MigrateInteriorStyleColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "key_serial"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `key_serial` INT NOT NULL DEFAULT 0"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties key_serial column added"
  L0_2(L1_2)
end
L7_1.MigrateKeySerialColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "police_lockdown"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `police_lockdown` JSON NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties police_lockdown column added"
  L0_2(L1_2)
end
L7_1.MigratePoliceLockdownColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L1_2 = "tk_housing_furniture_stock"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L1_1
    L1_2 = "tk_housing_deliveries"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      return
    end
  end
  L0_2 = L3_1
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_furniture_stock` (
            `owner_kind` ENUM('player','property') NOT NULL,
            `owner_id`   VARCHAR(60) NOT NULL,
            `model`      BIGINT      NOT NULL,
            `quantity`   INT         NOT NULL DEFAULT 0,
            PRIMARY KEY (`owner_kind`, `owner_id`, `model`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L1_2(L2_2)
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_deliveries` (
            `id`          INT AUTO_INCREMENT PRIMARY KEY,
            `identifier`  VARCHAR(60) NOT NULL,
            `property_id` %s NOT NULL,
            `items`       JSON NOT NULL,
            `arrive_at`   BIGINT NOT NULL,
            `status`      ENUM('pending','collected') NOT NULL DEFAULT 'pending',
            CONSTRAINT `fk_tk_delivery_property`
                FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "[tk_housing] migration: tk_housing_furniture_stock / tk_housing_deliveries tables added"
  L1_2(L2_2)
end
L7_1.MigrateFurnitureAcquisitionTables = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L1_2 = "tk_housing_furniture_cart"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    return
  end
  L0_2 = L3_1
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_furniture_cart` (
            `property_id`    %s           NOT NULL,
            `furniture_type` ENUM('house','garage','yard') NOT NULL,
            `furniture_id`   VARCHAR(32)  NOT NULL,
            `model`          BIGINT       NOT NULL,
            `position`       JSON         NOT NULL,
            `rotation`       JSON         NOT NULL,
            PRIMARY KEY (`property_id`, `furniture_type`, `furniture_id`),
            CONSTRAINT `fk_tk_furniture_cart_property`
                FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "[tk_housing] migration: tk_housing_furniture_cart table added"
  L1_2(L2_2)
end
L7_1.MigrateFurnitureCartTable = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L1_2 = "tk_housing_businesses"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L1_1
    L1_2 = "tk_housing_business_grades"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L1_1
      L1_2 = "tk_housing_business_employees"
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = L1_1
        L1_2 = "tk_housing_business_transactions"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          return
        end
      end
    end
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_businesses` (
            `id`             INT          NOT NULL AUTO_INCREMENT,
            `name`           VARCHAR(64)  NOT NULL,
            `label`          VARCHAR(255) NOT NULL,
            `owner`          VARCHAR(60)  NULL DEFAULT NULL,
            `balance`        BIGINT       NOT NULL DEFAULT 0,
            `blip`           JSON NULL DEFAULT NULL,
            `stash`          JSON NULL DEFAULT NULL,
            `wardrobe`       JSON NULL DEFAULT NULL,
            `boss_menu`      JSON NULL DEFAULT NULL,
            `allowed_types`  JSON NULL DEFAULT NULL,
            `max_properties` INT  NULL DEFAULT NULL,
            `revenue`        JSON NULL DEFAULT NULL,
            PRIMARY KEY (`id`),
            UNIQUE KEY (`name`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L0_2(L1_2)
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_business_grades` (
            `business_id` INT          NOT NULL,
            `grade`       INT          NOT NULL,
            `label`       VARCHAR(255) NOT NULL,
            `salary`      BIGINT       NOT NULL DEFAULT 0,
            `permissions` JSON NULL DEFAULT NULL,
            PRIMARY KEY (`business_id`, `grade`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L0_2(L1_2)
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_business_employees` (
            `business_id` INT         NOT NULL,
            `identifier`  VARCHAR(60) NOT NULL,
            `grade`       INT         NOT NULL DEFAULT 0,
            `hired_at`    BIGINT      NOT NULL,
            PRIMARY KEY (`identifier`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L0_2(L1_2)
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS `tk_housing_business_transactions` (
            `id`          INT          NOT NULL AUTO_INCREMENT,
            `business_id` INT          NOT NULL,
            `kind`        VARCHAR(32)  NOT NULL,
            `amount`      BIGINT       NOT NULL,
            `actor`       VARCHAR(60)  NULL DEFAULT NULL,
            `note`        VARCHAR(255) NULL DEFAULT NULL,
            `breakdown`   JSON NULL DEFAULT NULL,
            `created_at`  BIGINT       NOT NULL,
            PRIMARY KEY (`id`),
            KEY (`business_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]]
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: real-estate business tables added"
  L0_2(L1_2)
end
L7_1.MigrateBusinessTables = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "business_id"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `business_id` INT NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties business_id column added"
  L0_2(L1_2)
end
L7_1.MigratePropertyBusinessColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "listed_by"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = MySQL
    L0_2 = L0_2.Sync
    L0_2 = L0_2.execute
    L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `listed_by` VARCHAR(60) NULL DEFAULT NULL"
    L0_2(L1_2)
    L0_2 = print
    L1_2 = "[tk_housing] migration: tk_housing_properties listed_by column added"
    L0_2(L1_2)
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "UPDATE `tk_housing_properties` SET `listed_by` = CONCAT('business:', `business_id`) "
  L2_2 = "WHERE `business_id` IS NOT NULL AND `owner` IS NULL AND `listed_by` IS NULL"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 and L0_2 > 0 then
    L1_2 = print
    L2_2 = "[tk_housing] migration: %d unsold business properties are now listed under their business"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = L0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L7_1.MigrateListedByColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L1_2 = "tk_housing_furniture"
  L2_2 = "speaker_group"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = MySQL
    L0_2 = L0_2.Sync
    L0_2 = L0_2.execute
    L1_2 = "ALTER TABLE `tk_housing_furniture` ADD COLUMN `speaker_group` VARCHAR(32) NULL"
    L0_2(L1_2)
    L0_2 = print
    L1_2 = "[tk_housing] migration: tk_housing_furniture speaker_group column added"
    L0_2(L1_2)
  end
  L0_2 = L1_1
  L1_2 = "tk_housing_speaker_groups"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = L3_1
    L0_2 = L0_2()
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.execute
    L2_2 = [[
            CREATE TABLE IF NOT EXISTS `tk_housing_speaker_groups` (
                `property_id` %s          NOT NULL,
                `group_id`    VARCHAR(32) NOT NULL,
                `name`        VARCHAR(64) NOT NULL,
                PRIMARY KEY (`property_id`, `group_id`),
                CONSTRAINT `fk_tk_speaker_group_property`
                    FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
                    ON DELETE CASCADE
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
        ]]
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = L0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = print
    L2_2 = "[tk_housing] migration: tk_housing_speaker_groups table added"
    L1_2(L2_2)
  end
end
L7_1.MigrateSpeakerGroups = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_furniture"
  L2_2 = "data"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_furniture` ADD COLUMN `data` JSON NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_furniture data column added"
  L0_2(L1_2)
end
L7_1.MigrateFurnitureDataColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_properties"
  L2_2 = "ambience"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_properties` ADD COLUMN `ambience` JSON NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_properties ambience column added"
  L0_2(L1_2)
end
L7_1.MigrateAmbienceColumn = L8_1
L7_1 = Main
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L1_2 = "tk_housing_businesses"
  L2_2 = "stash_items"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "ALTER TABLE `tk_housing_businesses` ADD COLUMN `stash_items` JSON NULL DEFAULT NULL"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "[tk_housing] migration: tk_housing_businesses stash_items column added"
  L0_2(L1_2)
end
L7_1.MigrateBusinessStashItemsColumn = L8_1
