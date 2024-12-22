fx_version 'cerulean'
game 'gta5'

author 'WolFix'
description 'Ein Script, um bei Ziel auf Spieler auf die Knie zu gehen'
version '1.0.0'

client_scripts {
    'kneel_on_aim.lua',
    'client.lua'
}

server_scripts {
    'server.lua', -- Dein Server-Skript
}

dependencies {
    'brutal_notify',  -- Benachrichtigungen
    'okokTextUI'      -- Text UI
}