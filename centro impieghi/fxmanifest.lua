fx_version 'cerulean'

games {'gta5' }

author 'Alga11'


version '1.0'

lua54 'on'

shared_scripts {
    '@es_extendedimports.lua',
    '@ox_libinit.lua',
    'Shared.lua'
}

client_scripts {
    '@es_extendedimports.lua',
    'Client.lua'
}
server_scripts {
    '@oxmysqllibMySQL.lua',
    'Server.lua'
}