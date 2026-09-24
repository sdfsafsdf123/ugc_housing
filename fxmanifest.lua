fx_version 'cerulean'

game 'gta5'

description 'Housing System & Shell Creator'

author 'TuKeh_'

version '3.0.0'

lua54 'yes'

ui_page 'web/build/index.html'

files {
    'web/build/index.html',
    'web/build/**/*',
    'stream/*',
}

data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'

shared_scripts {
    --'@ox_lib/init.lua',
    'shared/*.lua',
    'locales/*.lua',
    'config/config.lua',
    'config/furniture.lua',
    'config/interiors.lua',
    'config/properties.lua',
    'config/shell_creator.lua',
    'shared/furnish/*.lua',
}

client_scripts {
    'client/frameworks/*.lua',
    'client/lib/*.lua',
    'client/core/*.lua',
    'client/shellcreator/*.lua',
    'client/property/*.lua',
    'client/home/*.lua',
    'client/furnish/*.lua',
    'client/power/*.lua',
    'client/security/*.lua',
    'client/business/*.lua',
    'client/main_editable.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config/server.lua',
    'server/frameworks/*.lua',
    'server/database.lua',
    'server/db/*.lua',
    'server/core/*.lua',
    'server/property/*.lua',
    'server/furnish/*.lua',
    'server/shellcreator/*.lua',
    'server/home/*.lua',
    'server/power/*.lua',
    'server/security/*.lua',
    'server/economy/*.lua',
    'server/main_editable.lua',
}

escrow_ignore {
    'locales/*.lua',
    'config/*.lua',
    'client/frameworks/*.lua',
    'server/frameworks/*.lua',
    'client/main_editable.lua',
    'server/main_editable.lua',
}

dependency '/assetpacks'